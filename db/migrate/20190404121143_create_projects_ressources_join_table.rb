class CreateProjectsRessourcesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_table :projects_ressources, id: false do |t|
      t.integer :project_id
      t.integer :ressource_id
    end
 
    add_index :projects_ressources, :project_id
    add_index :projects_ressources, :ressource_id
  end
end
