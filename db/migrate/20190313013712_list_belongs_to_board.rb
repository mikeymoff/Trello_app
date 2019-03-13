class ListBelongsToBoard < ActiveRecord::Migration[5.2]
  def change
    belongs_to :boards
  end
end
