class DosesController < ApplicationController
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.save
    # more code
  end

  def destroy
    set_dose.destroy
  end

  private

  def dose_params
    params.require(:dose).permits(:description, :cocktail_id, :ingredient_id)
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
