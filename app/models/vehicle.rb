class Vehicle < ActiveRecord::Base
validates :customer_id, presence: true
validates :make, presence: true
validates :model, presence: true
has_many :jobs , :class_name => "Job", :foreign_key => "vehicle_id"
belongs_to :customer , :class_name => "User", :foreign_key => "customer_id"
belongs_to :customer , :class_name => "User", :foreign_key => "customer_id"
end
