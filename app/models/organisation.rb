class Organisation < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :jobbers, foreign_key: "organisation"
end
