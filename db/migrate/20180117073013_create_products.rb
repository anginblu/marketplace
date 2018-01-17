class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.belongs_to :store
      # t.belongs_to :user, through: :store
    end
  end
end
