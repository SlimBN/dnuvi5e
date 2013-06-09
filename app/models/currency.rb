class Currency < ActiveRecord::Base
  attr_accessible :is_enabled, :name, :symbol

  has_many :puns
end
