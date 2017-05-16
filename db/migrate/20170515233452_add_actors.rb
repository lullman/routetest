class AddActors < ActiveRecord::Migration
  def change
    create_table(:actors) do |t|
      t.string :actor_name
      t.integer :movie_id

      t.timestamps
    end
  end
end
