class GymController < ApplicationController

  def show
    gym = Gym.find_by(id: params[:id])
    if gym
      render json: gym
    else
      render json: { errors: gym.errors.full_messages }, status: :not_found
    end
  end

  def destroy
    gym = Gym.find_by(id: params[:id])
    if gym
      gym.destroy_all
      head :no_content
    else
      render json: { error: "Gym not found" }, status: :not_found
    end
  end

end