class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.belongs_to :pin
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
