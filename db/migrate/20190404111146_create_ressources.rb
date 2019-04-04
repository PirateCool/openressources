class CreateRessources < ActiveRecord::Migration[5.2]
  def change
    create_table :ressources do |t|
      t.string :name
      t.text :description
      t.string :url
      t.string :project

      t.timestamps
    end
  end
end
