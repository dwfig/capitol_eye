class Representative < ApplicationRecord
  has_many :collectionrep
  has_many :collections, through: :collectionrep
end
