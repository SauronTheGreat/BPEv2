class Area < ActiveRecord::Base
  belongs_to :city
  has_many :localities
end
