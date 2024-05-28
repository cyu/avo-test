class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :type

      t.timestamps
    end

    add_reference :people, :parent, null: true, foreign_key: {to_table: "people"}
  end
end
