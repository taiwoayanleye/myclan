# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :hosted_events, class_name: 'Event', foreign_key: :host_id, inverse_of: :host, dependent: :destroy
  has_many :invitations, foreign_key: :guest_id
  has_many :invited_events, through: :invitations, source: :event

  validates :email, uniqueness: true
  validates :email, :password, :first_name, presence: true
end
