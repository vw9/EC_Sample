class User < ApplicationRecord
  validates :name,
    presence: true,
    length: { maximum: 15, too_long: "15文字以上は入力できません" }
  validates :kana,
    presence: true,
    length: { maximum: 25, too_long: "25文字以上は入力できません" }
  validates :mail,
    presence: true,
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :postal_code,
    presence: true,
    length: { is: 7, }
  validates :address,
    presence: true,
    length: { maximum: 100 }
  validates :password,
    presence: true,
    length: { minimum: 8, maximum: 16 }

    has_secure_password
end
