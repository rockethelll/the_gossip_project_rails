class Gossip < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates_length_of :title, within: 3..14, too_long: 'Titre trop long', too_short: 'Titre trop court'
  belongs_to :user, optional: true
  has_and_belongs_to_many :tags
  has_many :comments
  has_many :likes
end
