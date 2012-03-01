module Helper
	def on page_type, &block
		page = page_type.new @driver
		page.instance_eval &block if block_given?
	end

	def switch_to_new_window
		hs = @driver.window_handles
		ch = @driver.window_handle
		hs.each do |h|
			unless h == ch
				@driver.switch_to.window(h)
			end
		end
	end

	def close_new_window
		ch = @driver.window_handle
		switch_to_new_window()
		@driver.close()
		@driver.switch_to.window(ch)
	end
end