class BackfillPostsUsers < ActiveRecord::Migration[7.1]
  def change
    user = User.first
    Post.all.update_all(user_id: user.id)
  end
end
