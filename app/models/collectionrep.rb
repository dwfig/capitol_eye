class Collectionrep < ApplicationRecord
  has_many :representatives
  has_many :collections
end
