class Api::V1::RepresentativesController < ApplicationController

  def index #localhost:3k/api/v1/representatives
    # model
    @reps = Representative.all
    # response
    render json: @reps, status: :ok
  end

  def sam
      all_reps = Representative.all
      all_collections = Collection.all
      all_collreps = Collectionrep.all
      @data = all_collections.map do |collection|
        repArray = ["#{collection.name}"]
        collection.representatives.map do |rep|
          repArray << "#{rep.pp_id} #{rep.short_title} #{rep.first_name} #{rep.last_name}"
          # repArray.flatten
        end
        repArray.flatten
        # for each collection
        # look at all the collectionreps that reference it
        # gather the name, gather the reps
      end
      render json: @data
  end
end
