class DosesController < ApplicationController
  before_action :check_params, only: [:create, :update, :destroy]
  before_action :set_dose, only: [:update, :destroy]
  authorize_resource only: [:update, :destroy]

  def index
    @doses = Dose.where(user_id: current_user.id)

    render json: @doses
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.user = User.find(current_user.id)

    if @dose.save
      render json: @dose
    else
      render json: @dose.errors
    end
  end

  def update
    if @dose.update(dose_params)
      render json: @dose
    else
      render json: @dose.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @dose.destroy
      render json: {message: "A dose foi apagada com sucesso."}
    else
      render json: @dose.errors
    end
  end

  private 

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.permit(:date, :dose)
  end

  def check_params
    return render json: {error: "Vacina inexistente"}, status: 400 unless Vaccine.exists?(params[:vaccine_id])
  end

end
