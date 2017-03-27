class Event < ApplicationRecord
    belongs_to :user
    # has_many :event_items
    # validates :event_items, presence: true
    validates :user, presence: true
    validates :event_title, presence: true
    validates :event_type, presence: true
    # might not require type
    validates :event_date, presence: true
end