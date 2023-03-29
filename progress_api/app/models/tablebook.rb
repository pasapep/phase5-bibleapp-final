class Tablebook < ApplicationRecord
  belongs_to :bible
  belongs_to :user
end
