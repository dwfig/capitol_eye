class Api::V1::CollectionrepsController < ApplicationController

  def create(collrep_params)
    @collrep = Collectionrep.create(collrep_params)

    render json: @collrep, status: :ok

  end

  def destroy
    @collrep = Collection.find(params[:id])
    @collrep.destroy
  end


  private

  def collrep_params
    params.require(:collectionrep).permit(:representative_id, :collection_id)
  end




end
