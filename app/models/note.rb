class Note < ApplicationRecord
  belongs_to :contact
  has_many :comments, dependent: :destroy

  validates :body, presence: true 
  validates :body, length: { in: 10...500 }
end
