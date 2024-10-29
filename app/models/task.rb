class Task < ApplicationRecord
    validates :body, length: { maximum: 40 }, uniqueness: true, presence: true
end
