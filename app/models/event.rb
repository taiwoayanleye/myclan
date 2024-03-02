# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :host, class_name: 'User', foreign_key: :host_id
  has_many :invitations, foreign_key: :event_id, dependent: :destroy
  has_many :guests, through: :invitations, source: :user

  validates :title, :location, :description, presence: true

  def guests
    invitations.count
  end
end
