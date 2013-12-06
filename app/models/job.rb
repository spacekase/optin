class Job < ActiveRecord::Base

	belongs_to :company

	has_many :applications

	has_many :moms, :through => :applications

	validates :company, :presence => true


end
