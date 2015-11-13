class CreatePins < ActiveRecord::Migration
  def change
    create_table :pins do |t|
      t.string :title
      t.string :image_url
      t.belongs_to :user
      t.belongs_to :board

      t.timestamps null: false
    end
  end
end
