class Task < ApplicationRecord
    validates :body, length: { maximum: 40 }, uniqueness: true, presence: true
    validates :completed, inclusion: { in: [true, false] }
end
