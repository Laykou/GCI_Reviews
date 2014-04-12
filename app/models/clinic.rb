class Clinic < ActiveRecord::Base
  belongs_to :country
  belongs_to :clinic_type

  has_many :users
  has_many :gci_reviews_apis

  validates :label, presence: true, length: { maximum: 200 }
  validates :clinic_type, presence: true
end
