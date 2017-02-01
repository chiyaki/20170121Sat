class Ldpage < ApplicationRecord
  belongs_to :user
  belongs_to :template
  scope :recent, -> { order('created_at DESC') }
  mount_uploader :image01, Image01Uploader
  mount_uploader :image02, Image02Uploader
  mount_uploader :image03, Image03Uploader
  mount_uploader :image04, Image04Uploader
  mount_uploader :image05, Image05Uploader
  mount_uploader :image06, Image06Uploader
  mount_uploader :image07, Image07Uploader
  mount_uploader :image08, Image08Uploader
  mount_uploader :image09, Image09Uploader
  mount_uploader :image10, Image10Uploader
end
