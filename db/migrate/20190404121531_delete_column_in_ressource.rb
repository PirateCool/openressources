class DeleteColumnInRessource < ActiveRecord::Migration[5.2]
  def change
  	 remove_reference :ressources, :project

  end
end
