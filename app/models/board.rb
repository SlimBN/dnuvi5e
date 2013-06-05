class Board < ActiveRecord::Base
  attr_accessible :cover_id, :name, :description, :user_id, :slug

  acts_as_followable


  extend FriendlyId
  friendly_id :name, use: :slugged

  belongs_to :user

  has_many :puns
end
