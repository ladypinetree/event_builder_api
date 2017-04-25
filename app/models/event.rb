class Event < ApplicationRecord
    belongs_to :user
    # has_many :event_items
    # validates :event_items, presence: true
    validates :event_title, presence: true
    validates :event_type, presence: true
    validates :event_date, presence: true
    validates :todo1, presence: false
    validates :todo2, presence: false
    validates :todo3, presence: false
    validates :todo4, presence: false
    validates :todo5, presence: false
    validates :todo6, presence: false
    validates :todo7, presence: false
    validates :todo8, presence: false
    validates :todo9, presence: false
    validates :todo10, presence: false
    validates :todo11, presence: false
    validates :todo12, presence: false
    validates :todo13, presence: false
    validates :todo14, presence: false
    validates :todo15, presence: false
    validates :todo16, presence: false
    validates :todo17, presence: false
    validates :todo18, presence: false
    validates :todo19, presence: false
    validates :todo20, presence: false

end
