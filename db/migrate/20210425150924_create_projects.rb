class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :body
      t.string :slug

      t.timestamps
    end
    add_index :projects, :slug, unique: true
  end
end
