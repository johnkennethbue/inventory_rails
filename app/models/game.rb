class Game < ApplicationRecord
    validates_presence_of :game_title, :message => " shouldn't be empty."
    validates_presence_of :description, :message => " shouldn't be empty."
    validates_presence_of :quantity, :message => " shouldn't be empty."
end
