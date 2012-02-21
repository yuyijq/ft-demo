#encoding: utf-8

class PurchasePage
  def initialize driver
      @driver = driver
  end

  def fill_form rec, certNo, mobile, pro, city, st, addr
    @driver.find_element(:name => 'pName_0').send_keys rec
  
    @driver.find_element(:xpath => "//ul[@id='passenger_list']//div[text()='身份证']").click
    sleep 1
    @driver.find_element(:xpath => "//ul[@id='passenger_list']//div[text()='身份证']/..//li[2]/a").click
    sleep 1
    @driver.find_element(:name => 'pCertNo_0').send_keys certNo
    @driver.find_element(:name => 'receiverName').send_keys rec
    @driver.find_element(:xpath => "//ul[@class='pas_list ptrbl15 bottline']//div[text() = '身份证']").click
    sleep 1
    @driver.find_element(:xpath => "//ul[@class='pas_list ptrbl15 bottline']//div[text() = '身份证']/..//li[2]/a").click
    sleep 1
    @driver.find_element(:name => 'receiverCertNo').send_keys certNo
    @driver.find_element(:name => 'receiverPhone').send_keys mobile
    @driver.find_element(:xpath => "//div[text()='选择省']").click
    sleep 1
    @driver.find_element(:xpath => "//div[text()='选择省']/..//a[text() = '#{pro}']").click
    sleep 1
    @driver.find_element(:xpath => "//div[text() = '选择市']").click
    sleep 1
    @driver.find_element(:xpath => "//div[text() = '选择市']/..//a[text() = '#{city}']").click
    sleep 1
    @driver.find_element(:xpath => "//div[text() = '选择区']").click
    sleep 1
    @driver.find_element(:xpath => "//div[text() = '选择区']/..//a[text() = '#{st}']").click
    sleep 1
    @driver.find_element(:name => "address").send_keys addr
    @driver.find_element(:name => 'license').click
  end

  def submit_order
    @driver.find_element(:xpath => "//button[@type = 'submit']").click
  end
end