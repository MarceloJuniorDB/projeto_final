class CreateVeiculos < ActiveRecord::Migration
  def change
    create_table :veiculos do |t|
      t.string :tipo

      t.timestamps
    end
  end
end
