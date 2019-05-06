class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
  end
end
