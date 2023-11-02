class Gossip < ApplicationRecord
  validates :author, presence: true, length: { in: 3..14 }
  validates :content, presence: true
end
