class Hero < ApplicationRecord

  validates :hero_name, uniqueness: true
  validates :hero_class, inclusion: { in: ["S","A","B","C"] }
end
