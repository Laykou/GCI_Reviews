class ClinicType < ActiveRecord::Base
  has_many :clinics

  validates :label, presence: true
end
