class Task < ApplicationRecord
    validates :body, length: { maximum: 35 }, presence: true
    validates :completed, inclusion: { in: [true, false] }
    validates :priority, inclusion: { in: %w[low medium high]}
end
