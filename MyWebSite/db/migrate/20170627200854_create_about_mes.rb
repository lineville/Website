class CreateAboutMes < ActiveRecord::Migration[5.1]
  def up
    create_table :about_mes do |t|
      t.string :description
      t.timestamps
    end
  end

  def down
    drop_table :about_mes
  end
end
