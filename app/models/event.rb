class Event < ApplicationRecord
    belongs_to :user
    # has_many :event_items
    # validates :event_items, presence: true
    validates :event_title, presence: true
    validates :event_type, presence: true
    validates :event_date, presence: true
    validates :todo1, t.string
    validates :todo2, t.string
    validates :todo3, t.string
    validates :todo4, t.string
    validates :todo5, t.string
    validates :todo6, t.string
    validates :todo7, t.string
    validates :todo8, t.string
    validates :todo9, t.string
    validates :todo10, t.string
    validates :todo11, t.string
    validates :todo12, t.string
    validates :todo13, t.string
    validates :todo14, t.string
    validates :todo15, t.string
    validates :todo15, t.string
    validates :todo16, t.string
    validates :todo17, t.string
    validates :todo18, t.string
    validates :todo19, t.string
    validates :todo20, t.string

end
