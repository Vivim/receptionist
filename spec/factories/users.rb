# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    first_name "first_name"
    last_name  "last_name"
    role "role_type"
    email 'username@email.com'
    password 'password'
    telephone '12345678'
  end
end
