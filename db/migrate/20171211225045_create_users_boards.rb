class CreateUsersBoards < ActiveRecord::Migration[5.1]
  def change
    create_table :board_users do |t|
      t.integer :user_id
      t.integer :board_id
    end
  end
end
