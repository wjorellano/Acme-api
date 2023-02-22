class CreateAirplanes < ActiveRecord::Migration[7.0]
  def change
    create_table :airplanes, id: :uuid do |t|
      t.integer :airplane_number, null: false
      t.integer :capacity, default: 0
      t.string :color
      t.string :state, default: 'activo', null: false
      t.references :airline, null: false, foreign_key: true, type: :uuid

      t.timestamps
    end
  end

  def up
    execute <<-SQL
      CREATE TYPE state AS ENUM ('activo', 'inactivo');
    SQL
  end

  def down
    execute <<-SQL
      DROP TYPE state;
    SQL
  end
end
