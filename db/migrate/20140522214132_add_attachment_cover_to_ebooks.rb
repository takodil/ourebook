class AddAttachmentCoverToEbooks < ActiveRecord::Migration
  def self.up
    change_table :ebooks do |t|
      t.attachment :cover
    end
  end

  def self.down
    drop_attached_file :ebooks, :cover
  end
end
