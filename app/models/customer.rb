class Customer < ActiveRecord::Base
  belongs_to :tech
  has_many :workorders
end
