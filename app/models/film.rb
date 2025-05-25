class Film < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :lists, through: :bookmarks

  include PgSearch::Model
  pg_search_scope :search,
  against: [ :title ],
  using: {
    tsearch: { prefix: true }
  }
end
