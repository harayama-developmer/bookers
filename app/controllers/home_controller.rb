class HomeController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index about]

  def index; end

  def about; end
end
