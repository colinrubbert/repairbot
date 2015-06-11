class Workorder < ActiveRecord::Base
  belongs_to :tech
  belongs_to :customer
end
