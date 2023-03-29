class Bible < ApplicationRecord
    has_many :tablebooks
    has_many :users, through: :tablebooks
end
