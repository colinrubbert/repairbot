class Workorder < ActiveRecord::Base
  belongs_to :tech
  belongs_to :customer
  has_many :repairs

  def self.search(search)
    if search
      where(:id => "#{search}")
    else
      find(:all)
    end
  end
end
