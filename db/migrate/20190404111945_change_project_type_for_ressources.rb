class ChangeProjectTypeForRessources < ActiveRecord::Migration[5.2]
  def change

  	remove_column :ressources, :project, :string
	add_reference :ressources, :project, foreign_key: true
  end
end
