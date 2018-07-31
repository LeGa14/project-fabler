class Api::ScenariosController < ApplicationController
    def index
        @scenarios = Story.find(params[:story_id]).scenarios
        render json: @scenarios
      end
    
      def show
        @scenario = Post.find(params[:id])
        render json: @scenario
      end
    
      def create
        @city = Story.find(params[:story_id])
        @scenario = @city.scenarios.create!(scenario_params)
        render json: @scenario
      end
    
      def update
        @scenario = Post.find(params[:id])
        @scenario.update!(scenario_params)
        render json: @scenario
      end
    
      def destroy
        @scenario = Story.find(params[:story_id]).scenarios.find(params[:id]).destroy
        render status: :ok
      end
    
      private
    
      def scenario_params
        params.require(:scenario).permit(:title, :story_id)
      end
end
