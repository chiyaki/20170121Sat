class Ldpage < ApplicationRecord
  belongs_to :user
  belongs_to :template
  scope :recent, -> { order('created_at DESC') }
end
