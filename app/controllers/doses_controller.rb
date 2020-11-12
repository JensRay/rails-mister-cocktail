class DosesController < ApplicationController
  before_action :set_dose, only: [:show, :destroy]
  def new
    @dose = dose.new
  end

  def create
    @dose = dose.new(dose_params)
    if @dose.save
      redirect_to dose_path(@dose)
    else
      render new_dose_path
    end
  end

   def destroy
    @dose.destroy

    redirect_to dose_path
  end

  private

    def set_dose
      @dose = dose.find(params[:id])
    end

    def dose_params
      params.require(:dose).permit(:description)
    end


end
