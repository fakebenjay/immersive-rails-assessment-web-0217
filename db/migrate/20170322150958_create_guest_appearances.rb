class CreateGuestAppearances < ActiveRecord::Migration[5.0]
  def change
    create_table :guest_appearances, id: false do |t|
      t.integer :guest_id
      t.integer :appearance_id

      t.timestamps
    end
  end
end
