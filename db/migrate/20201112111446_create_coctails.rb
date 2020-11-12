class CreateCoctails < ActiveRecord::Migration[6.0]
  def change
    create_table :coctails do |t|
      t.string :name

      t.timestamps
    end
  end
end
