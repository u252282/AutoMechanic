class JobList < ActiveRecord::Base
  belongs_to :job , :class_name => "Job", :foreign_key => "job_id"
belongs_to :job_type , :class_name => "JobType", :foreign_key => "job_type_id"
end
