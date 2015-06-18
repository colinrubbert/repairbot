class Workorder < ActiveRecord::Base
  belongs_to :tech
  belongs_to :customer

  def self.search(search)
    where(:id => "#{search}")
  end
end
