class CreateHomes < ActiveRecord::Migration[5.1]
  def up
    # drop_table :homes
    create_table :homes do |t|
      t.string :username
      t.string :password
      t.timestamps
    end
  end

  def down
    drop_table :homes
  end
end
