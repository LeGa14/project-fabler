class Api::ExistentsController < ApplicationController
    def index
        @existents = Scenario.find(params[:scenario_id]).existents
        render json: @existents
      end
    
      def show
        @existent = Existent.find(params[:id])
        render json: @existent
      end
    
      def create
        @story = Scenario.find(params[:scenario_id])
        @existent = @story.existents.create!(existent_params)
        render json: @existent
      end
    
      def update
        @existent = Existent.find(params[:id])
        @existent.update!(existent_params)
        render json: @existent
      end
    
      def destroy
        @existent = Scenario.find(params[:scenario_id]).existents.find(params[:id]).destroy
        render status: :ok
      end
    
      private
    
      def existent_params
        params.require(:existent).permit(:name, :image_url, :subject_type, :scenario_id)
      end
end
