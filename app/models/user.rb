class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :nickname, :firstname, :lastname, :firstfurigana, :lastfurigana, :birthday, presence: true

  with_options presence: true do
    validates :nickname
    validates :firstname, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "First name Full-width characters"}
    validates :lastname, format: { with: /\A[ぁ-んァ-ン一-龥]/, message: "Last name Full-width characters"}
    validates :firstfurigana, format: { with: /\A[ァ-ヶー－]+\z/, message: "Firstfurigana Full-width characters"}
    validates :lastfurigana, format: { with: /\A[ァ-ヶー－]+\z/, message: "Lastfurigana Full-width characters"}
    validates :birthday

  end
  
  validates :password, format: { with: /\A[a-zA-Z0-9]+\z/,
    message: "Password Include both letters and numbers" }

end