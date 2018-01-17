class Product < ActiveRecord::Base
  belongs_to :store
  has_one :user, through: :store
  validates_presence_of :name, :price

end
