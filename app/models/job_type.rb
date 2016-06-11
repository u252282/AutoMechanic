class JobType < ActiveRecord::Base
  validates :name, presence: true
  validates :repair_time_minutes, presence: true
  has_many :job_lists , :class_name => "JobList", :foreign_key => "job_type_id"
end
