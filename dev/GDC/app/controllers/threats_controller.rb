class ThreatsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_threat, only: [:edit, :show, :destroy]

  def index
    @threats = Threat.all
  end

  def create
    if Threat.exists?(name: threat_params[:name])
      @threat = Threat.find_by(name: threat_params[:name])
      update
    else
      @threat = Threat.new(threat_params)
      @threat.save
    end
    Hero.allocate_hero(@threat)
  end

  def edit
  end

  def show
  end

  def update
    @threat = Threat.update(threat_params)
    @threat.save
  end

  def destroy
  end

  private

  def set_threat
    @threat = Threat.find(params[:id])
  end

  def threat_params
    params.require(:threat).permit(:name, :latitude, :longitude, :active, :level)
  end

end
