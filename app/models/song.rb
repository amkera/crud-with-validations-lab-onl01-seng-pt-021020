class Song < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: {
    scope: [:release_year, :artist_name],
    message: 'cannot be repeated by the same artist in the same year'
  }
  
  validates :released, inclusion: { in: [true, false] }
  
  validates :released_year, presence: true
  
end
