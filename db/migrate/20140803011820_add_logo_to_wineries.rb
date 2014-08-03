class AddLogoToWineries < ActiveRecord::Migration
  def self.up
    add_attachment :wineries, :logo
  end

  def self.down
    remove_attachment :wineries, :logo
  end
end
