class TerriersController < ApplicationController

  def index
    @terriers = Terrier.all
  end

  def new
    @terrier = Terrier.new
  end

  def create
    @terrier = Terrier.new(params.require(:terrier).permit(:name, :breeds))
    @terrier.save
    redirect_to terriers_path
  end

  def show
    @terrier = Terrier.find(params[:id])
  end

  def edit
    @terrier = Terrier.find(params[:id])
  end

  def update
    @terrier = Terrier.find(params[:id])
    @terrier.update(params.require(:terrier).permit(:name, :breeds))
    redirect_to terriers_path
  end

  def destroy
      Terrier.destroy(params[:id])
      redirect_to terriers_path
    end
  end
