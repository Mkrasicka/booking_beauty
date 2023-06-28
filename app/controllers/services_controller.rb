class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  # def new
  #   @service = Service.new
  # end

  # def create
  #   @service = Service.new
  # end

  # def update
  # end

  # def destroy
  # end
end
