class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :name, presence: true, uniqueness: { scope: :list }
  validates :photo, presence: true
  has_one_attached :photo
end
