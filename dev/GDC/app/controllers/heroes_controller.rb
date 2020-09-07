class HeroesController < ApplicationController

  def index
    @heroes = Hero.all
  end

  def new
    @hero = Hero.new
  end

  def create
    if Hero.exists?(hero_name: hero_params[:hero_name])
      @hero = Hero.find_by(hero_name: hero_params[:hero_name])
      update
      redirect_to heroes_path
    else
      @hero = Hero.new(hero_params)
       if @hero.save
        redirect_to heroes_path
       else
        render :new
       end
    end
  end

  def show
  end

  def update
  end

  def edit
  end

  def destroy
  end

  private

  def set_hero
    @hero = Hero.find(params[:id])
  end

  def hero_params
    params.require(:hero).permit(:hero_name, :hero_class, :latitude, :longitude, :on_duty, :photo)
  end
end
