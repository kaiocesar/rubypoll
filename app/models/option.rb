class Option < ApplicationRecord
  belongs_to :poll

  validates :description, presence: true
end
