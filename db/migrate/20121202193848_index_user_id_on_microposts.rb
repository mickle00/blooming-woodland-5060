class IndexUserIdOnMicroposts < ActiveRecord::Migration
  def up
    add_index :microposts, [:user_id, :created_at]
  end

  def down
    drop_index :microposts, [:user_id, :created_at]
  end
end
