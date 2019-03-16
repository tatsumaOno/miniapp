class Article < ApplicationRecord
  belongs_to :user
  validates :text,presence: true
  validates :title,presence: true

  mount_uploader :image,ImageUploader
end
