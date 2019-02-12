class Collection < ApplicationRecord
  belongs_to :collectionrep
  has_many :representatives, through: :collectionreps
end
