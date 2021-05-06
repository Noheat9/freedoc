class Doctor < ApplicationRecord
  has_many :specialties
  has_many :appointments
  has_many :patients, through: :appointments
end