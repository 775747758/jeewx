//加法函数，用来得到精确的加法结果
	//说明：javascript的加法结果会有误差，在两个浮点数相加的时候会比较明显。这个函数返回较为精确的加法结果。
	//调用：accAdd(arg1,arg2)
	//返回值：arg1加上arg2的精确结果
	function accAdd(arg1, arg2) {
		var r1, r2, m;
		try {
			r1 = arg1.toString().split(".")[1].length;
		} catch (e) {
			r1 = 0;
		}
		try {
			r2 = arg2.toString().split(".")[1].length;
		} catch (e) {
			r2 = 0;
		}
		m = Math.pow(10, Math.max(r1, r2));
		return (arg1 * m + arg2 * m) / m;
	}
	//减法函数
	function accSub(arg1, arg2)
	{
		var r1, r2, m, n;
		try {
			r1 = arg1.toString().split(".")[1].length;
		} catch (e) {
			r1 = 0;
		}
		try {
			r2 = arg2.toString().split(".")[1].length;
		} catch (e) {
			r2 = 0;
		}
		m = Math.pow(10, Math.max(r1, r2));
		//动态控制精度长度
		n = (r1 >= r2) ? r1 : r2;
		//从网上直接拷贝过来发现有点bug，有的时候会变成负数，所以只要发现是负数，就变成正数
		if(((arg2 * m - arg1 * m) / m).toFixed(n)<0){
			return -(((arg2 * m - arg1 * m) / m).toFixed(n));
		}
		return ((arg2 * m - arg1 * m) / m).toFixed(n);
	}