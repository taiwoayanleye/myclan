# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    title { Faker::Music.band }
    location { Faker::Mountain.name }
    description { Faker::Books::Lovecraft.paragraph_by_chars(characters: 256) }
    association :host
  end
end
