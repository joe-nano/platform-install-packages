USE kalturadw;

DROP TABLE IF EXISTS dwh_fact_errors_archive;

CREATE TABLE dwh_fact_errors_archive (
	file_id INT(11) NOT NULL,
	line_number INT(11) NOT NULL,
	partner_id INT(11) NOT NULL,
	error_time datetime NOT NULL,
	error_date_id int NOT NULL,
	error_hour_id int NOT NULL,
	error_object_id VARCHAR(50) NOT NULL,
	error_object_type_id INT(11) NOT NULL,
	error_code_id INT(11) NOT NULL,
	description mediumtext DEFAULT NULL) ENGINE=ARCHIVE DEFAULT CHARSET = latin1
	/*!50100 PARTITION BY RANGE (error_date_id)
	(PARTITION p_0 VALUES LESS THAN (1))*/;
