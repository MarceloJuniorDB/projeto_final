class CreateMovimentos < ActiveRecord::Migration
  def change
    create_table :movimentos do |t|
      t.string :veiculo
      t.string :placa
      t.datetime :hora_entrada
      t.datetime :hora_saida

      t.timestamps
    end
  end
end
