class CreatePapers < ActiveRecord::Migration[7.1]
  def change
    create_table :papers do |t|
      t.references :exam, null: false, foreign_key: true
      t.string :title
      t.integer :year

      t.timestamps
    end
  end
end
