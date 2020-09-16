class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 
 validates :password, format: { with: /\A(?=.&#042;?[a-z])(?=.&#042;?\d)[a-z\d]+\z/i} 
 validates :password, length: { minimum: 6 }
 validates :email, format { with: VALID_EMAIL_REGEX }
 validates :email, format { /^([a-zA-Z0-9])+([a-zA-Z0-9\._-])*@([a-zA-Z0-9_-])+([a-zA-Z0-9\._-]+)+$/ }
 validates :first_name, format { input1 }
 validates :last_name, format { input1 }
 validates :first_name_kana, format { input2 }
 validates :last_name_kana, format { input2 }


  input1 = /\A[ぁ-んァ-ン一-龥]/+\z
  input2 = /\p{katakana}//\A[ァ-ヶー－]+\z/

         
end
