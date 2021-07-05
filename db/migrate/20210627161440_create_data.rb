class CreateData < ActiveRecord::Migration[6.1]
  def change
    create_table :data do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :Linkdin
      t.string :phone

      t.timestamps
    end
  end
end
