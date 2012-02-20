module Helper
	def on page_type, &block
		page = page_type.new @driver
		page.instance_eval &block if block_given?
	end
end