class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :username
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
