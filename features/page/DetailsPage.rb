class DetailsPage
	def initialize driver
      @driver = driver
    end

    def status
    	@driver.find_element(:xpath => "//span[@class='status']/cite").text
    end
end