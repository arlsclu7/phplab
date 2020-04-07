select  *  from  t_city_achiev_city
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
update t_city_achiev_city set achiev_city_id =114, achiev_city_name ='南通'
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

update t_city_achiev_city set achiev_city_id =122, achiev_city_name ='杭州'
where city_id in (
125,
126,
127
);

update t_city_achiev_city set achiev_city_id =123, achiev_city_name ='宁波'
where city_id in (
128,
129
);

update t_city_achiev_city set achiev_city_id =124, achiev_city_name ='温州'
where city_id  in (
131
);
##大连
update t_city_achiev_city set achiev_city_id =72, achiev_city_name ='大连'
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
update t_city_achiev_city set achiev_city_id =326, achiev_city_name ='西安'
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
update t_city_achiev_city set achiev_city_id =232, achiev_city_name ='广州'
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
update t_city_achiev_city set achiev_city_id =326, achiev_city_name ='西安'
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
update t_city_achiev_city set achiev_city_id =363, achiev_city_name ='乌鲁木齐'
where city_id  in (
358,
359,
360,
361,
362
)

