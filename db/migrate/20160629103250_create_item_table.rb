class CreateItemTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string   :name, null: false
      t.text     :description, null: false
      t.float    :price, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.references :seller, index: true

      t.timestamps(null: false)
    end
  end
end
