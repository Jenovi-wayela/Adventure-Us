class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    # puts "Category ID: #{params[:id]}"
    @category = Category.find(params[:id])
    @experiences = @category.experiences
  end
end
