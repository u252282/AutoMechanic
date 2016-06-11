class Photo < ActiveRecord::Base
  belongs_to :message , :class_name => "Message", :foreign_key => "message_id"
belongs_to :feed , :class_name => "Feed", :foreign_key => "feed_id"
belongs_to :job , :class_name => "Job", :foreign_key => "job_id"
end
