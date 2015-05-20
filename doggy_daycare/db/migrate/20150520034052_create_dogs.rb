class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :string
      t.interger :age
      t.resource :owner_id

      t.timestamps null: false
    end
  end
end
