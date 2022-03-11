class Task < ApplicationRecord
  has_many :Objectives, dependent: :destroy
end
