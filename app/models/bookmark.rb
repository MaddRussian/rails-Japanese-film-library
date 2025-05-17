class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :title, uniqueness: { scope: :list }

  has_one_attached :photo
end
