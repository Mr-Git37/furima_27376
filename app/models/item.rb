class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :condition
  belongs_to_active_hash :deliveryfee
  belongs_to_active_hash :prefecture
  belongs_to_active_hash :scheduleddelivery

  has_one_attached :image

  #空の投稿を保存できないようにする
  # validates :title, :text, :genre, :image, presence: true
  with_options presence: true do
    validates :image
    validates :title
    validates :text
    validates :genre
    validates :price
  end

  #選択が「--」のままになっていないか
  with_options numericality: { other_than: 1 , message: "Select"} do
    validates :genre_id
    validates :condition_id
    validates :deliveryfee_id
    validates :prefecture_id
    validates :scheduleddelivery_id
  end

  validates :price, 
  numericality: {greater_than_or_equal_to: 300 , less_than_or_equal_to: 9999999 , message: "Out of setting range"}
  
  belongs_to :user
end

