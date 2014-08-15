CREATE TABLE emplog (
  logno bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  logdt timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  message varchar(64) DEFAULT NULL,
  UNIQUE KEY logno (logno)
)
