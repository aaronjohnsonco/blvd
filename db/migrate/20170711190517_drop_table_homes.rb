class DropTableHomes < ActiveRecord::Migration[5.0]
  def change
    drop_table :homes do |t|
      t.string   "community"
      t.string   "lot"
      t.string   "address"
      t.string   "city"
      t.string   "state"
      t.string   "zip"
      t.string   "description"
      t.string   "sqft"
      t.string   "stories"
      t.string   "bedrooms"
      t.string   "baths"
      t.string   "garage"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
      t.string   "price"
      t.text     "detail"
      t.string   "status"

    end
  end
end
