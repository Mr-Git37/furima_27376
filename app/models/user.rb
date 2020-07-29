class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  number = /\A[ぁ-んァ-ン一-龥]/
  plus = /\A[ァ-ヶー－]+\z/
  place = /\A[a-zA-Z0-9]+\z/

  with_options presence: true do
    validates :nickname
    validates :firstname, format: { with: number, message: "First name Full-width characters"}
    validates :lastname, format: { with: number, message: "Last name Full-width characters"}
    validates :firstfurigana, format: { with: plus, message: "Firstfurigana Full-width characters"}
    validates :lastfurigana, format: { with: place, message: "Lastfurigana Full-width characters"}
    validates :birthday
  end
  
  validates :password, format: { with: place,
    message: "Password Include both letters and numbers" }
end