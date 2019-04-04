class Ressource < ApplicationRecord
	has_and_belongs_to_many :projects
	belongs_to :user
	acts_as_taggable 
end
