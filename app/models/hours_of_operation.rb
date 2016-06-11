class HoursOfOperation < ActiveRecord::Base
  belongs_to :garage
  validates :close_time, presence: true
  validates :open_time, presence: true
  validates :day_of_the_week, presence: true
  validates :day_of_the_week, uniqueness:{ scope: :garage_id}
end
