class ViewQuality < ActiveRecord::Base
  belongs_to :flat
  belongs_to :quality
end
