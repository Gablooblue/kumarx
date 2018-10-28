class CpdEvent < ApplicationRecord
    has_many :announcements
    has_and_belongs_to_many :users
    mount_uploader :image, ImageUploader
end
