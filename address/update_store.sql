select  *  from  t_city_store
where city_id in (
109,
110,
101,
115,
116,
118,
119,
120,
121,
125,
126,
127,
128,
129,
131,
71,
74,
79,
81,
82,
83,
84,
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
253,
254,
255,
256,
257,
258,
259,
260,
261,
262,
263,
264,
265,
266,
350,
351,
352,
353,
354,
355,
356,
357,
358,
359,
360,
361,
362
);
/**
*/
##南通
update t_city_store set store_id ='046'
where city_id in (
109,
110,
111,
115,
116,
118,
119,
120,
121
);

##杭州
update t_city_store set store_id ='027'
where city_id in (
125,
126,
127
);

##宁波
update t_city_store set store_id ='051'
where city_id in (
128,
129
);

##温州
update t_city_store set store_id ='037'
where city_id  in (
131
);

##大连
update t_city_store set store_id ='013'
where city_id  in (
71,
74,
79,
81,
82,
83,
84
);

##西安
update t_city_store set store_id ='014'
where city_id in (
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
349
);

##广州
update t_city_store set store_id ='038'
where city_id in (
253,
254,
255,
256,
257,
258,
259,
260,
261,
262,
263,
264,
265,
266
);

##西安
update t_city_store set store_id ='014'
where city_id in (
350,
351,
352,
353,
354,
355,
356,
357
);

##乌鲁木齐
update t_city_store set store_id ='022'
where city_id  in (
358,
359,
360,
361,
362
)

