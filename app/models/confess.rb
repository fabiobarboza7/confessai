class Confess < ApplicationRecord
	belongs_to :user, optional: true
	validates :text, presence: true
end
