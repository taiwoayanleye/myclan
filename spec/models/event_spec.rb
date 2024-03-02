# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  before(:all) do
    @user = create(:user)
    @event = build(:event, host: @user)
  end

  it 'should have valid attributes' do
    expect(@event).to be_valid
  end

  it 'should not be valid without a title' do
    @event.title = nil
    expect(@event).to_not be_valid
  end

  it 'should not be valid without a location' do
    @event.location = nil
    expect(@event).to_not be_valid
  end

  it 'should not be valid without a description' do
    @event.description = nil
    expect(@event).to_not be_valid
  end
end
