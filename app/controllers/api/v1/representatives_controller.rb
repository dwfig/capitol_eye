class Api::V1::RepresentativesController < ApplicationController

  def index #localhost:3k/api/v1/representatives
    # model
    @reps = Representative.all
    # response
    render json: @reps, status: :ok
  end
end
