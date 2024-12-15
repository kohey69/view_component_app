# frozen_string_literal: true

class BlogComponent < ViewComponent::Base
  renders_one :header
  renders_many :posts
end
