class Product < ActiveRecord::Base
attr_accessor :category_id
has_many :bids
has_many :product_attachments
has_many :subcategories
accepts_nested_attributes_for :product_attachments
  validates :initial_price, numericality: true
  validates :name, presence: true, length: { maximum: 30 }
  validates :selling_price, numericality: true
  validates :description, presence: true, length: { maximum: 30 }
  validates :user_id, numericality: true
  validates :availibility, presence: true, length: { maximum: 30 }
  
   def self.search(search)
  where("name LIKE ?", "%#{search}%") 
   end
end
