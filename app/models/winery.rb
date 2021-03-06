require 'csv'

class Winery < ActiveRecord::Base
  has_attached_file :logo, :styles => { :pin => "35x35" }
  validates_attachment_content_type :logo, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  def self.import(file_path)
    CSV.foreach(file_path, headers: true) do |row|
      Winery.create! row.to_hash
    end
  end

  def as_json(*args)
    super.tap do |hash|
      hash["value"] = hash.delete "name"
      hash.delete "created_at"
      hash.delete "updated_at"
    end
  end

end
