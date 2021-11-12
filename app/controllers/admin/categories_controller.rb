# this categories_controller controls
# create-category admin page

class Admin::CategoriesController < ApplicationController

  # basic HTTP auth for admin to restrict products access here
  http_basic_authenticate_with name: ENV["ADMIN_USERNAME"].to_s, password: ENV["ADMIN_PASSWORD"].to_s

  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    # create new category and insert into DB if not there
    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    # otherwise, create a new one
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(
      :name
    )
  end
end