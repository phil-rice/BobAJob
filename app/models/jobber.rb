class Jobber < ActiveRecord::Base
  attr_accessible :email, :name, :organisation
  belongs_to :organisation, foreign_key: "organisation" 
end
