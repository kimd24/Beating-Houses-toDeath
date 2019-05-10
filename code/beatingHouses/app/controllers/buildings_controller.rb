class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
    @search = params['search']
    if @search.present?
      @query = @search['query']
      high = @query.to_i + 10000
      low = @query.to_i - 10000
      #@buildings = Building.where('address ILIKE ?', "%#{@query}%") 
      @buildings = Building.where('price >= ? AND price <= ?', "#{low}", "#{high}")
    end
  end

  def show
    @building = Building.find(params[:id])
  end
end
