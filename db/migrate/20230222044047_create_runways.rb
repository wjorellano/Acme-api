class CreateRunways < ActiveRecord::Migration[7.0]
  def change
    create_table :runways, id: :uuid do |t|
      t.string :longitud, null: false

      t.timestamps
    end
  end
end
