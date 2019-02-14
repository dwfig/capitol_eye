class Collection < ApplicationRecord
  has_many :collectionreps
  # has_many :representatives, through: :collectionrep
  has_many :representatives, through: :collectionreps
end
