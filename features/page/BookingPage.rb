class BookingPage
    def initialize driver
      @driver = driver
    end

    def all_trains
      trains = []
      train_elements = @driver.find_elements(:class => 'info_cp')
      train_elements.each do |train|
        trains << train['id']
      end
      return trains
    end

    def buy(train)
      @driver.find_element(:id => "list_#{train}").find_element(:class => 'bt_detail').click
    end
end