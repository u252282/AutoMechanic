class Garage < ActiveRecord::Base
  validates :zipcode, presence: true
  validates :state, presence: true
  validates :city, presence: true
  validates :address_line_1, presence: true
  validates :garage_code, presence: true
  validates :phone_number, presence: true
  validates :phone_number, uniqueness:{}
  validates :name, presence: true
has_many :timeslots , :class_name => "Timeslot", :foreign_key => "garage_id"
has_many :hours_of_operations , :class_name => "HoursOfOperation", :foreign_key => "garage_id"
has_many :customers , :class_name => "User", :foreign_key => "garage_id"
has_many :employees , :class_name => "User", :foreign_key => "garage_id"
end
