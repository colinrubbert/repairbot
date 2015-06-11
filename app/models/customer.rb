class Customer < ActiveRecord::Base
  belongs_to :tech
  has_many :workorders
  has_many :techs, through: :workorders


end
