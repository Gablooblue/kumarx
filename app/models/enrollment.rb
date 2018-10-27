class Enrollment < ApplicationRecord
    belongs_to :unit_module
    belongs_to :user
    has_one :status
end
