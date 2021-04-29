class Project < ApplicationRecord

    extend FriendlyId
    friendly_id :title, use: :slugged

    belongs_to :author, :optional => true

    scope :most_recent, -> { order(id: :desc) }

    def display_day_published
        "Published: #{created_at.strftime('%-b %-d, %Y')}"
    end
end
