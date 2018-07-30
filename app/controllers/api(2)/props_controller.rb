# class Api::PropsController < ApplicationController
#   def index
#     @props = Setting.find(params[:setting_id]).props
#     render json: @props
#   end

#   def show
#     @prop = Prop.find(params[:id])
#     render json: @prop
#   end

#   def create
#     @setting = Setting.find(params[:setting_id])
#     @prop = @setting.props.create!(prop_params)
#     render json: @prop
#   end

#   def update
#     @prop = Prop.find(params[:id])
#     @prop.update!(prop_params)
#     render json: @prop
#   end

#   def destroy
#     @prop = Setting.find(params[:setting_id]).props.find(params[:id]).destroy
#     render status: :ok
#   end

#   private

#   def prop_params
#     params.require(:prop).permit(:name, :body, :character_id, :setting_id)
#   end
# end

class Api::PropsController < ApplicationController
  def index
    @props = Character.find(params[:character_id]).props
    render json: @props
  end

  def show
    @prop = Prop.find(params[:id])
    render json: @prop
  end

  def create
    @character = Character.find(params[:character_id])
    @prop = @character.props.create!(prop_params)
    render json: @prop
  end

  def update
    @prop = Prop.find(params[:id])
    @prop.update!(prop_params)
    render json: @prop
  end

  def destroy
    @prop = Character.find(params[:character_id]).props.find(params[:id]).destroy
    render status: :ok
  end

  private

  def prop_params
    params.require(:prop).permit(:name, :body, :character_id, :setting_id)
  end
end

