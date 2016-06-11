class Timeslot < ActiveRecord::Base
validates :garage_id, presence: true
validates :mechanic_id, presence: true
validates :timeslot, presence: true
  belongs_to :garage , :class_name => "Garage", :foreign_key => "garage_id"
  belongs_to :job , :class_name => "Job", :foreign_key => "job_id"
belongs_to :mechanic , :class_name => "User", :foreign_key => "mechanic_id"
end
