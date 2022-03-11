class Task < ApplicationRecord
  has_many :objectives, dependent: :destroy
end
