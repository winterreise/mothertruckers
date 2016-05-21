class User < ActiveRecord::Base
  validates :email, presence: true, length: { minimum: 1 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 1 }
  has_many :notes, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :favourites, dependent: :destroy
  has_many :trucks, through: :favourites
  has_many :ratings, dependent: :destroy

  def favourite_truck_ids
    ids = []
    favourites = self.favourites
    favourites.each do |f|
      ids << f.truck_id
    end
    return ids
  end

end
