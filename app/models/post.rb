class Post < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :publish_at, presence: true

  scope :published, -> { where("publish_at <= ?", Time.current) }
  scope :scheduled, -> { where("publish_at > ?", Time.current) }

  def published?
    publish_at <= Time.current
  end
end
