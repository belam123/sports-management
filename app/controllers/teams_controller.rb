class TeamsController < ApplicationController
    def index
        teams = Team.all
        render json: teams
    end

    def show
        team = Team.find(params[:id])
        render json: team
    end

    def create
        team = Team.create(team_params)
        if team.valid?
            render json: team, status: :created
        else
            render json: {error: team.errors.full_messages},status: :unprocessable_entity
        end
    end

    def update
        team = Team.find(params[:id])
        team.update(team_params)
        render json: team, status: :ok
    end

    def destroy
        team = Team.find(params[:id])
        team.destroy
        head :no_content
    end

    private

    def team_params
        params.require(:team).permit(:name,:logo,:home_venue)
    end
end
