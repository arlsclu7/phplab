SELECT
	aaa.*,
	bbb.achiev_city_name as '原归属城市'
FROM
	(
	SELECT
		aa.city_id,
		aa.city_name AS 'city_name',
		aa.zone AS '原小区',
		cc.`name` AS '原大区' 
	FROM
		(
		SELECT
			a.city_id,
			a.city_name,
			a.zone_id,
			b.zone,
			b.region_id 
		FROM
			(
			SELECT
				city_id,
				zone_id,
				city_name 
			FROM
				t_city_zonearea 
			WHERE
				city_name IN (
					'广州',
					'韶关',
					'深圳',
					'珠海',
					'汕头',
					'佛山',
					'江门',
					'湛江',
					'茂名',
					'肇庆',
					'惠州',
					'梅州',
					'汕尾',
					'河源',
					'阳江',
					'清远',
					'东莞',
					'中山',
					'潮州',
					'揭阳',
					'云浮',
					'上海',
					'南京',
					'无锡',
					'徐州',
					'常州',
					'苏州',
					'南通',
					'连云港',
					'淮安',
					'盐城',
					'扬州',
					'镇江',
					'泰州',
					'宿迁',
					'杭州',
					'宁波',
					'温州',
					'嘉兴',
					'湖州',
					'绍兴',
					'金华',
					'衢州',
					'舟山',
					'台州',
					'丽水',
					'义乌',
					'郑州',
					'开封',
					'洛阳',
					'平顶山',
					'安阳',
					'鹤壁',
					'新乡',
					'焦作',
					'濮阳',
					'许昌',
					'漯河',
					'三门峡',
					'南阳',
					'商丘',
					'信阳',
					'周口',
					'驻马店',
					'北京',
					'天津',
					'济南',
					'青岛',
					'淄博',
					'枣庄',
					'东营',
					'烟台',
					'潍坊',
					'济宁',
					'泰安',
					'威海',
					'日照',
					'莱芜',
					'临沂',
					'德州',
					'聊城',
					'滨州',
					'菏泽',
					'太原',
					'大同',
					'阳泉',
					'长治',
					'晋城',
					'朔州',
					'晋中',
					'运城',
					'忻州',
					'临汾',
					'吕梁',
					'石家庄',
					'唐山',
					'秦皇岛',
					'邯郸',
					'邢台',
					'保定',
					'张家口',
					'承德',
					'沧州',
					'廊坊',
					'衡水',
					'武汉',
					'黄石',
					'十堰',
					'宜昌',
					'襄樊',
					'鄂州',
					'荆门',
					'孝感',
					'荆州',
					'黄冈',
					'咸宁',
					'随州',
					'恩施土家族苗族自治州',
					'沈阳',
					'大连',
					'鞍山',
					'抚顺',
					'本溪',
					'丹东',
					'锦州',
					'营口',
					'阜新',
					'辽阳',
					'盘锦',
					'铁岭',
					'朝阳',
					'葫芦岛',
					'成都',
					'自贡',
					'攀枝花',
					'泸州',
					'德阳',
					'绵阳',
					'广元',
					'遂宁',
					'内江',
					'乐山',
					'南充',
					'眉山',
					'宜宾',
					'广安',
					'达州',
					'雅安',
					'巴中',
					'资阳',
					'阿坝藏族羌族自治州',
					'甘孜藏族自治州',
					'凉山彝族自治州',
					'福州',
					'厦门',
					'莆田',
					'三明',
					'泉州',
					'漳州',
					'南平',
					'龙岩',
					'宁德',
					'西安',
					'铜川',
					'宝鸡',
					'咸阳',
					'渭南',
					'延安',
					'汉中',
					'榆林',
					'安康',
					'商洛',
					'兰州',
					'嘉峪关',
					'金昌',
					'白银',
					'天水',
					'武威',
					'张掖',
					'平凉',
					'酒泉',
					'庆阳',
					'定西',
					'陇南',
					'临夏回族自治州',
					'甘南藏族自治州',
					'合肥',
					'芜湖',
					'蚌埠',
					'淮南',
					'马鞍山',
					'淮北',
					'铜陵',
					'安庆',
					'黄山',
					'滁州',
					'阜阳',
					'宿州',
					'巢湖',
					'六安',
					'亳州',
					'池州',
					'宣城',
					'长沙',
					'株洲',
					'湘潭',
					'衡阳',
					'邵阳',
					'岳阳',
					'常德',
					'张家界',
					'益阳',
					'郴州',
					'永州',
					'怀化',
					'娄底',
					'湘西土家族苗族自治州',
					'重庆',
					'长春',
					'吉林',
					'四平',
					'辽源',
					'通化',
					'白山',
					'松原',
					'白城',
					'延边朝鲜族自治州',
					'哈尔滨',
					'齐齐哈尔',
					'鸡西',
					'鹤岗',
					'双鸭山',
					'大庆',
					'伊春',
					'佳木斯',
					'七台河',
					'牡丹江',
					'黑河',
					'绥化',
					'大兴安岭地区',
					'南昌',
					'景德镇',
					'萍乡',
					'九江',
					'新余',
					'鹰潭',
					'赣州',
					'吉安',
					'宜春',
					'抚州',
					'上饶',
					'贵阳',
					'六盘水',
					'遵义',
					'安顺',
					'铜仁地区',
					'黔西南布依族苗族自治州',
					'毕节地区',
					'黔东南苗族侗族自治州',
					'黔南布依族苗族自治州',
					'昆明',
					'曲靖',
					'玉溪',
					'保山',
					'昭通',
					'丽江',
					'普洱',
					'临沧',
					'楚雄彝族自治州',
					'红河哈尼族彝族自治州',
					'文山壮族苗族自治州',
					'西双版纳傣族自治州',
					'大理白族自治州',
					'德宏傣族景颇族自治州',
					'怒江傈僳族自治州',
					'迪庆藏族自治州',
					'南宁',
					'柳州',
					'桂林',
					'梧州',
					'北海',
					'防城港',
					'钦州',
					'贵港',
					'玉林',
					'百色',
					'贺州',
					'河池',
					'来宾',
					'崇左',
					'海口',
					'三亚',
					'三沙',
					'拉萨',
					'昌都地区',
					'山南',
					'日喀则地区',
					'那曲地区',
					'阿里',
					'林芝地区',
					'西宁',
					'海东地区',
					'海北藏族自治州',
					'黄南藏族自治州',
					'海南藏族自治州',
					'果洛藏族自治州',
					'玉树藏族自治州',
					'海西蒙古族藏族自治州',
					'银川',
					'石嘴山',
					'吴忠',
					'固原',
					'中卫',
					'乌鲁木齐',
					'克拉玛依',
					'吐鲁番地区',
					'哈密地区',
					'昌吉回族自治州',
					'博尔塔拉',
					'巴音郭楞蒙古自治州',
					'阿克苏地区',
					'克孜勒苏柯尔克孜',
					'喀什地区',
					'和田地区',
					'伊犁哈萨克自治州',
					'塔城',
					'阿勒泰',
					'呼和浩特',
					'包头',
					'乌海',
					'赤峰',
					'通辽',
					'鄂尔多斯',
					'呼伦贝尔',
					'巴彦淖尔',
					'乌兰察布',
					'兴安盟',
					'锡林郭勒盟',
					'阿拉善盟',
					'香港',
					'澳门',
					'台湾' 
				) 
			) a
			LEFT JOIN ( SELECT `name` AS zone, zone_id, region_id FROM t_zonearea WHERE zone_id IN ( SELECT DISTINCT zone_id FROM t_city_zonearea ) ) b ON a.zone_id = b.zone_id 
		) aa
		LEFT JOIN ( SELECT region_id, `name` FROM t_regionarea ) cc ON aa.region_id = cc.region_id 
	) aaa
	LEFT JOIN ( SELECT city_id, achiev_city_name FROM t_city_achiev_city ) bbb ON aaa.city_id = bbb.city_id
	where aaa.city_id in (
	59,
60,
61,
62,
63,
64,
65,
66,
67,
68,
69,
70,
109,
110,
111,
112,
113,
114,
115,
116,
117,
118,
119,
120,
121,
35,
107,
187,
188,
189,
190,
191,
192,
193,
194,
195,
196,
197,
198,
199,
200,
201,
202,
203,
5015,
71,
72,
73,
74,
75,
76,
77,
78,
79,
80,
81,
82,
83,
84,
48,
49,
50,
51,
52,
53,
54,
55,
56,
57,
58,
85,
86,
87,
88,
89,
90,
91,
92,
93,
122,
123,
124,
125,
126,
127,
128,
129,
130,
131,
132,
150,
151,
152,
153,
154,
155,
156,
157,
158,
133,
1412,
135,
136,
137,
138,
139,
140,
141,
142,
143,
144,
146,
147,
148,
149,
232,
233,
234,
235,
236,
238,
237,
239,
240,
241,
243,
244,
242,
245,
246,
247,
250,
251,
252,
270,
5016,
94,
95,
96,
97,
98,
99,
100,
101,
102,
103,
104,
105,
106,
303,
304,
305,
306,
307,
308,
309,
310,
311,
312,
313,
314,
315,
316,
317,
318,
253,
254,
255,
256,
257,
258,
259,
261,
260,
263,
262,
264,
265,
266,
159,
160,
162,
163,
164,
161,
165,
166,
167,
168,
169,
204,
205,
206,
207,
5017,
209,
210,
211,
212,
213,
214,
215,
216,
217,
218,
219,
220,
221,
222,
223,
224,
225,
226,
227,
228,
229,
230,
231,
336,
337,
338,
339,
340,
341,
342,
343,
344,
345,
346,
347,
348,
349,
3438,
363,
364,
3435,
367,
368,
369,
370,
371,
372,
373,
374,
375,
376,
377,
273,
274,
275,
276,
277,
278,
279,
280,
281,
282,
283,
284,
285,
286,
287,
288,
289,
290,
291,
292,
293,
294,
295,
296,
297,
2889,
2871,
299,
301,
302,
350,
351,
352,
353,
354,
355,
356,
357,
267,
268,
5019,
269,
358,
359,
360,
361,
362,
326,
327,
328,
329,
331,
330,
332,
333,
335,
334,
170,
171,
172,
173,
174,
175,
176,
177,
178,
179,
180,
181,
182,
183,
184,
185,
186,
33,
319,
3094,
320,
325,
321,
324,
323,
37,
38,
39,
40,
41,
42,
43,
44,
45,
46,
47,
248,
249,
2578
	)
