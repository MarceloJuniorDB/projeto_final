class MudarVeiculoParaChaveEstangeiraEmMovimentos < ActiveRecord::Migration
  def up
	change_table :movimentos do |t|
      t.remove :veiculo
      t.integer :veiculo_id
	end
  end

  def down
    change_table :movimentos do |t|
      t.remove :veiculo_id
      t.string :veiculo
	end
  end
end
