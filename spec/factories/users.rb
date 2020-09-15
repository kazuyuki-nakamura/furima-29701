FactoryBot.define do
  factory :user do
    nickname {"kazu"}
    email {Faker::Internet.free_email}
    password = Faker::Internet.password(min_length: 6)
    password {password}
    password_confirmation {password}
    first_name {"nakamura"}
    last_name {"kazu"}
    first_name_kana {"nakamura"}
    last_name_kana {"kazu"}
    birth_day {"1980-01-01"}
  end
end