class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

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

  validates :price 
    {greater_than_or_equal_to: 300 , less_than_or_equal_to: 9,999,999 , message: "Out of setting range"} 
  
end
