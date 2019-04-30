class RandomsController < ApplicationController
  def index
    @random =  rand(9)
    render json: {random: @random}, status: :ok
  end
end
