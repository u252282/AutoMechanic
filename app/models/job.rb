class Job < ActiveRecord::Base
validates :vehicle_id, presence: true
has_many :photos , :class_name => "Photo", :foreign_key => "job_id"
has_many :job_lists , :class_name => "JobList", :foreign_key => "job_id"
has_many :timeslots , :class_name => "Timeslot", :foreign_key => "job_id"
has_many :feeds , :class_name => "Feed", :foreign_key => "job_id"
has_many :messages , :class_name => "Message", :foreign_key => "job_id"
belongs_to :mechanic , :class_name => "User", :foreign_key => "mechanic_id"
belongs_to :vehicle , :class_name => "Vehicle", :foreign_key => "vehicle_id"
has_many :job_type, :through => :job_lists
end
