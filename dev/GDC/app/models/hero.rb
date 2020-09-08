class Hero < ApplicationRecord
  self.table_name = "heroes"
  has_one_attached :photo
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode
  has_and_belongs_to_many :threats

  validates :hero_name, uniqueness: true
  validates :hero_class, inclusion: { in: ['S','A','B','C'] }

  def self.allocate_hero(threat)
    distance = 10
    hclass = ["S","A","B","C"]
    index = define_hero_class(threat)
    heroes = Hero.near( [threat.latitude, threat.longitude], distance ).where(hero_class: hclass[index], on_duty: false)
    while heroes.length == 0 do
      distance *= 2
      heroes = Hero.near( [threat.latitude, threat.longitude], distance ).where(hero_class: hclass[index], on_duty: false)
      if distance > 100000000
        break
      end
    end
    hero = heroes[0]
    threat.heroes << hero
    hero.update(on_duty: true)
    fight_conclusion(hero, threat)
  end

  def self.define_hero_class (threat)
    case threat.level
    when 'God'
      0
    when 'Dragon'
      1
    when 'Tiger'
      2
    when 'Wolf'
      3
    end
  end


  def self.fight_conclusion(hero, threat)
    Thread.new do
      sleep Random.rand(30..300)
      threat.update(active: false)
      hero.update(on_duty: false)
    end
  end

end
