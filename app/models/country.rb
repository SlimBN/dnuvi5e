class Country < ActiveRecord::Base
  attr_accessible :continent_id, :flag, :name, :slug
end
