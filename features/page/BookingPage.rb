class Home
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

    def all_trains
      trains = []
      train_elements = @driver.find_elements(:class => 'info_cp')
      train_elements.each do |train|
        trains <- train['id']
      end
    end
end