class BlogPost < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  before_save :assign_permalink

  def to_param
    self.name
  end

  private

  def assign_permalink
    self.url = "/blog/#{self.name.parameterize}"
  end
end
