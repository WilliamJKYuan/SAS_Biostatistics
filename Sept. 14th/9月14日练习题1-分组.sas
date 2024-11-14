*9月4日练习题1;
/*
调查两个小麦品种的每穗小穗数，每品种计数10个麦穗，
A品种小穗数为：13,14,15,17,18,18,19,21,22,23;
B品种小穗数为：16,16,17,18,18,18,18,19,20,20。试计算两品种的基本统计量，并比较两品种小穗数是否存在差异。
*/
data a;
	input variety $ spikelets @@;
	/*input variety $ spikelets @@;：variety 表示品种，spikelets 表示每穗的小穗数，$ 表示品种是字符变量。 */
	datalines;
A 13 A 14 A 15 A 17 A 18 A 18 A 19 A 21 A 22 A 23
B 16 B 16 B 17 B 18 B 18 B 18 B 18 B 19 B 20 B 20
;
run;

*计算基本统计量;
proc univariate data = a normal;
	class variety;
	var spikelets;
run;

*计算t检验;
proc ttest data = a h0 = 0;
	class variety;
	var spikelets;
run;