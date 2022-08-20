class ClientController < ApplicationController

  def show
    client = Client.find_by(id: params[:id])
    if client
      render json: client
    else
      render json: { errors: client.errors.full_messages }, status: :not_found
    end
  end

end