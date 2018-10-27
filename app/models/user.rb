class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable

    validates :prc_number, uniqueness: true

    has_one :profile 
    has_many :enrollments
    has_many :unit_modules, through: :enrollments

    has_and_belongs_to_many :cpd_events

    def email_required?
	false
    end

    def email_changed?
	false
    end

    def is_student m
	self.unit_modules.exists?(m)
    end

end
