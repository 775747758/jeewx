//当输入的日期值大于或等于当前日期返回true，日期类型为（2015-11-20）
function compareNowDate(date) {
	var d2 = new Date(date.replace(/-/g, "/"));
	var d1 = new Date(new Date().toLocaleDateString().replace("年", "/")
			.replace("月", "/").replace("日", ""));
	// 结束日期 等于 当前日期
	if (Date.parse(d1) - Date.parse(d2) == 0) {
		return true;
	}
	// 结束日期 大于 当前日期
	if (Date.parse(d1) - Date.parse(d2) < 0) {
		return true;
	}
	// 结束日期 小于 当前日期
	if (Date.parse(d1) - Date.parse(d2) > 0) {
		return false;
	}
	return true;
}
// 当输入的时间值大于当前时间返回true，日期类型为（2015-11-20 11:00）
function compareNowTime(date, time) {
	var d2 = new Date(date.replace(/-/g, "/") + " " + time);
	var nowStr = new Date().toLocaleDateString().replace("年", "/").replace("月",
			"/").replace("日", "")
			+ " " + new Date().getHours() + ":" + new Date().getMinutes();
	var d1 = new Date(nowStr);
	// 结束日期 等于 当前日期
	if (Date.parse(d1) - Date.parse(d2) == 0) {
		return false;
	}
	// 结束日期 大于 当前日期
	if (Date.parse(d1) - Date.parse(d2) < 0) {
		return true;
	}
	// 结束日期 小于 当前日期
	if (Date.parse(d1) - Date.parse(d2) > 0) {
		return false;
	}
	return true;
}