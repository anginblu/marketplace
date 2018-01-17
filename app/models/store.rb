class Store < ActiveRecord::Base
  belongs_to :user
  has_many :storeproducts
  has_many :products, through: :storeproducts
  validates_presence_of :name

end
