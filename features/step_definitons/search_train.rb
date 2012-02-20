#encoding: utf-8
include Helper

Given /^我已经导航到qunar火车票首页："(.*)"$/ do |url|
	@driver.navigate.to url
end

When /^搜索"(.*)"到"(.*)"的火车$/ do |from, to|
	on BookingPage do
		search(from, to)
	end
end

Then /^我应该能在车次列表里看到车次为"(.*)"的列车$/ do |train|
	on BookingPage do
		all_trains.should include "list_#{train}"
	end
end