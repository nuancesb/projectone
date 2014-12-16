class AddRoleAndProfilePictureAndProfileDescriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :profile_picture, :string
    add_column :users, :profile_description, :text
  end
end
