SET NAMES latin1;
SET FOREIGN_KEY_CHECKS = 0;

CREATE TABLE `projects_users` (
  `user_id` int(20) NOT NULL,
  `project_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

insert into `projects_users` values('1','1'),
 ('1','2');

SET FOREIGN_KEY_CHECKS = 1;
