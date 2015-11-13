class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.belongs_to :pins
      t.belongs_to :users

      t.timestamps null: false
    end
  end
end
