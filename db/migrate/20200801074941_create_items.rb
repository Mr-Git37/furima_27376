class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :title        , null: false
      t.text       :text         , null: false
      t.integer    :price        , null: false
      t.integer    :genre_id     , null: false
      t.integer    :condition_id , null: false
      t.integer    :deliveryfee_id , null: false
      t.integer    :prefecture_id , null: false
      t.integer    :scheduleddelivery_id , null: false
      t.integer    :itemstatus_id , null: false
      t.timestamps
    end
  end
end
