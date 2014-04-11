class Clinic < ActiveRecord::Base
  belongs_to :country
  belongs_to :clinic_type
  has_many :users
  has_many :gci_reviews_apis
end
