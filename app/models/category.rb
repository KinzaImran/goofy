class Category < ActiveRecord::Base
has_many :subcategories
  validates :name, presence: true, length: { maximum: 30 }
end
