# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    image { Faker::Avatar.image }
  end
end
