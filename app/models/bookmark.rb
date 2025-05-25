class Bookmark < ApplicationRecord
  belongs_to :film
  belongs_to :list

  validates :film, uniqueness: { scope: :list }
end
