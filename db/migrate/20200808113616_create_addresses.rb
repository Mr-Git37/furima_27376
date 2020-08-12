class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.integer :postalcode ,null: false
      t.integer :prefecture_id ,null: false
      t.string :city ,null: false
      t.integer :number ,null: false
      t.string :buildingname
      t.bigint :phonenumber ,null: false
      t.references :item ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
