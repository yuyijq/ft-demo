@current
Feature:在去哪儿网搜索火车票
	我想去旅行
	作为一个消费者
	我希望能快速的搜索我要去的目的地的火车票

	Scenario Outline:搜索火车票
		Given 我已经导航到qunar火车票首页："http://train.qunar.com"
		When 搜索"<fromStation>"到"<toStation>"的火车
		Then 我应该能在车次列表里看到车次为"<train>"的列车

		Examples:
			|fromStation|toStation|train|
			|北京|通州西|6461|