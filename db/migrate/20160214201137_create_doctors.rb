class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.references :speciality, index: true
      t.integer :posts_count, default: 0

      t.timestamps null: false
    end
  end
end
