class Api::V1::CollectionrepsController < ApplicationController

  def index
    @collreps = Collectionrep.all

     render json: @collreps, status: :ok
  end

  def create
    @collrep = Collectionrep.create(collrep_params)

    render json: @collrep, status: :ok

  end

  def destroy
    @collrep = Collectionrep.find(params[:id])
    @collrep.destroy
  end


  private

  def collrep_params
    params.require(:collectionrep).permit(:representative_id, :collection_id)
  end




end
