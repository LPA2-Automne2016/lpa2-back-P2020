class CreateBurgers < ActiveRecord::Migration[5.1]
  def change
    create_table :burgers do |t|
      t.string :name
      t.float :price
      t.string :image
      t.string :nutriscore

      t.timestamps
    end
  end
end
