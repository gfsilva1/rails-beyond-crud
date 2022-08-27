class CreateDocs < ActiveRecord::Migration[6.1]
  def change
    create_table :docs do |t|
      t.string :nome
      t.references :projeto, null: false, foreign_key: true

      t.timestamps
    end
  end
end
