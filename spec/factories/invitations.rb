# frozen_string_literal: true

FactoryBot.define do
  factory :invitation do
    association :event
    association :guest
  end
end
