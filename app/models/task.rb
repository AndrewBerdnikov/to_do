class Task < ApplicationRecord
    validates :body, length: { maximum: 40 }, presence: true
    validates :completed, inclusion: { in: [true, false] }
end
