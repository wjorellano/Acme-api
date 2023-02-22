class CreateAirlines < ActiveRecord::Migration[7.0]
  def change
    create_table :airlines, id: :uuid do |t|
      t.string :name, null: false
      t.integer :code, null: false
      t.string :state, null: false

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
