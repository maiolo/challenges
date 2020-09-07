require 'faker'

heroes = [
#-------------------------------Rank S-----------------------------------
  {
    hero_name: "Metal Bat", 
    hero_class: "S",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Genos", 
    hero_class: "S",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Flashy", 
    hero_class: "S",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "WatchdogMan", 
    hero_class: "S",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Darkshine", 
    hero_class: "S",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
#--------------------------------------------Rank A---------------------------------
  {
    hero_name: "Sweet Mask", 
    hero_class: "A",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Iaian", 
    hero_class: "A",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Okamaitachi", 
    hero_class: "A",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Bushidrill", 
    hero_class: "A",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Heavy Tank Loincloth", 
    hero_class: "A",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Blue Fire", 
    hero_class: "A",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Magic Trick Man", 
    hero_class: "A",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Death Gatling", 
    hero_class: "A",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  #----------------------------------------------------Rank B--------------------------------------
  {
    hero_name: "Fubuki", 
    hero_class: "B",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Eyelashes", 
    hero_class: "B",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Montain Ape", 
    hero_class: "B",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Wild Horn", 
    hero_class: "B",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Saitama", 
    hero_class: "B",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Glasses", 
    hero_class: "B",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Pink Hornet", 
    hero_class: "B",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Double Hole", 
    hero_class: "B",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  #------------------------------------------Rank C--------------------------------------
  {
    hero_name: "Mumen Rider", 
    hero_class: "C",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Strange Binding Shell", 
    hero_class: "C",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Tanktop Tiger", 
    hero_class: "C",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "D-Pad", 
    hero_class: "C",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Funeral Suspenders", 
    hero_class: "C",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Food Battler Futoshi", 
    hero_class: "C",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "BatteryMan", 
    hero_class: "C",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  },
  {
    hero_name: "Red Muffler", 
    hero_class: "C",
    latitude: Faker::Address.latitude,
    longitude: Faker::Address.longitude
  }
]

#---------------------------------Fotos dos heróis-----------------------------------------------------------------

hero_pictures = [
  #----------------------------------------Rank S-------------------------------
  {
    file: 'app/assets/images/heroes/S/Metal_Bat.png',
    filename:  'Metal_Bat.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/S/Genos.png',
    filename:  'Genos.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/S/Flashy.png',
    filename:  'Flashy.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/S/WDM.png',
    filename:  'WDM.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/S/Darkshine.png',
    filename:  'darkshine.png',
    content_type: 'image/png'
  },
  #----------------------------------------Rank A-----------------------------------
  {
    file: 'app/assets/images/heroes/A/Amai_Mask.png',
    filename:  'Amai_Mask.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/A/Iaian.png',
    filename:  'Iaian.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/A/Okamaitachi.png',
    filename:  'Okamaitachi.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/A/Bushidrill.png',
    filename:  'Bushidrill.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/A/Blue_Fire.png',
    filename:  'Blue_Fire.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/A/Magic_Trick_Man.png',
    filename:  'Magic_Trick_Man.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/A/Heavy_Tank_Loincloth.png',
    filename:  'Heavy_Tank_Loincloth.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/A/Death_Gatling.png',
    filename:  'Death_Gatling.png',
    content_type: 'image/png'
  },
  #---------------------------------------------------------Rank B----------------------------------------
  {
    file: 'app/assets/images/heroes/B/Fubuki.png',
    filename:  'Fubuki.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/B/Eyelashes.png',
    filename:  'Eyelashes.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/B/Mountain_Ape.png',
    filename:  'Mountain_Ape.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/B/Wild_Horn.png',
    filename:  'Wild_Horn.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/B/Saitama.png',
    filename:  'Saitama.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/B/Glasses.png',
    filename:  'Glasses.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/B/PinkHornet.png',
    filename:  'PinkHornet.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/B/Double_Hole.png',
    filename:  'Double_Hole.png',
    content_type: 'image/png'
  },
  #-------------------------------------------------------Rank C----------------------------------------------
  {
    file: 'app/assets/images/heroes/C/Mumen_Rider.png',
    filename:  'Mumen_Rider.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/C/Binding_Shell.jpg',
    filename:  'Binding_Shell.jpg',
    content_type: 'image/jpg'
  },
  {
    file: 'app/assets/images/heroes/C/Tanktop_Tiger.jpg',
    filename:  'Tanktop_Tiger.jpg',
    content_type: 'image/jpg'
  },
  {
    file: 'app/assets/images/heroes/C/DPad.png',
    filename:  'DPad.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/C/Funeral_suspenders.png',
    filename:  'Funeral_suspenders.png',
    content_type: 'image/png'
  },
  {
    file: 'app/assets/images/heroes/C/Futoshi.jpg',
    filename:  'Futoshi.jpg',
    content_type: 'image/jpg'
  },
  {
    file: 'app/assets/images/heroes/C/Battery_Man.jpg',
    filename:  'Battery_Man.png',
    content_type: 'image/jpg'
  },
  {
    file: 'app/assets/images/heroes/C/Red_Muffler.png',
    filename:  'Red_Muffler.png',
    content_type: 'image/png'
  }
]

#hero.photo.attach(io: File.open('app/assets/images/heroes/C/Shoulderpads.jpg'), filename: "Shoulderpads.jpg", content_type: "image/jpg")

heroes.each_with_index do |hero, i|
  h = Hero.new(hero)
  h.photo.attach(io: File.open(hero_pictures[i][:file]), filename: hero_pictures[i][:filename], content_type: hero_pictures[i][:content_type])
  h.save
  puts "Herói #{hero[:hero_name]} cadastrado com sucesso"
end