order by 
case when city_name='广州'then 1 end desc,
case when city_name='韶关'then 2 end desc,
case when city_name='深圳'then 3 end desc,
case when city_name='珠海'then 4 end desc,
case when city_name='汕头'then 5 end desc,
case when city_name='佛山'then 6 end desc,
case when city_name='江门'then 7 end desc,
case when city_name='湛江'then 8 end desc,
case when city_name='茂名'then 9 end desc,
case when city_name='肇庆'then 10 end desc,
case when city_name='惠州'then 11 end desc,
case when city_name='梅州'then 12 end desc,
case when city_name='汕尾'then 13 end desc,
case when city_name='河源'then 14 end desc,
case when city_name='阳江'then 15 end desc,
case when city_name='清远'then 16 end desc,
case when city_name='东莞'then 17 end desc,
case when city_name='中山'then 18 end desc,
case when city_name='潮州'then 19 end desc,
case when city_name='揭阳'then 20 end desc,
case when city_name='云浮'then 21 end desc,
case when city_name='上海'then 22 end desc,
case when city_name='南京'then 23 end desc,
case when city_name='无锡'then 24 end desc,
case when city_name='徐州'then 25 end desc,
case when city_name='常州'then 26 end desc,
case when city_name='苏州'then 27 end desc,
case when city_name='南通'then 28 end desc,
case when city_name='连云港'then 29 end desc,
case when city_name='淮安'then 30 end desc,
case when city_name='盐城'then 31 end desc,
case when city_name='扬州'then 32 end desc,
case when city_name='镇江'then 33 end desc,
case when city_name='泰州'then 34 end desc,
case when city_name='宿迁'then 35 end desc,
case when city_name='杭州'then 36 end desc,
case when city_name='宁波'then 37 end desc,
case when city_name='温州'then 38 end desc,
case when city_name='嘉兴'then 39 end desc,
case when city_name='湖州'then 40 end desc,
case when city_name='绍兴'then 41 end desc,
case when city_name='金华'then 42 end desc,
case when city_name='衢州'then 43 end desc,
case when city_name='舟山'then 44 end desc,
case when city_name='台州'then 45 end desc,
case when city_name='丽水'then 46 end desc,
case when city_name='义乌'then 47 end desc,
case when city_name='郑州'then 48 end desc,
case when city_name='开封'then 49 end desc,
case when city_name='洛阳'then 50 end desc,
case when city_name='平顶山'then 51 end desc,
case when city_name='安阳'then 52 end desc,
case when city_name='鹤壁'then 53 end desc,
case when city_name='新乡'then 54 end desc,
case when city_name='焦作'then 55 end desc,
case when city_name='濮阳'then 56 end desc,
case when city_name='许昌'then 57 end desc,
case when city_name='漯河'then 58 end desc,
case when city_name='三门峡'then 59 end desc,
case when city_name='南阳'then 60 end desc,
case when city_name='商丘'then 61 end desc,
case when city_name='信阳'then 62 end desc,
case when city_name='周口'then 63 end desc,
case when city_name='驻马店'then 64 end desc,
case when city_name='北京'then 65 end desc,
case when city_name='天津'then 66 end desc,
case when city_name='济南'then 67 end desc,
case when city_name='青岛'then 68 end desc,
case when city_name='淄博'then 69 end desc,
case when city_name='枣庄'then 70 end desc,
case when city_name='东营'then 71 end desc,
case when city_name='烟台'then 72 end desc,
case when city_name='潍坊'then 73 end desc,
case when city_name='济宁'then 74 end desc,
case when city_name='泰安'then 75 end desc,
case when city_name='威海'then 76 end desc,
case when city_name='日照'then 77 end desc,
case when city_name='莱芜'then 78 end desc,
case when city_name='临沂'then 79 end desc,
case when city_name='德州'then 80 end desc,
case when city_name='聊城'then 81 end desc,
case when city_name='滨州'then 82 end desc,
case when city_name='菏泽'then 83 end desc,
case when city_name='太原'then 84 end desc,
case when city_name='大同'then 85 end desc,
case when city_name='阳泉'then 86 end desc,
case when city_name='长治'then 87 end desc,
case when city_name='晋城'then 88 end desc,
case when city_name='朔州'then 89 end desc,
case when city_name='晋中'then 90 end desc,
case when city_name='运城'then 91 end desc,
case when city_name='忻州'then 92 end desc,
case when city_name='临汾'then 93 end desc,
case when city_name='吕梁'then 94 end desc,
case when city_name='石家庄'then 95 end desc,
case when city_name='唐山'then 96 end desc,
case when city_name='秦皇岛'then 97 end desc,
case when city_name='邯郸'then 98 end desc,
case when city_name='邢台'then 99 end desc,
case when city_name='保定'then 100 end desc,
case when city_name='张家口'then 101 end desc,
case when city_name='承德'then 102 end desc,
case when city_name='沧州'then 103 end desc,
case when city_name='廊坊'then 104 end desc,
case when city_name='衡水'then 105 end desc,
case when city_name='武汉'then 106 end desc,
case when city_name='黄石'then 107 end desc,
case when city_name='十堰'then 108 end desc,
case when city_name='宜昌'then 109 end desc,
case when city_name='襄樊'then 110 end desc,
case when city_name='鄂州'then 111 end desc,
case when city_name='荆门'then 112 end desc,
case when city_name='孝感'then 113 end desc,
case when city_name='荆州'then 114 end desc,
case when city_name='黄冈'then 115 end desc,
case when city_name='咸宁'then 116 end desc,
case when city_name='随州'then 117 end desc,
case when city_name='恩施土家族苗族自治州'then 118 end desc,
case when city_name='沈阳'then 119 end desc,
case when city_name='大连'then 120 end desc,
case when city_name='鞍山'then 121 end desc,
case when city_name='抚顺'then 122 end desc,
case when city_name='本溪'then 123 end desc,
case when city_name='丹东'then 124 end desc,
case when city_name='锦州'then 125 end desc,
case when city_name='营口'then 126 end desc,
case when city_name='阜新'then 127 end desc,
case when city_name='辽阳'then 128 end desc,
case when city_name='盘锦'then 129 end desc,
case when city_name='铁岭'then 130 end desc,
case when city_name='朝阳'then 131 end desc,
case when city_name='葫芦岛'then 132 end desc,
case when city_name='成都'then 133 end desc,
case when city_name='自贡'then 134 end desc,
case when city_name='攀枝花'then 135 end desc,
case when city_name='泸州'then 136 end desc,
case when city_name='德阳'then 137 end desc,
case when city_name='绵阳'then 138 end desc,
case when city_name='广元'then 139 end desc,
case when city_name='遂宁'then 140 end desc,
case when city_name='内江'then 141 end desc,
case when city_name='乐山'then 142 end desc,
case when city_name='南充'then 143 end desc,
case when city_name='眉山'then 144 end desc,
case when city_name='宜宾'then 145 end desc,
case when city_name='广安'then 146 end desc,
case when city_name='达州'then 147 end desc,
case when city_name='雅安'then 148 end desc,
case when city_name='巴中'then 149 end desc,
case when city_name='资阳'then 150 end desc,
case when city_name='阿坝藏族羌族自治州'then 151 end desc,
case when city_name='甘孜藏族自治州'then 152 end desc,
case when city_name='凉山彝族自治州'then 153 end desc,
case when city_name='福州'then 154 end desc,
case when city_name='厦门'then 155 end desc,
case when city_name='莆田'then 156 end desc,
case when city_name='三明'then 157 end desc,
case when city_name='泉州'then 158 end desc,
case when city_name='漳州'then 159 end desc,
case when city_name='南平'then 160 end desc,
case when city_name='龙岩'then 161 end desc,
case when city_name='宁德'then 162 end desc,
case when city_name='西安'then 163 end desc,
case when city_name='铜川'then 164 end desc,
case when city_name='宝鸡'then 165 end desc,
case when city_name='咸阳'then 166 end desc,
case when city_name='渭南'then 167 end desc,
case when city_name='延安'then 168 end desc,
case when city_name='汉中'then 169 end desc,
case when city_name='榆林'then 170 end desc,
case when city_name='安康'then 171 end desc,
case when city_name='商洛'then 172 end desc,
case when city_name='兰州'then 173 end desc,
case when city_name='嘉峪关'then 174 end desc,
case when city_name='金昌'then 175 end desc,
case when city_name='白银'then 176 end desc,
case when city_name='天水'then 177 end desc,
case when city_name='武威'then 178 end desc,
case when city_name='张掖'then 179 end desc,
case when city_name='平凉'then 180 end desc,
case when city_name='酒泉'then 181 end desc,
case when city_name='庆阳'then 182 end desc,
case when city_name='定西'then 183 end desc,
case when city_name='陇南'then 184 end desc,
case when city_name='临夏回族自治州'then 185 end desc,
case when city_name='甘南藏族自治州'then 186 end desc,
case when city_name='合肥'then 187 end desc,
case when city_name='芜湖'then 188 end desc,
case when city_name='蚌埠'then 189 end desc,
case when city_name='淮南'then 190 end desc,
case when city_name='马鞍山'then 191 end desc,
case when city_name='淮北'then 192 end desc,
case when city_name='铜陵'then 193 end desc,
case when city_name='安庆'then 194 end desc,
case when city_name='黄山'then 195 end desc,
case when city_name='滁州'then 196 end desc,
case when city_name='阜阳'then 197 end desc,
case when city_name='宿州'then 198 end desc,
case when city_name='巢湖'then 199 end desc,
case when city_name='六安'then 200 end desc,
case when city_name='亳州'then 201 end desc,
case when city_name='池州'then 202 end desc,
case when city_name='宣城'then 203 end desc,
case when city_name='长沙'then 204 end desc,
case when city_name='株洲'then 205 end desc,
case when city_name='湘潭'then 206 end desc,
case when city_name='衡阳'then 207 end desc,
case when city_name='邵阳'then 208 end desc,
case when city_name='岳阳'then 209 end desc,
case when city_name='常德'then 210 end desc,
case when city_name='张家界'then 211 end desc,
case when city_name='益阳'then 212 end desc,
case when city_name='郴州'then 213 end desc,
case when city_name='永州'then 214 end desc,
case when city_name='怀化'then 215 end desc,
case when city_name='娄底'then 216 end desc,
case when city_name='湘西土家族苗族自治州'then 217 end desc,
case when city_name='重庆'then 218 end desc,
case when city_name='长春'then 219 end desc,
case when city_name='吉林'then 220 end desc,
case when city_name='四平'then 221 end desc,
case when city_name='辽源'then 222 end desc,
case when city_name='通化'then 223 end desc,
case when city_name='白山'then 224 end desc,
case when city_name='松原'then 225 end desc,
case when city_name='白城'then 226 end desc,
case when city_name='延边朝鲜族自治州'then 227 end desc,
case when city_name='哈尔滨'then 228 end desc,
case when city_name='齐齐哈尔'then 229 end desc,
case when city_name='鸡西'then 230 end desc,
case when city_name='鹤岗'then 231 end desc,
case when city_name='双鸭山'then 232 end desc,
case when city_name='大庆'then 233 end desc,
case when city_name='伊春'then 234 end desc,
case when city_name='佳木斯'then 235 end desc,
case when city_name='七台河'then 236 end desc,
case when city_name='牡丹江'then 237 end desc,
case when city_name='黑河'then 238 end desc,
case when city_name='绥化'then 239 end desc,
case when city_name='大兴安岭地区'then 240 end desc,
case when city_name='南昌'then 241 end desc,
case when city_name='景德镇'then 242 end desc,
case when city_name='萍乡'then 243 end desc,
case when city_name='九江'then 244 end desc,
case when city_name='新余'then 245 end desc,
case when city_name='鹰潭'then 246 end desc,
case when city_name='赣州'then 247 end desc,
case when city_name='吉安'then 248 end desc,
case when city_name='宜春'then 249 end desc,
case when city_name='抚州'then 250 end desc,
case when city_name='上饶'then 251 end desc,
case when city_name='贵阳'then 252 end desc,
case when city_name='六盘水'then 253 end desc,
case when city_name='遵义'then 254 end desc,
case when city_name='安顺'then 255 end desc,
case when city_name='铜仁地区'then 256 end desc,
case when city_name='黔西南布依族苗族自治州'then 257 end desc,
case when city_name='毕节地区'then 258 end desc,
case when city_name='黔东南苗族侗族自治州'then 259 end desc,
case when city_name='黔南布依族苗族自治州'then 260 end desc,
case when city_name='昆明'then 261 end desc,
case when city_name='曲靖'then 262 end desc,
case when city_name='玉溪'then 263 end desc,
case when city_name='保山'then 264 end desc,
case when city_name='昭通'then 265 end desc,
case when city_name='丽江'then 266 end desc,
case when city_name='普洱'then 267 end desc,
case when city_name='临沧'then 268 end desc,
case when city_name='楚雄彝族自治州'then 269 end desc,
case when city_name='红河哈尼族彝族自治州'then 270 end desc,
case when city_name='文山壮族苗族自治州'then 271 end desc,
case when city_name='西双版纳傣族自治州'then 272 end desc,
case when city_name='大理白族自治州'then 273 end desc,
case when city_name='德宏傣族景颇族自治州'then 274 end desc,
case when city_name='怒江傈僳族自治州'then 275 end desc,
case when city_name='迪庆藏族自治州'then 276 end desc,
case when city_name='南宁'then 277 end desc,
case when city_name='柳州'then 278 end desc,
case when city_name='桂林'then 279 end desc,
case when city_name='梧州'then 280 end desc,
case when city_name='北海'then 281 end desc,
case when city_name='防城港'then 282 end desc,
case when city_name='钦州'then 283 end desc,
case when city_name='贵港'then 284 end desc,
case when city_name='玉林'then 285 end desc,
case when city_name='百色'then 286 end desc,
case when city_name='贺州'then 287 end desc,
case when city_name='河池'then 288 end desc,
case when city_name='来宾'then 289 end desc,
case when city_name='崇左'then 290 end desc,
case when city_name='海口'then 291 end desc,
case when city_name='三亚'then 292 end desc,
case when city_name='三沙'then 293 end desc,
case when city_name='拉萨'then 294 end desc,
case when city_name='昌都地区'then 295 end desc,
case when city_name='山南'then 296 end desc,
case when city_name='日喀则地区'then 297 end desc,
case when city_name='那曲地区'then 298 end desc,
case when city_name='阿里'then 299 end desc,
case when city_name='林芝地区'then 300 end desc,
case when city_name='西宁'then 301 end desc,
case when city_name='海东地区'then 302 end desc,
case when city_name='海北藏族自治州'then 303 end desc,
case when city_name='黄南藏族自治州'then 304 end desc,
case when city_name='海南藏族自治州'then 305 end desc,
case when city_name='果洛藏族自治州'then 306 end desc,
case when city_name='玉树藏族自治州'then 307 end desc,
case when city_name='海西蒙古族藏族自治州'then 308 end desc,
case when city_name='银川'then 309 end desc,
case when city_name='石嘴山'then 310 end desc,
case when city_name='吴忠'then 311 end desc,
case when city_name='固原'then 312 end desc,
case when city_name='中卫'then 313 end desc,
case when city_name='乌鲁木齐'then 314 end desc,
case when city_name='克拉玛依'then 315 end desc,
case when city_name='吐鲁番地区'then 316 end desc,
case when city_name='哈密地区'then 317 end desc,
case when city_name='昌吉回族自治州'then 318 end desc,
case when city_name='博尔塔拉'then 319 end desc,
case when city_name='巴音郭楞蒙古自治州'then 320 end desc,
case when city_name='阿克苏地区'then 321 end desc,
case when city_name='克孜勒苏柯尔克孜'then 322 end desc,
case when city_name='喀什地区'then 323 end desc,
case when city_name='和田地区'then 324 end desc,
case when city_name='伊犁哈萨克自治州'then 325 end desc,
case when city_name='塔城'then 326 end desc,
case when city_name='阿勒泰'then 327 end desc,
case when city_name='呼和浩特'then 328 end desc,
case when city_name='包头'then 329 end desc,
case when city_name='乌海'then 330 end desc,
case when city_name='赤峰'then 331 end desc,
case when city_name='通辽'then 332 end desc,
case when city_name='鄂尔多斯'then 333 end desc,
case when city_name='呼伦贝尔'then 334 end desc,
case when city_name='巴彦淖尔'then 335 end desc,
case when city_name='乌兰察布'then 336 end desc,
case when city_name='兴安盟'then 337 end desc,
case when city_name='锡林郭勒盟'then 338 end desc,
case when city_name='阿拉善盟'then 339 end desc,
case when city_name='香港'then 340 end desc,
case when city_name='澳门'then 341 end desc,
case when city_name='台湾'then 342 end desc
