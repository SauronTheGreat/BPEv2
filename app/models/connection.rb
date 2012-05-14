class Connection < ActiveRecord::Base
  belongs_to :contype
  belongs_to :entity
  belongs_to :friend, :class_name => 'Entity'
end
