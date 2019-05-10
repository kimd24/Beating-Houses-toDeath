class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
    @search = params['search']
    if @search.present?
      @query = @search['query']
      @buildings = Building.where('address ILIKE ?', "%#{@query}%") 
    end
  end

  def show
    @building = Building.find(params[:id])
  end
end
