CREATE TABLE `bugs` (
  `id` int(20) NOT NULL auto_increment,
  `user_id` int(20) NOT NULL,
  `project_id` int(20) NOT NULL,
  `title` varchar(500) NOT NULL default '',
  `description` text NOT NULL,
  `level` int(1) NOT NULL,
  `status` int(1) NOT NULL,
  `feedback` int(1) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `companies` (
  `id` int(20) NOT NULL auto_increment,
  `name` varchar(64) NOT NULL default '',
  `created_on` datetime NOT NULL,
  `updated_on` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

CREATE TABLE `projects` (
  `id` int(20) NOT NULL auto_increment,
  `company_id` int(20) NOT NULL,
  `name` varchar(32) NOT NULL default '',
  `created_on` datetime NOT NULL,
  `udpated_on` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `projects_users` (
  `user_id` int(20) NOT NULL,
  `project_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `settings` (
  `open_reg` int(1) NOT NULL,
  `rpc_entry_get` int(1) NOT NULL,
  `rpc_entry_post` int(1) NOT NULL,
  `import_basecamp` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
  `id` int(20) NOT NULL auto_increment,
  `company_id` int(20) NOT NULL,
  `user_type` int(1) default NULL,
  `user_name` varchar(64) default '',
  `first_name` varchar(128) default '',
  `last_name` varchar(128) default '',
  `email` varchar(128) default '',
  `phone` varchar(20) default '',
  `password` varchar(1024) default '',
  `should_notify` int(1) default NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

