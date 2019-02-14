class Api::V1::CollectionsController < ApplicationController

  def index
    @collections = Collection.all

     render json: @collections, status: :ok
  end

  # def create(collection_params)
  #   @collection = Collection.create(collection_params)
  #
  #   render json: @collection, status: :ok
  # end

  def edit
    @collection = Collection.find(params[:id])

    render json: @collection, status: :ok
  end

  def destroy
    @collection = Collection.find(params[:id])
    @collection.destroy

    render json: @collection, status: :ok
  end

  private

  def collection_params
    params.require(:collection).permit(:name)
  end


end
