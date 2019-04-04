class AddUserToRessources < ActiveRecord::Migration[5.2]
  def change
    add_reference :ressources, :user, foreign_key: true
  end
end
