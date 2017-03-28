# frozen_string_literal: true
class EventSerializer < ActiveModel::Serializer
  attributes :id, :event_title, :event_type, :event_date
  def editable
    scope == object.user
  end
end
