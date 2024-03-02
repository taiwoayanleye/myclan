# frozen_string_literal: true

class Invitation < ApplicationRecord
  scope :attended, -> { where(attended: true) }
  scope :missed, -> { where(attended: false) }

  belongs_to :event
  belongs_to :guest, class_name: 'User', foreign_key: :guest_id

  validates :event, :guest, presence: true
end
