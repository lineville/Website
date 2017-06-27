class CreatePhotos < ActiveRecord::Migration[5.1]
  def up
    create_table :photos do |t|
      t.string :labels
      t.timestamps
    end

    def down
      drop_tabel :photos
    end
    
  end
end
