class CreateSuggestBoxes < ActiveRecord::Migration
  def change
    create_table :suggest_boxes do |t|
      t.string :name
      t.string :email
      t.string :comment

      t.timestamps
    end
  end
end
