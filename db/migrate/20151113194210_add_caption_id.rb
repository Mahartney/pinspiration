class AddCaptionId < ActiveRecord::Migration
  def change
    add_reference :tags, :caption, index: true
  end
end
