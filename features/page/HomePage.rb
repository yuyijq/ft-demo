class HomePage
  def initialize driver
      @driver = driver
    end

    def search(from, to, date)
      fromInput = @driver.find_element(:name,'fromStation')
      fromInput.clear
      fromInput.send_keys from
    
      toInput = @driver.find_element(:name, 'toStation')
      toInput.clear
      toInput.send_keys to  

      dateInput = @driver.find_element(:name => 'date')
      dateInput.clear
      dateInput.send_keys date

      search = @driver.find_element(:class, 'searchButton')
      search.submit
    end
end