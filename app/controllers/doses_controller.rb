class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create

    @dose = Dose.new(dose_params) # Created
    @cocktail = Cocktail.find(params[:cocktail_id]) # Found rest
    @dose.cocktail = @cocktail # assign it
    if @dose.save # save
      redirect_to cocktail_path(@cocktail) #redirect
    else
      render :new
    end
  end

  def destroy
    dose = Dose.find(params[:id])
    dose.destroy
    redirect_to cocktail_path(dose.cocktail)
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end