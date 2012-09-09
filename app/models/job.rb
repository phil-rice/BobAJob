class Job < ActiveRecord::Base
  attr_accessible :description, :jobber, :punter, :time
  belongs_to :punter, foreign_key: "punter"
end
