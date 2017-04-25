# frozen_string_literal: true
class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_title, :event_type, :event_date, :todo1, :todo2, :todo3, :todo4, :todo5,
  :todo6, :todo7, :todo8, :todo9, :todo10, :todo11, :todo12, :todo13, :todo14, :todo15, :todo16,
  :todo17, :todo18, :todo19, :todo20
  def editable
    scope == object.user
  end
end
