class CreateColes < ActiveRecord::Migration[5.1]
  def change
    create_table :coles do |t|

      t.timestamps
    end
  end
end
