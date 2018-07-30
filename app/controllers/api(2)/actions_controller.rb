class Api::ActionsController < ApplicationController
    def index
        @actions = Action.all
        render json: @actions
    end

    def create
        @action = Action.create!(action_params)

        render json: @action
    end

    def show
        @action = Action.find(params[:id])

        render json: @action
    end

    def update
        @action = Action.find(params[:id])
        @action.update!(action_params)

        render json: @action
    end

    def destroy
        @action = Action.find(params[:id]).delete

        render status: :ok
    end

    private

    def action_params
        params.require(:action).permit(:doing)
    end
end