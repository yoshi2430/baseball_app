class CreateStats < ActiveRecord::Migration[7.0]
  def change
    create_table :stats do |t|
      t.references :player, null: false, foreign_key: true
      t.integer :at_bats, null: false
      t.integer :at_hits, null: false
      t.integer :home_runs, null: false
      t.integer :rbis, null: false
      t.integer :innings_pitched
      t.integer :earned_run
      t.timestamps
    end
  end
end
