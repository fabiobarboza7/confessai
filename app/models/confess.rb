class Confess < ApplicationRecord
	belongs_to :user, optional: true
	has_one :vote, dependent: :destroy
	validates :text, presence: true
end
