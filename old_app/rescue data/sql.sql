#users
insert into users SET id=1, type='0', username='asmith', password='smithers', first_name='Aaron', last_name='Smith', email='bexemplary@gmail.com', phone='234234234', notify='1', created_on=NOW(), updated_on=NOW()
insert into users SET id=2, type='0', username='samdavidson', password='smithers', first_name='Sam', last_name='Davidson', email='beingffthexemplary@gmail.com', phone='234234234', notify='0', created_on=NOW(), updated_on=NOW()
insert into users SET id=3, type='0', username='adamson', password='smithers', first_name='Adam', last_name='Son', email='beingthdsdfexemplary@gmail.com', phone='234234234', notify='0', created_on=NOW(), updated_on=NOW()

#bugs
insert into bugs SET id=1, user_id=1, project_id=1, logger_user_id=2, title='rubyamf webrorking correctly', description='same as title', level=0, status=0, feedback=0, created_on=NOW(), updated_on=NOW();
insert into bugs SET id=2, user_id=1, project_id=2, logger_user_id=2, title='rubyamf webrick sert working correctly', description='same as title', level=0, status=0, feedback=0, created_on=NOW(), updated_on=NOW();
insert into bugs SET id=3, user_id=2, project_id=2, logger_user_id=3, title='rubyamf webrick servlet not workin', description='same as title', level=0, status=0, feedback=0, created_on=NOW(), updated_on=NOW();
insert into bugs SET id=4, user_id=2, project_id=1, logger_user_id=3, title='rubrick servlet not working correctly', description='same as title', level=0, status=0, feedback=0, created_on=NOW(), updated_on=NOW();
insert into bugs SET id=5, user_id=1, project_id=1, logger_user_id=3, title='rubyam servlet notking correctly', description='same as title', level=0, status=0, feedback=0, created_on=NOW(), updated_on=NOW();

#projects
insert into projects SET id=1, project_name='rubyamf', company='adakasoft', created_on=NOW();
insert into projects SET id=2, project_name='manlaws', company='adakasoft', created_on=NOW();