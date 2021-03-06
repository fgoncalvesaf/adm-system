class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.references :client, foreign_key: true
      t.string :address
      t.string :complement
      t.string :zip_code
      t.string :city
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
