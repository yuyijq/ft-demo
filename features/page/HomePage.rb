class HomePage
  def initialize driver
      @driver = driver
    end

    def search(from, to)
      fromInput = @driver.find_element(:name,'fromStation')
      fromInput.clear
      fromInput.send_keys from
    
      toInput = @driver.find_element(:name, 'toStation')
      toInput.clear
      toInput.send_keys to  

      search = @driver.find_element(:class, 'searchButton')
      search.submit
    end
end