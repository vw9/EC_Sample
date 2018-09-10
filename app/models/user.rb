class User < ApplicationRecord
  validates :name,
    presence: true,
    length: { maximum: 15, too_long: "15文字以上は入力できません" }
  validates :kana,
    presence: true,
    length: { maximum: 25, too_long: "25文字以上は入力できません"}
  validates :mail,
    presence: true,
    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :postal_code,
    presence: true

    has_secure_password
end
