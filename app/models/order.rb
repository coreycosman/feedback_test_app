class Order < ApplicationRecord
  has_and_belongs_to_many :users




  def pretty_time
    Time.at(self.date.to_i).strftime('%I:%M %p')
  end

end
