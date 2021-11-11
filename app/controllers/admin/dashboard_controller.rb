class Admin::DashboardController < ApplicationController
  # basic HTTP auth for admin to restrict dashboard access here
  http_basic_authenticate_with name: ENV["ADMIN_USERNAME"].to_s, password: ENV["ADMIN_PASSWORD"].to_s

  def show
  end
end
