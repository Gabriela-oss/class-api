class News < ApplicationRecord
  validates :title, presence: true 
  enum status: [:draft, :published]
  enum status: [:police, :sports, :international, :economics]
  scope :active, -> {where(active: true)}

end
