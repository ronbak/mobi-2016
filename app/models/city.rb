class City < ActiveRecord::Base
  belongs_to :country
  has_many :distributions, dependent: :destroy
  has_many :listings
  has_many :hot_spots
  
  accepts_nested_attributes_for :country
  validates_presence_of :name
end
