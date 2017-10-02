class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.integer :user_id
      t.integer :venue_id

      t.timestamps
    end
  end
end
