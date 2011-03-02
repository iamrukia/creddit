class AddUserToPost < ActiveRecord::Migration
  def self.up
    #add_column :posts, :user_id, :integer
    change_table :posts do |t|
      t.references :user
      t.index :user_id
    end
  end

  def self.down
    # remove_column :posts, :user_id
    change_table :posts do |t|
      t.remove :user_id
      # TODO: Remove index
    end
  end
end
