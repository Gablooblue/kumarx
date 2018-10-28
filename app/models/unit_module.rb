class UnitModule < ApplicationRecord
    has_many :enrollments
    has_many :users, through: :enrollments
    mount_uploaders :files, FileUploader
    serialize :files, JSON
    mount_uploader :image, ImageUploader
end
