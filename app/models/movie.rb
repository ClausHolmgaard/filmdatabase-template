class Movie < ApplicationRecord
    validates :title, presence: true
    validates :year, presence: true, numericality: { only_integer: true }
    validates :genre, presence: true
    validates :director, presence: true
end
