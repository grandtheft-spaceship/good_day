class EateriesController < ApplicationController
  def index
    @eateries = Eatery.all
  end

  def show
    @eatery = Eatery.find(params[:id])
  end

  def new
    @eatery = Eatery.new
  end

  def edit
    @eatery = Eatery.find(params[:id])
  end

  def create
    @eatery = Eatery.new(eatery_params)

    if @eatery.save
      redirect_to eateries_path
    else
      render 'new'
    end
  end

  def update
    @eatery = Eatery.find(params[:id])
    
    if @eatery.update(eatery_params)
      redirect_to @eatery
    else
      render 'edit'
    end
  end

  # We don't need the destroy method yet... 
  # def destroy
  #   @eatery = Eatery.find(params[:id])
  #   @eatery.destroy

  #   redirect_to eateries_path
  # end

  private

  def eatery_params
    params.require(:eatery).permit(:name, :address, :cuisine)
  end

end

