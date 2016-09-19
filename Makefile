build:
	docker build -t bamboobsc .
mysql:
	 docker run -d -p 3306:3306 --name mysql -e MYSQL_ROOT_PASSWORD=password -e MYSQL_DATABASE=bbcore  mysql:5.6 --lower-case-table-names
run:
	docker run -ti -p 8080:8080 --rm bamboobsc /bin/bash
