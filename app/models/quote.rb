class Quote < ActiveRecord::Base
	has_many :quote_lines
	
	accepts_nested_attributes_for :quote_lines, :reject_if => :all_blank, :allow_destroy => true	
end
