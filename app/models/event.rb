class Event < ApplicationRecord
    belongs_to :user
    # has_many :event_items
    # validates :event_items, presence: true
    validates :event_title, presence: true
    validates :event_type, presence: true
    validates :event_date, presence: true

end
