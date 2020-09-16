class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 validates :nickname, :email,:password,:first_name,:last_name,:first_name_kana,:last_name_kana,:birth_day, presence: true 
 validates :password, format: { with: /\A(?=.&#042;?[a-z])(?=.&#042;?\d)[a-z\d]+\z/i} 
 validates :password, length: { minimum: 6 }
 validates :email, format { with: VALID_EMAIL_REGEX }
 validates :email, format { /^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/ }
 validates :first_name, format { /\A[ぁ-んァ-ン一-龥]/+\z }
 validates :last_name, format { /\A[ぁ-んァ-ン一-龥]/+\z }
 validates :first_name_kana, format { /\p{katakana}//\A[ァ-ヶー－]+\z/ }
 validates :last_name_kana, format { /\p{katakana}//\A[ァ-ヶー－]+\z/ }





         
end
