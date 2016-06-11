class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :zipcode, presence: true
  validates :state, presence: true
  validates :city, presence: true
  validates :address_line_1, presence: true
  validates :garage_code, presence: true
  validates :phone_number, presence: true
  validates :phone_number, uniqueness:{}
  validates :role, presence: true
  validates :garage_id, presence: true
  validates :name, presence: true
  has_many :vehicles , :class_name => "Vehicle", :foreign_key => "customer_id"
  has_many :vehicles , :class_name => "Vehicle", :foreign_key => "customer_id"
  has_many :jobs , :class_name => "Job", :foreign_key => "mechanic_id"
  has_many :timeslots , :class_name => "Timeslot", :foreign_key => "mechanic_id"
  has_many :messages , :class_name => "Message", :foreign_key => "user_id"
  belongs_to :garage , :class_name => "Garage", :foreign_key => "garage_id"
  belongs_to :garage , :class_name => "Garage", :foreign_key => "garage_id"
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
