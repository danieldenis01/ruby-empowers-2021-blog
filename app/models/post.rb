class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: { case_sensitive: false }
  validates :title, length: { minimum: 2, maximum: 100, allow_blank: true }
  validates :content, presence: true

  before_save :define_slug

  private

  def define_slug
    self.slug = self.title.downcase
  end
end
