FactoryGirl.define do
  factory :user do
    name "Michael Hartl"
    email "greet@example.com"
    password "password"
    password_confirmation "password"
  end

  factory :micropost do
    content "Lorem ipsum"
    user
  end
end
