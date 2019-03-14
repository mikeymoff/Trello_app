class List < ApplicationRecord
    validates(:text, presence: true)
    validates(:board_id, presence: true)
    belongs_to :board
end
