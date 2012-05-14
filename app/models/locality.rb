class Locality < ActiveRecord::Base
  belongs_to :area
  belongs_to :quality
  has_many :locations
  has_many :buildings, :through=> :locations
end
