class CreateReservations < ActiveRecord::Migration[5.2]
  def change
    create_table :reservations do |t|
      t.integer :cedula
      t.string :name
      t.string :email
      t.integer :cellphone

      t.timestamps
    end
  end
end
