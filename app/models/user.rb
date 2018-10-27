class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
	:recoverable, :rememberable, :trackable, :validatable

    validates :prc_number, uniqueness: true

    has_one :profile 
    has_many :enrollments
    has_many :unit_modules, through: :enrollment

    def email_required?
	false
    end

    def email_changed?
	false
    end

end
