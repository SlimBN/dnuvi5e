class Currency < ActiveRecord::Base
  attr_accessible :is_enabled, :name

  has_many :puns
end
