# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Invitation, type: :model do
  before(:all) do
    @host = create(:user)
    @guest = create(:user)
    @event = create(:event, host: @host)
    @invitation = create(:invitation, event: @event, guest: @guest)
  end

  it 'should have valid attributes' do
    expect(@invitation).to be_valid
  end

  it 'should not be valid without an event' do
    @invitation.event = nil
    expect(@invitation).to_not be_valid
  end

  it 'should not be valid without a guest' do
    @invitation.guest = nil
    expect(@invitation).to_not be_valid
  end
end
