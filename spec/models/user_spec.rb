# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = build(:user)
  end

  it 'should be valid with valid attributes' do
    expect(@user).to be_valid
  end

  it 'should not be valid without and email' do
    @user.email = nil
    expect(@user).to_not be_valid
  end

  it 'should not be valid without a password' do
    @user.password = nil
    expect(@user).to_not be_valid
  end

  it 'should not be valid without a first name' do
    @user.first_name = nil
    expect(@user).to_not be_valid
  end
end
