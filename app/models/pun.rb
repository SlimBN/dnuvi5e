class Pun < ActiveRecord::Base
  attr_accessible :board_id, :category_id, :image, :remote_image_url, :slug, :link, :description, :is_deleted, :original_board_id, :original_punaise_id, :original_user_id, :title, :user_id, :price, :is_product, :currency_id, :websource

  extend FriendlyId
  friendly_id :title, use: :slugged

  acts_as_likeable

  mount_uploader :image, ImageUploader

  has_many :comments

  belongs_to :user
  belongs_to :board
  belongs_to :currency
end
