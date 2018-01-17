class Product < ActiveRecord::Base
  has_many :store_products
  has_many :stores, through: :store_products
  has_many :users, through: :stores
  validates_presence_of :name, :price

end
