class Project < ActiveRecord::Base
  belongs_to :user

  has_many :project_attachments
accepts_nested_attributes_for :project_attachments
end
