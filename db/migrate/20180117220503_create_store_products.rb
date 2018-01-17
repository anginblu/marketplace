class CreateStoreProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :store_products do |t|
      t.string :name
      t.belongs_to :store
      t.belongs_to :product
    end
  end
end
