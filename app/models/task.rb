class Task < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :content, :deadline, presence: true
end
