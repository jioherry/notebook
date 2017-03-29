class Porfile < ApplicationRecord

	validates_length_of :nickname, :first_name, :last_name, :is => 5, :allow_blank => true

	belongs_to :user

end

