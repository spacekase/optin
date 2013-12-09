class Application < ActiveRecord::Base

	belongs_to :job

	belongs_to :mom


	validates :job, :presence => true
end
