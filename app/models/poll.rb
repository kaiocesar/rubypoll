class Poll < ApplicationRecord
    has_many :option

    validates :description, presence: true
end
