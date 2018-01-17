class Store < ActiveRecord::Base
  has_many :products
  belongs_to :user
  validates_presence_of :name

end
