class CreateCarteleras < ActiveRecord::Migration
  def change
    create_table :carteleras do |t|
      t.string :nombre
      t.string :raiting

      t.timestamps
    end
  end
end
