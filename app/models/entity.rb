class Entity < ActiveRecord::Base
  has_many :connections
  has_many :friends, :through => :connections
  has_many :notes

  accepts_nested_attributes_for :connections, :reject_if=>:all_blank
  accepts_nested_attributes_for :notes, :reject_if=>:all_blank

end
