class CreateProjetos < ActiveRecord::Migration[6.1]
  def change
    create_table :projetos do |t|
      t.string :propriedade
      t.string :nome

      t.timestamps
    end
  end
end
