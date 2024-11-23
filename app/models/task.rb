class Task < ApplicationRecord
    validates :body, length: { maximum: 40 }, presence: true
    validates :completed, inclusion: { in: [true, false] }
    validates :category, inclusion: { in: %w[sports work hobbies study other] }
end
