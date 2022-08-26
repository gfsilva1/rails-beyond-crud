class CreateProprietarios < ActiveRecord::Migration[6.1]
  def change
    create_table :proprietarios do |t|
      t.string :nome

      t.timestamps
    end
  end
end
