@current
Feature:在去哪儿网购买火车票
	我想让未成功支付的订单显示未支付状态
	作为代理商
	我希望给未成功支付的用户提示未支付信息

	Scenario Outline:购买火车票
		Given 我已经导航到qunar火车票首页："http://train.qunar.com"
		When 搜索"<fromStation>"到"<toStation>"的火车
		And 选择车次为"<train>"的列车购买
		And 选择id为"<agent>"的代理商选择买票按钮
		And 输入购票信息"<rec>","<certT>","<certNo>","<mobile>","<email>","<pro>","<city>","<st>","<addr>"
		And 在银行页面点击支付按钮，但并不真正支付
		Then 点击支付完成，跳转到details页，显示订单状态为"<status>"  

		Examples:
			|fromStation|toStation|train|agent|rec|certT|certNo|mobile|email|pro|city|st|addr|status|
			|北京|通州西|6461|226|余昭辉|户口薄|123456789|12410399359|yuyijq@gmail.com|北京市|北京市|海淀区|维亚大厦|待支付|