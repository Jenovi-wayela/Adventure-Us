class CategoriesController < ApplicationController

  def show
    # puts "Category ID: #{params[:id]}"
    @category = Category.find(params[:id])
    @experiences = @category.experiences
  end
end
