class Gear < ApplicationRecord
  validates :user_id, presence: true
  belongs_to :user
  belongs_to :event, optional: true

  def to_s
    "#{name}"
  end
end
