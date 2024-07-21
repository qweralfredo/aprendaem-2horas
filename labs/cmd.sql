CREATE TABLE integers AS SELECT * FROM range(0, 100, 1) t1(i);


loop i 0 100


SELECT count(*) FROM integers WHERE i = ${i};



endloop
