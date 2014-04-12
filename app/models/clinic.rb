class Clinic < ActiveRecord::Base
  belongs_to :country
  belongs_to :clinic_type

  has_many :users
  has_many :gci_reviews_apis

  validates :name, presence: true, length: { maximum: 200 }
  validates_presence_of :clinic_type
end
