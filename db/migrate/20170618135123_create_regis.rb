class CreateRegis < ActiveRecord::Migration
  def change
    create_table :regis do |t|
      t.string :title
      t.string :housetype
      t.string :address
      t.integer :deposit
      t.integer :monthlyfee
      t.string :picture
      t.string :description
      t.integer :managementfee
      t.string :phone

      t.timestamps null: false
    end
  end
end
