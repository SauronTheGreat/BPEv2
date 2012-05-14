class Flat<Entity

  belongs_to :building, :foreign_key => "parent_id", :class_name => "Building"
  has_one :bhk_config, :dependent => :destroy
  has_one :flat_key_datum, :dependent => :destroy
  has_and_belongs_to_many :facilities
  has_and_belongs_to_many :facility_features

  accepts_nested_attributes_for :bhk_config
  accepts_nested_attributes_for :flat_key_datum, :reject_if => :all_blank

end