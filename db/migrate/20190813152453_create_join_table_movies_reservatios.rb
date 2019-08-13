class CreateJoinTableMoviesReservatios < ActiveRecord::Migration[5.2]
  def change
    create_join_table :movies, :reservations do |t|
      t.references :movie, foreign_key: true
      t.references :reservation, foreign_key: true
    end
  end
end
