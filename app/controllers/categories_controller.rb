class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    # puts "Category ID: #{params[:id]}"
    @category = Category.find(params[:id])
    @eating_category = Category.find_by(name: "Eating")
    @outdoors_category = Category.find_by(name: "Outdoors")
    @night_life_category = Category.find_by(name: "Night Life ")
    @safari_category = Category.find_by(name: "Safari")
    @arts_and_culture_category = Category.find_by(name: "Arts and Culture")
    @tours_category = Category.find_by(name: "Tours")
    @experiences = @category.experiences
  end
end
