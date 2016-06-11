class Message < ActiveRecord::Base
  has_many :photos , :class_name => "Photo", :foreign_key => "message_id"
belongs_to :user , :class_name => "User", :foreign_key => "user_id"
belongs_to :job , :class_name => "Job", :foreign_key => "job_id"
end
