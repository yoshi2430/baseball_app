class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.string :position, null: false
      t.date :birthday, null: false
      t.float :height, null: false
      t.float :weight, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
