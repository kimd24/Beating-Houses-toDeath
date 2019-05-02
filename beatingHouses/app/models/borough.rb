class Borough < ApplicationRecord
    has_many :buildings
    has_many :point_of_interests
end
