class Job < ActiveRecord::Base

	belongs_to :company

	has_many :applications

	has_many :moms, :through => :applications

	validates :company_id, :presence => true
	validates :title, :presence => true
	validates :industry, :presence => true
	validates :function, :presence => true
	validates :budget, :presence => true, :numericality =>true
	validates :description, :presence => true
	validates :location, :presence => true

end
