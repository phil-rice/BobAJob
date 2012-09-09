class Punter < ActiveRecord::Base
  attr_accessible :address, :email, :name
  has_many :jobs, foreign_key: "punter"
end
