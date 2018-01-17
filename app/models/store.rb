class Store < ActiveRecord::Base
  belongs_to :user
  has_many :store_products
  has_many :products, through: :store_products
  validates_presence_of :name

end
