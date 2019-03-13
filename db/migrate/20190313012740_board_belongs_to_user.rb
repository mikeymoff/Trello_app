class BoardBelongsToUser < ActiveRecord::Migration[5.2]
  def change
    belongs_to :users
  end
end
