class CreateHacks < ActiveRecord::Migration[5.0]
  def change
    create_table :hacks do |t|
      t.string :Current_password
      t.string :New_password
      t.string :Confirm_new_password

      t.timestamps
    end
  end
end
