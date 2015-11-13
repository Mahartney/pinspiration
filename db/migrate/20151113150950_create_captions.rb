class CreateCaptions < ActiveRecord::Migration
  def change
    create_table :captions do |t|
      t.string :body
      t.belongs_to :tag

      t.timestamps null: false
    end
  end
end
