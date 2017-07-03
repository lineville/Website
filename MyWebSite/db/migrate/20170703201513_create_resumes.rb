class CreateResumes < ActiveRecord::Migration[5.1]
  def up
    create_table :resumes do |t|
      t.string :version
      t.timestamps
    end
  end

  def down
    drop_table :resumes
  end
end
