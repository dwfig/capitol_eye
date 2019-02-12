class Representative < ApplicationRecord
  belongs_to :collectionrep
  has_many :collections, through: :collectionreps
end
