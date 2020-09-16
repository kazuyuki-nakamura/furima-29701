class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true, format: { with:/\A[ぁ-んァ-ン一-龥]/+\z } do
    validates :first_name
    validates :last_name 
  end

  with_options presence: true, format: { with:/\p{katakana}//\A[ァ-ヶー－]+\z/ } do
    validates :first_name_kana
    validates :last_name_kana
  end

    PASSWORD_REGEX = /\A(?=.&#042;?[a-z])(?=.&#042;?\d)[a-z\d]+\z/i 
    validates_format_of :password, with: PASSWORD_REGEX
    validates :password, length: { minimum: 6 }
    VALID_EMAIL_REGEX = /^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/
    validates_format_of :emal, with: VALID_EMAIL_REGEX
    

  
         
end
