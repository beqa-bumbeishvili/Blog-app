class AddAttachmentLogoToArticles < ActiveRecord::Migration
  def self.up
    change_table :articles do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :articles, :logo
  end
end
