class AddAttachmentProfilePicToComments < ActiveRecord::Migration
  def self.up
    change_table :comments do |t|
      t.attachment :profile_pic
    end
  end

  def self.down
    remove_attachment :comments, :profile_pic
  end
end
