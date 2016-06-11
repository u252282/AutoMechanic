class Feed < ActiveRecord::Base
validates :comment, presence: true
has_many :photos , :class_name => "Photo", :foreign_key => "feed_id"
belongs_to :job , :class_name => "Job", :foreign_key => "job_id"
end
