class TeamsController < ApplicationController
  before_action :set_team, only: [ :show, :update, :destroy ]

  def index
    @teams = Team.all
    render json: @teams,
           each_serializer: TeamSerializer
  end

  def show
    render json: @team,
           serializer: TeamSerializer,
           status: :ok
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      render json: @team,
             serializer: TeamSerializer,
             status: :created
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  def update
    if @team.update(team_params)
      render json: @team, serializer: TeamSerializer
    else
      render json: @team.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @team.destroy
    head :no_content
  end

  private

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(
      :id,
      :name,
      :city,
      :first_team_entry,
      :world_championships,
      :pole_positions,
      :fastest_laps,
      :president,
      :director,
      :chassis,
      :engine,
      :logo,
      :technical_manager,
      :tyres
    )
  end
end
