class Product < ActiveRecord::Base
  has_many :storeproducts
  has_many :stores, through: :storeproducts
  has_many :users, through: :stores
  validates_presence_of :name, :price

end
