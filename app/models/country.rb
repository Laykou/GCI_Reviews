class Country < ActiveRecord::Base
  has_many :clinics
  has_many :gci_reviews_api_reviews
end
