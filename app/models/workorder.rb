class Workorder < ActiveRecord::Base
  belongs_to :tech
  belongs_to :customer

  def self.search(search)
    if search
      where(:id => "#{search}")
    else
      find(:all)
    end
  end
end
