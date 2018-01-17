class Product < ActiveRecord::Base
  has_one :store
  has_one :user, through: :store
  validates_presence_of :name, :price

end
