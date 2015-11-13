class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :title
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
