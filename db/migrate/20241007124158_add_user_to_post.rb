class AddUserToPost < ActiveRecord::Migration[7.1]
  def change
    change_table :posts do |t|
      t.references :user, index: true
    end
  end
end
