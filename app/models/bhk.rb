class Bhk < ActiveRecord::Base
  has_many :bhk_configs, :dependent => :destroy
end
