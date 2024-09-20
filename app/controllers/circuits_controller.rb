class CircuitsController < ApplicationController
  before_action :set_circuit, only: [ :show, :update, :destroy ]

  def index
    @circuits = Circuit.all
    render json: @circuits
  end

  def show
    render json: @circuit
  end

  def create
    @circuit = Circuit.new(circuit_params)
    if @circuit.save
      render json: @circuit, status: :created
    else
      render json: @circuit.errors, status: :unprocessable_entity
    end
  end

  def update
    if @circuit.update(circuit_params)
      render json: @circuit
    else
      render json: @circuit.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @circuit.destroy
    head :no_content
  end

  private

  def set_circuit
    @circuit = Circuit.find(params[:id])
  end

  def circuit_params
    params.require(:circuit).permit(
      :id,
      :name,
      :image,
      :location,
      :first_grand_prix,
      :laps,
      :length,
      :race_distance,
      :lap_record_time,
      :lap_record_driver_name,
      :lap_record_year,
      :capacity,
      :opened
    )
  end
end
