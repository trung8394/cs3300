class Project < ApplicationRecord
    extend FriendlyId
    friendly_id :title, use: :slugged

    scope :most_recent, -> { order(id: :desc) }

end
