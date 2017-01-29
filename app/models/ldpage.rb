class Ldpage < ApplicationRecord
  belongs_to :user
  scope :recent, -> { order('created_at DESC') }
  validates :text01, presence: true
  validates :text02, presence: true
end
