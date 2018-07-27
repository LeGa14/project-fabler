class Api::SettingsController < ApplicationController
    def index
        @settings = Setting.all
        render json: @settings
    end

    def create
        @setting = Setting.create!(setting_params)

        render json: @setting
    end

    def show
        @setting = Setting.find(params[:id])

        render json: @setting
    end

    def update
        @setting = Setting.find(params[:id])
        @setting.update!(setting_params)

        render json: @setting
    end

    def destroy
        @setting = Setting.find(params[:id]).delete

        render status: :ok
    end

    private

    def setting_params
        params.require(:setting).permit(:name, :image_url)
    end
end