class CreatePropriedades < ActiveRecord::Migration[6.1]
  def change
    create_table :propriedades do |t|
      t.string :nome
      t.references :proprietario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
