class Product < ApplicationRecord
  validates :title, :description, presence: true #missing :image_url
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  #validates :image_url, allow_blank: true, format: {
#with: %r{\.(gif|jpg|png)\Z}i,
#message: 'URL должен указывать на изображение формата GIF, JPG или PNG.'
#}
end
