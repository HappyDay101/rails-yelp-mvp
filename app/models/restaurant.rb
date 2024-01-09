class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"] }

  validates :image_url, format: { with: URI::DEFAULT_PARSER.make_regexp, message: 'Invalid URL format' }, allow_blank: true
end
