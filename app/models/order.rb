class Order < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture
  has_many :items
  has_one_attached :image

  # with_options precence: true do
  #     validates :price
  # end
end
