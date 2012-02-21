#encoding: utf-8
include Helper

And /^选择车次为"(.*)"的列车购买$/ do |train|
	on BookingPage do
		buy(train)
	end
end

And /^选择id为"(.*)"的代理商选择买票按钮$/ do |agent|
	switch_to_new_window()
	@driver.find_element(:xpath => "//li[@class='active']//a[@id='vendor_#{agent}']").click
	sleep 3
end

And /^输入购票信息"(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)","(.*)"$/ do |rec,certT,certNo,mobile,email,pro,city,st,addr|
	switch_to_new_window()
	on PurchasePage do
		fill_form rec, certNo, mobile, pro, city, st, addr
		submit_order
	end
end

And /^在银行页面点击支付按钮，但并不真正支付$/ do
	sleep 3
	@driver.find_element(:id => 'pay_btn').click
	sleep 3
	close_new_window()
end

Then /^点击支付完成，跳转到details页，显示订单状态为"(.*)"$/ do |status|
	@driver.find_element(:xpath => "//button/em/em[text()='已完成付款']/../..").click
	sleep 6
	@driver.find_element(:xpath => "//button/em/em[text()='确定']/../..").click
	sleep 3
	page = DetailsPage.new @driver
	page.status.should include status
end