class CavesController < ApplicationController

  def new
    @cafe = Cafe.new
  end

  def create
    @cafe = Cafe.new(params["cafe"].permit(:name, :address, :speciality, :phone_number))
    if @cafe.save
    redirect_to @cafe
    else
      render :new
    end
  end

  def update
    @cafe = Cafe.new(params["cafe"].permit(:name, :address, :speciality, :phone_number))
    if @cafe.save
    redirect_to @cafe
    else
      render :edit
    end
  end

  def index
    @cafes = Cafe.all
  end

  def edit
    @cafe = Cafe.find(params["id"])
  end

  def show
    @cafe = Cafe.find(params["id"])
  end

  def destroy
    @cafe = Cafe.find(params["id"])
    @cafe.destroy

    redirect_to caves_path
  end
end
