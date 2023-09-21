class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    @eating_category = Category.find_by(name: "Eating")
    @outdoors_category = Category.find_by(name: "Eating")
    @night_life_category = Category.find_by(name: "Eating")
    @safari_category = Category.find_by(name: "Eating")
    @arts_and_culture_category = Category.find_by(name: "Eating")
    @tours_category = Category.find_by(name: "Eating")
  end

  def show
    # puts "Category ID: #{params[:id]}"
    @category = Category.find(params[:id])
    @eating_category = Category.find_by(name: "Eating")
    @outdoors_category = Category.find_by(name: "Eating")
    @night_life_category = Category.find_by(name: "Eating")
    @safari_category = Category.find_by(name: "Eating")
    @arts_and_culture_category = Category.find_by(name: "Eating")
    @tours_category = Category.find_by(name: "Eating")
    @experiences = @category.experiences
  end
end
