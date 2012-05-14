class Building<Entity
  has_many :locations, :dependent => :destroy
  has_many :localities, :through => :locations
  has_many :flats, :dependent => :destroy, :foreign_key => "parent_id", :class_name => "Flat"

  has_and_belongs_to_many :moving_requirements
  has_and_belongs_to_many :facilities
  has_and_belongs_to_many :facility_features
  has_and_belongs_to_many :restrictions
  has_many :approach_qualities, :dependent => :destroy
  has_many :building_qualities, :dependent => :destroy
  has_many :building_routes, :dependent => :destroy
  has_many :landmarks, :dependent => :destroy
  has_many :moving_charges, :dependent => :destroy
  has_many :building_services, :dependent => :destroy
  has_many :services, :through => :building_services

  has_one :address, :dependent => :destroy
  accepts_nested_attributes_for :address, :reject_if => :all_blank, :allow_destroy => true

  accepts_nested_attributes_for :building_qualities, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :approach_qualities, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :moving_charges, :reject_if => :all_blank, :allow_destroy => true


  accepts_nested_attributes_for :building_routes, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :building_services, :reject_if => :all_blank, :allow_destroy => true

  accepts_nested_attributes_for :flats, :reject_if => proc { |a| a['name'].blank? }
  accepts_nested_attributes_for :locations, :reject_if => proc { |a| a['locality_id'].blank? }

  def full_name
    "#{self.name}, #{self.locations.first.locality.name}"
  end

  def full_address
    "#{self.name}, #{self.address}, #{self.road}, Mumbai, India"
  end


  validates_presence_of :name


end