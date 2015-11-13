class CreateCaptions < ActiveRecord::Migration
  def change
    create_table :captions do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
