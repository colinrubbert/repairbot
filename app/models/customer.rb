class Customer < ActiveRecord::Base
  belongs_to :tech, dependent: :destroy
  has_many :workorders
  accepts_nested_attributes_for :workorders
end
