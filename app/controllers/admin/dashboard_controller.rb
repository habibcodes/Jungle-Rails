class Admin::DashboardController < ApplicationController
  # basic HTTP auth for admin to restrict dashboard access here
  http_basic_authenticate_with name: ENV["ADMIN_USERNAME"].to_s, password: ENV["ADMIN_PASSWORD"].to_s

  def show
    # return total number of both products and categories of items
    @total_product_count = Product.count
    @total_category_count = Category.count
  end
end
