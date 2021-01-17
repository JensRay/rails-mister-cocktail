class DosesController < ApplicationController
  # before_action :set_dose, only: [:show, :destroy]

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      @dose.save
      # @dose = Dose.new(dose_params)
      render cocktail_doses_path
    end
  end

   def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

    def set_dose
      @dose = Dose.find(params[:id])
    end

    def dose_params
      params.require(:dose).permit(:description, :ingredient_id)
    end


end
