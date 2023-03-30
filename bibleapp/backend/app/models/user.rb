class User < ApplicationRecord
    has_secure_password
    has_many :verses, dependent: :destroy
    validates :email, presence: true, uniqueness: true
    has_many :tablebooks
    has_many :bible, through: :tablebooks
    # belongs_to :status
end
