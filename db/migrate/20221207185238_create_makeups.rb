class CreateMakeups < ActiveRecord::Migration[6.1]
  def change
    create_table :makeups do |t|
      t.string :name
      t.string :description
      t.string :status
      t.string :image
      t.string :url
      t.float :price
      t.integer :user_id

      t.timestamps
    end
  end
end
