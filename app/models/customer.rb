class Customer < ActiveRecord::Base
  belongs_to :tech
  has_many :techs
  has_many :workorders
  accepts_nested_attributes_for :workorders

  def self.search(search)
    where("lower(cname) LIKE ?", "%#{search}%")
  end

end
