--
-- File generated with SQLiteStudio v3.4.4 on Sun Aug 6 07:48:21 2023
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: auth_group
CREATE TABLE IF NOT EXISTS "auth_group" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "name" varchar(150) NOT NULL UNIQUE);
INSERT INTO auth_group (id, name) VALUES (1, 'Employee');
INSERT INTO auth_group (id, name) VALUES (2, 'Hunter');

-- Table: auth_group_permissions
CREATE TABLE IF NOT EXISTS "auth_group_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (1, 1, 33);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (2, 1, 34);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (3, 1, 35);
INSERT INTO auth_group_permissions (id, group_id, permission_id) VALUES (4, 1, 36);

-- Table: auth_permission
CREATE TABLE IF NOT EXISTS "auth_permission" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "content_type_id" integer NOT NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "codename" varchar(100) NOT NULL, "name" varchar(255) NOT NULL);
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (1, 1, 'add_logentry', 'Can add log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (2, 1, 'change_logentry', 'Can change log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (3, 1, 'delete_logentry', 'Can delete log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (4, 1, 'view_logentry', 'Can view log entry');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (5, 2, 'add_permission', 'Can add permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (6, 2, 'change_permission', 'Can change permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (7, 2, 'delete_permission', 'Can delete permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (8, 2, 'view_permission', 'Can view permission');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (9, 3, 'add_group', 'Can add group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (10, 3, 'change_group', 'Can change group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (11, 3, 'delete_group', 'Can delete group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (12, 3, 'view_group', 'Can view group');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (13, 4, 'add_user', 'Can add user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (14, 4, 'change_user', 'Can change user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (15, 4, 'delete_user', 'Can delete user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (16, 4, 'view_user', 'Can view user');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (17, 5, 'add_contenttype', 'Can add content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (18, 5, 'change_contenttype', 'Can change content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (19, 5, 'delete_contenttype', 'Can delete content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (20, 5, 'view_contenttype', 'Can view content type');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (21, 6, 'add_session', 'Can add session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (22, 6, 'change_session', 'Can change session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (23, 6, 'delete_session', 'Can delete session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (24, 6, 'view_session', 'Can view session');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (25, 7, 'add_departments', 'Can add departments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (26, 7, 'change_departments', 'Can change departments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (27, 7, 'delete_departments', 'Can delete departments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (28, 7, 'view_departments', 'Can view departments');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (29, 8, 'add_employees', 'Can add employees');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (30, 8, 'change_employees', 'Can change employees');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (31, 8, 'delete_employees', 'Can delete employees');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (32, 8, 'view_employees', 'Can view employees');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (33, 9, 'add_current_jobs', 'Can add current_jobs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (34, 9, 'change_current_jobs', 'Can change current_jobs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (35, 9, 'delete_current_jobs', 'Can delete current_jobs');
INSERT INTO auth_permission (id, content_type_id, codename, name) VALUES (36, 9, 'view_current_jobs', 'Can view current_jobs');

-- Table: auth_user
CREATE TABLE IF NOT EXISTS "auth_user" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "password" varchar(128) NOT NULL, "last_login" datetime NULL, "is_superuser" bool NOT NULL, "username" varchar(150) NOT NULL UNIQUE, "last_name" varchar(150) NOT NULL, "email" varchar(254) NOT NULL, "is_staff" bool NOT NULL, "is_active" bool NOT NULL, "date_joined" datetime NOT NULL, "first_name" varchar(150) NOT NULL);
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (1, 'pbkdf2_sha256$260000$AAgNgznOpVMrKIDbG9hlO5$TFzXJlnX4Z6gICHqFmIOKV9XGyEtdIrtmPoIM63gt2w=', '2023-07-29 04:57:03.113120', 1, 'Admin', '', 'reddisantosh19@gmail.com', 1, 1, '2023-07-15 01:22:21.540404', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (2, 'pandu123', '2023-07-26 18:34:14', 0, 'Santosh', '', 'reddisantosh19@gmail.com', 0, 1, '2023-07-15 01:43:55', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (3, 'pbkdf2_sha256$260000$t0DfqjJMDBElOdEqTLTKYT$F4Nrx2gNX4fACVv5CAcf5ObIhcMS+pSQ5tLdooad19s=', '2023-07-29 04:27:11.342000', 0, 'Ram', '', '', 0, 1, '2023-07-16 09:15:29', '');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (33, 'password', NULL, 0, 'Apporva', ' ', 'santusanty70@gmail.com', 0, 1, '2023-07-29 04:59:24.905344', ' ');
INSERT INTO auth_user (id, password, last_login, is_superuser, username, last_name, email, is_staff, is_active, date_joined, first_name) VALUES (34, 'PANDU123', NULL, 0, 'Ram123', ' ', 'santu.santy.7@gmail.com', 0, 1, '2023-08-05 06:24:30.448599', ' ');

-- Table: auth_user_groups
CREATE TABLE IF NOT EXISTS "auth_user_groups" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "group_id" integer NOT NULL REFERENCES "auth_group" ("id") DEFERRABLE INITIALLY DEFERRED);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (7, 3, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (10, 2, 2);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (12, 33, 1);
INSERT INTO auth_user_groups (id, user_id, group_id) VALUES (13, 34, 1);

-- Table: auth_user_user_permissions
CREATE TABLE IF NOT EXISTS "auth_user_user_permissions" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "permission_id" integer NOT NULL REFERENCES "auth_permission" ("id") DEFERRABLE INITIALLY DEFERRED);

-- Table: django_admin_log
CREATE TABLE IF NOT EXISTS "django_admin_log" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "object_id" text NULL, "object_repr" varchar(200) NOT NULL, "action_flag" smallint unsigned NOT NULL CHECK ("action_flag" >= 0), "change_message" text NOT NULL, "content_type_id" integer NULL REFERENCES "django_content_type" ("id") DEFERRABLE INITIALLY DEFERRED, "user_id" integer NOT NULL REFERENCES "auth_user" ("id") DEFERRABLE INITIALLY DEFERRED, "action_time" datetime NOT NULL);
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (1, '2', 'Santosh', 1, '[{"added": {}}]', 4, 1, '2023-07-15 01:43:55.361666');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (2, '1', 'Employee', 1, '[{"added": {}}]', 3, 1, '2023-07-15 01:45:09.066361');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (3, '1', 'Employee', 2, '[]', 3, 1, '2023-07-15 01:57:33.107092');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (4, '2', 'Santosh', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1, '2023-07-15 02:01:26.763027');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (5, '2', 'Hunter', 1, '[{"added": {}}]', 3, 1, '2023-07-16 06:57:15.505605');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (6, '3', 'Ram', 1, '[{"added": {}}]', 4, 1, '2023-07-16 09:15:29.601703');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (7, '3', 'Ram', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1, '2023-07-16 09:18:30.532334');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (8, '2', 'Santosh', 2, '[{"changed": {"fields": ["password"]}}]', 4, 1, '2023-07-16 10:24:04.282205');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (9, '4', 'lalla', 2, '[{"changed": {"fields": ["First name", "Last name", "Groups"]}}]', 4, 1, '2023-07-25 16:36:34.785675');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (10, '4', 'lalla', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1, '2023-07-26 18:12:00.297311');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (11, '3', 'Ram', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1, '2023-07-26 19:11:44.434509');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (12, '27', 'Santu222', 2, '[{"changed": {"fields": ["First name", "Last name", "Groups"]}}]', 4, 1, '2023-07-29 04:39:12.826539');
INSERT INTO django_admin_log (id, object_id, object_repr, action_flag, change_message, content_type_id, user_id, action_time) VALUES (13, '2', 'Santosh', 2, '[{"changed": {"fields": ["Groups"]}}]', 4, 1, '2023-07-29 04:54:47.995340');

-- Table: django_content_type
CREATE TABLE IF NOT EXISTS "django_content_type" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app_label" varchar(100) NOT NULL, "model" varchar(100) NOT NULL);
INSERT INTO django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO django_content_type (id, app_label, model) VALUES (7, 'EmployeeApp', 'departments');
INSERT INTO django_content_type (id, app_label, model) VALUES (8, 'EmployeeApp', 'employees');
INSERT INTO django_content_type (id, app_label, model) VALUES (9, 'EmployeeApp', 'current_jobs');

-- Table: django_migrations
CREATE TABLE IF NOT EXISTS "django_migrations" ("id" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "app" varchar(255) NOT NULL, "name" varchar(255) NOT NULL, "applied" datetime NOT NULL);
INSERT INTO django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2023-06-13 00:48:40.230638');
INSERT INTO django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2023-06-13 00:48:40.236193');
INSERT INTO django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2023-06-13 00:48:40.239499');
INSERT INTO django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2023-06-13 00:48:40.242890');
INSERT INTO django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2023-06-13 00:48:40.245155');
INSERT INTO django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2023-06-13 00:48:40.253679');
INSERT INTO django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2023-06-13 00:48:40.257301');
INSERT INTO django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2023-06-13 00:48:40.260650');
INSERT INTO django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2023-06-13 00:48:40.262936');
INSERT INTO django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2023-06-13 00:48:40.266530');
INSERT INTO django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2023-06-13 00:48:40.267234');
INSERT INTO django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2023-06-13 00:48:40.269609');
INSERT INTO django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2023-06-13 00:48:40.273409');
INSERT INTO django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2023-06-13 00:48:40.277037');
INSERT INTO django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2023-06-13 00:48:40.281237');
INSERT INTO django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2023-06-13 00:48:40.283869');
INSERT INTO django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2023-06-13 00:48:40.287533');
INSERT INTO django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2023-06-13 00:48:40.288810');
INSERT INTO django_migrations (id, app, name, applied) VALUES (19, 'EmployeeApp', '0001_initial', '2023-06-13 01:20:58.219392');
INSERT INTO django_migrations (id, app, name, applied) VALUES (20, 'EmployeeApp', '0002_current_jobs', '2023-07-13 01:59:49.549710');
INSERT INTO django_migrations (id, app, name, applied) VALUES (21, 'EmployeeApp', '0003_alter_current_jobs_date_posted', '2023-07-13 03:34:13.821695');
INSERT INTO django_migrations (id, app, name, applied) VALUES (22, 'EmployeeApp', '0004_current_jobs_user_id', '2023-07-29 05:27:54.841811');
INSERT INTO django_migrations (id, app, name, applied) VALUES (23, 'EmployeeApp', '0005_remove_current_jobs_user_id', '2023-07-29 05:43:25.746284');

-- Table: django_session
CREATE TABLE IF NOT EXISTS "django_session" ("session_key" varchar(40) NOT NULL PRIMARY KEY, "session_data" text NOT NULL, "expire_date" datetime NOT NULL);
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('734yz236cvh9r5hp3qfqm2dbkwgf7f19', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qKUal:KINNQL_I3rm-G9MokV_E20damlGeDa_ZaNy7HEsGjGE', '2023-07-29 02:01:03.054707');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('548gw7rkvpyogh17k813kkcp0bpvxyfz', 'e30:1qKxR1:Oc3ingvQiw_d_zp5-Aqm_Auqkqi_Wy6jjCItRxnMC1w', '2023-07-30 08:48:55.131463');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('qtczdhojzu03xb0mo629l7xrfxf58bne', 'e30:1qKxRe:tAnELLs4RaY-U2DbB7dcBBOBcgEWqxAvolMhW51Mt6k', '2023-07-30 08:49:34.496481');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('zfuwnt8dv4llvsfyf2pux9cx9yr7vxf3', 'e30:1qKxSF:jMH9ttkl99Q89OHrGZWjbomdPhJfmvRzDmy9rgrvbIU', '2023-07-30 08:50:11.087900');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('oihf2ywgmtinrq34dsc2nmd6eonuza07', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qKxhC:MRu0hiiA3YcgaGMuLZkpDv6lMrnmi5nyfMZ7yW7McGo', '2023-07-30 09:05:38.267740');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('c5ijsl7o26715g64z7kmcaok5dtuudzi', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qKxhb:isO-VYf16buxuENGHTePygiO-LvaixrULChK4PdVMrs', '2023-07-30 09:06:03.475618');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('gz48c9bzsk6cymg4tecff06mpjnemc9q', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qKxlT:8gYiDB5X2HSfWMlZu76ML0HDZisGav46Iu2Bzhzjhes', '2023-07-30 09:10:03.206045');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('v15ue04a2g5dfbbc2qoaichzu9qzxu8m', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qKxwB:Cxg46KPxqsiDmawGc754vNleuLRSJAq-PcPjyg7UDxg', '2023-07-30 09:21:07.483232');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('olpvjg7z1iaaifeyled2nlzqx9yhoza3', 'e30:1qKxx4:BkV-VkXIu7r6VVd922Xq8E3uqIKJHC0VbCLI1pNrtek', '2023-07-30 09:22:02.079272');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('j8h7xqfycf3mm7g9h5ksim3x4mrtwg7w', 'e30:1qKy1U:Te61cbqcvNzAS9n-Im1KEZ9heRYxoHvvE2ba6S6VNhw', '2023-07-30 09:26:36.955330');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('5n1sny9rqp7lbg4tjyabcwxorbfyv9pw', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qKy1k:hS6T3mOpEA0W8qXy18MFQgxqGp25YDkB-m4wUphql4M', '2023-07-30 09:26:52.593084');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('be7um4tk7thie8h7dnn9l4m51e9rn3z1', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qKyAQ:fx-vkjZmKnRg7yUlfpeFZnlgYQX0GNJf_sARgiN2WLY', '2023-07-30 09:35:50.546927');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('38fne2i3dhovfxi8cnk476at8zappo1z', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qKyAv:SAl_BOaELkNTYGhinEPRb3cTmHhLhrzQ4S7x07HNFXs', '2023-07-30 09:36:21.350515');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('hzefmu8zgo7hlbq4ojut2layzxgxme35', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qKyDo:w_JrIkzVT0Hm53V3Ua-Ocsso5Y3W-S90qagFy09Vs8E', '2023-07-30 09:39:20.019965');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('b7ou93psp5v9mtvvlalep1l7rszxevo0', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qKyEn:PJ6jZw7RVAuGkoMrUQUpSKuJ8oOydOm-47GKyqOFEvo', '2023-07-30 09:40:21.235749');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('x52bj8j0i4fidw9vjcdcsq8a5shn4ulb', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qKyIS:kwH_wOSLhSoC_gEYs5e4xeecwEl7OMB7EjUtljLS0BY', '2023-07-30 09:44:08.684965');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ow0erszxbwp7wtzin0yim3jkpppcudjg', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKyJo:zxLYU4wlcQqK7JtSnQHm_NElyvBJjMcM5aK1M142uXk', '2023-07-30 09:45:32.521601');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('u8p8dnefao7dqkc9utrx6k6tr93vudxs', 'e30:1qKyKI:p5fskprx_xsGWexXYl0lkQF8UCeg9DC9YAqo1kVTHzM', '2023-07-30 09:46:02.702512');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('x3ooou3kz0qtww9wsgef4hdhjz9unu0u', 'e30:1qKyKW:jI7xdqjpC6nOREdCGFIiimRuuAuUTOQgWMLcsHVSrFc', '2023-07-30 09:46:16.931513');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('mx9zm2e3tjtfheo3uo57vhq2b1pzg88c', 'e30:1qKyNJ:5Pb4KVU4vieuVftaHWKHYm6CYs7djPN5Rxd5kWryxck', '2023-07-30 09:49:09.284857');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('2ich6ktawg0rxaqhkanmxrqkmswqnxlv', 'e30:1qKyNz:0e5rl3QylRZRuz7b_5AeKOjZWXyFJGo-jAUKDvnuoKU', '2023-07-30 09:49:51.434055');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('26yc3khvtcer0i8h2k9o6gr387uhj1le', 'e30:1qKyQu:vj_WOSupjada7_tOQcgrYRkDMwar0i-UhjCcnxrP1mM', '2023-07-30 09:52:52.231985');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('l6l4urzghw6h15exi4s6eah4fqte8h8n', 'e30:1qKyR7:n_F4sHn3NlQCGOMw_AZYuRZt0GaXSTgwewosiq8HfA0', '2023-07-30 09:53:05.728154');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('01x44naghyyi215svmgrjko0zi28a4qd', 'e30:1qKyT7:wRtZ_UgDr7YsdHwbbp0C_2o4-HvjxOz-VZOOQjDXQIk', '2023-07-30 09:55:09.561582');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('rjt6v68vf0z899gt0wgqm4wmt35gbd90', 'e30:1qKyWX:rHyvm0ro_y-Z4thndx3xrGcWArXKryDBQTRkulhvgDI', '2023-07-30 09:58:41.520149');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('8yc7t9xe7e2mn9741z0utwf7lhyyzhn6', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKyYb:rRNwMPYBZKcl43lrfEg4eZhIPqawFOwTG_Y0149j9Ho', '2023-07-30 10:00:49.129522');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('c1dis7ip3y5eq9ffbzmviffio69btzm7', 'e30:1qKyaM:mS_IC0LmDczNr-DS4syk1AnOZ0CPZ8YVIYnyyHou1oc', '2023-07-30 10:02:38.944668');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('erpwrpgh5x1dhv9jvgrsdgw209jbsbw1', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKyaf:26OEqAa8vMqT1njSbVUjsksBA5dc01J8BOkX3YRbSxQ', '2023-07-30 10:02:57.566414');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('q9m4hjq2z3sog2isxpd7e8mcijlo7trn', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKybR:japEkYZ2XRO70b1Q8M2FG-nRqviJ3vqHHtApRqag7i8', '2023-07-30 10:03:45.345332');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('jqh1ffkm444qfq3by73wkedikudom0zp', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKyce:0PnsE2i6T1MXM8Eu690Ugnqcj19pg-ci45Rtq9LyMME', '2023-07-30 10:05:00.410095');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('qdzh3xh7gdl9yncqk8urcp9t95gryyae', 'e30:1qKydo:zwtdgor-znP423ALZN6ufoJYAhLB9nWdK0RxhzrHOB0', '2023-07-30 10:06:12.404491');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('b1oql20sfnftmqyuxd5kgv1evwj8phvt', 'e30:1qKyeL:QRl_iX2BUgTb4KrlzVKKmc0tpIfz6wpMXJ4o7ROg0eA', '2023-07-30 10:06:45.739306');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('tgmmejl9w2otl78hr0qi45zm0e7oikb7', 'e30:1qKygk:1wvOlbC8CK95n_xipOu5WfCsZq5-XZwYXctzcvudAdw', '2023-07-30 10:09:14.036582');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('5lprv48vv10rj8ofr2pf3xjx0f63qveo', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKyiR:8AtLEbjOhOLQpOdLeproPVK5jVhyD3t9cQFUXcQ1goY', '2023-07-30 10:10:59.765341');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('low06u7gcn3weag99sg3f2g2ortkt0h0', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKyiy:ruzDNsDQjKc2--5oERMXhCXiKkLp9AdpH_BtM6HRSCE', '2023-07-30 10:11:32.319273');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('dwzaeet2769svib3e3sl7qjifc0e9ido', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKylt:4sgJDZpQX_IMttZSNmhpVXhyoAoSdh6uHBqjyc9uQJ4', '2023-07-30 10:14:33.222750');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('1apojx5eh8qfbjf4bvd28e3r4j99cgt6', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKynf:7LGIf9YSXyVuBy8cr2x0MCluhpiqoZuqBM8BFdcP1U8', '2023-07-30 10:16:23.212996');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ocxqfigox5i2dzjt3drw9sl2wwdtry8q', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKypg:-E8tGwJKQZqbyo-zX9Q556w_7KE4RKNpu_k8gX200pM', '2023-07-30 10:18:28.155545');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('so2b3f949xj8lz6wjbfaedryyqdj6gay', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKyrJ:drZbrotiJAO9sNFwMzYbIrB3qW9PeuPl9w50cTRBejU', '2023-07-30 10:20:09.318120');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('0kb7jr4cbobddjmtn7d3qij5v24wr0u2', 'e30:1qKysB:RXkMlKevI-x2rrHEfN7ZsdA6-p8PdkA3JNN_y-8A7YI', '2023-07-30 10:21:03.005071');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('tue8pn4xiot8rhufz6btqxj8i270g2cm', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKytC:IOvFuqJ-FpRlAX9oX1tk8FQg4t-hpGRVS9HIzU5KLGY', '2023-07-30 10:22:06.874679');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('izijyemyg3hv1i3h21721u5xtqe8ykb2', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKytr:j-pPSsGFRLMOfHB-UM_OmxfdrOpA5yiOz6JD5KliKok', '2023-07-30 10:22:47.377319');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('j85g69ayxunet3f7ua4d16k6rqq4r63s', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKyuF:qevrSje8I4SRNYXLyP9aL00Fk-AjpZgyCr_aA4wA-ow', '2023-07-30 10:23:11.448653');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('rhtz4x5fhctym5liqze5vc7129jz9zjh', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qKyvM:Nrm9q-NRjg-3lDfr9vP-xR2Xb82viZhNVlrsoz3Euzs', '2023-07-30 10:24:20.056564');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('6ryulfovh87txta04qdsl71ivlfn29nd', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKzu0:u2um1sA5HX5ZGuTxChMA0rCBVXo2VXlNv-zfaHV6CmA', '2023-07-30 11:27:00.301906');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('eyhpobvxoxmnmgxto1ng0bm0fjd0boxf', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qKzxz:pmWjfwKLY2j1ADoSZszPuJQlKWFnpeaSd5V2XqB3-AM', '2023-07-30 11:31:07.465238');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('jhy9tf4vdbz47k80doq1mfe6yjfe0yor', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qKzyX:otLjQtGZd_g5YSQP56B9PeEEQSZQEvmGHHeBi1cdeMk', '2023-07-30 11:31:41.758327');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('pai6i8lb4zswjpzbpep2lrcr4g1lqo83', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qL00D:nkKpx1EMqs3Spu0-f1GEseLVwOzxHDnjNkfN9D4eXDQ', '2023-07-30 11:33:25.395275');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ebehoq9zgcu2birzu0gncmn4nfk19s7d', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL07M:wE6fOfBcR8Ag8RgSdOHBUtzwJUrYuFpEYQEw0SmSkSA', '2023-07-30 11:40:48.138100');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('bg0qav0caqt48xydf19w4azbn33fxnl0', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL07W:918yiEVVmehZrvNbsmT0qIObdED6YzcRB3qiLqZhVW8', '2023-07-30 11:40:58.498907');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('vbiic49iezh5814d81os61h7g2tb0hnq', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL08Q:Qi2D6y293nbkZUN5Rl6VcKj9lDgFpX9BXh5jEGWqBXI', '2023-07-30 11:41:54.258132');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('xvzz6g31i4rvr207gjlr147rmmvc2693', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL09s:seMFU3AdNX4az3pIpM0lCEyzLN_7BKMztuucHDoCf4o', '2023-07-30 11:43:24.034918');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('50uwitk8g7cr2obq2i57g0ukznrpnahq', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qL0A9:Z-HimbKlXpOWbcVVzHrH-b_FFo-CHzO9vdouhTm0SnI', '2023-07-30 11:43:41.390286');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('4he5fpagso7midbadvyylfe8s8wuxvmi', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL0MI:OKGT_sJFpG5Vebxc0UVaJu8YxGalYlut_dypXLHHliE', '2023-07-30 11:56:14.708419');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('yz1m3dfu1usb3hxz5zlayfufkd64tlx3', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL5cJ:9jbF4_9iBra8MxZ_vaFGnhF58ucijDf8NaPF3kJsB_s', '2023-07-30 17:33:07.833495');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('chghxtf2jcneep2wr6su651xesftkqnh', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qL5cT:52-jWZlCTACfKz6W6dsmEQBW56w2r87Re6utTwlbgyE', '2023-07-30 17:33:17.005371');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('5xny1lzjmz3ts2u35alagbi6lp5o5u5i', 'e30:1qL5nv:J-dCi6Y_H6_DGJCoSKnSyTAELGQMeXEhlaAkBPikT6M', '2023-07-30 17:45:07.320949');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ns8bygaw1ug4clnoksr40i6z9pesg20h', 'e30:1qL5yX:spoBHgNEsGL1uC1z1686m7R0woSVVEQ8A9pbfjbn0AM', '2023-07-30 17:56:05.165009');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('0j5479vd7qkgwnl9eraekjrgn084fas7', 'e30:1qL66c:aEPl0bexomzaLqqsQQ7yWDWkY5You4K52SROT8BRqHY', '2023-07-30 18:04:26.539389');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('2uz7evsobkoxtq3kwa6ol14zfij3wmxf', 'e30:1qL68C:OkfkeMHa7LDLcwr8VTsSxTdgMKYpFmVC13kfpT9l4DA', '2023-07-30 18:06:04.129053');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('j56bzyaphe69w8aipeczbs3thi7f1uw7', 'e30:1qL69L:2BjfBWn-87pErFncUQoCDfI4c14UR6fh1KhSQuGVVvs', '2023-07-30 18:07:15.408194');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('4uskcos42r9p25to7cqsre5gdjkk5arz', 'e30:1qL6Bv:0TZt0XWCfPG-DpW3WJ_-UHSRlcRiuOrhdRqYNWBzkfs', '2023-07-30 18:09:55.685542');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('eg7lmxjagkrmi8t2oh1586muh1oalbn5', 'e30:1qL6D3:SxK8vcNUt2-hWANZ5VBvKAAj7p7thu7GxHtzOJCbuqk', '2023-07-30 18:11:05.806184');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('dzy7g27jdtw6pmiz0p1eh6i2ur05szhh', 'e30:1qL6Ex:1cxZmIo7riMhxhimxHgOtX6JSLoE5x-lTFQ9iXuWrHQ', '2023-07-30 18:13:03.713547');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('q9mvtam3rghqry1u7pg1851phudqdklw', 'e30:1qL6Ge:h5iNaU3YtIKJFVsOIAxYq3fU1TOzoTSehJ6iuHvCXaA', '2023-07-30 18:14:48.609173');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('4fx7oz7s3rma96g11l0gn5xyt47h35kb', 'e30:1qL6HQ:F5UWDe1z7FZmrlzC2xruMlR0BArALwLuJXZ3fz8BThY', '2023-07-30 18:15:36.119969');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('6awrrzkpcczaysgr3rcj1yzli1wnmaul', 'e30:1qL6Ip:PoX8o4cEzEesHXi_7bYS4YdA5xkqPzBNVAIgi4ooQHs', '2023-07-30 18:17:03.499192');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('pvu9kex44n76oox5ix2hqsvc53uw3vde', 'e30:1qL6LA:GEH9LR1jf0l07HphxWYYjuVamS2LJRNwNdHmc5cwdPI', '2023-07-30 18:19:28.620426');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('722dsrc9l5ddz7tum0h9u0crvch1ccyn', 'e30:1qL6OU:1js20QB4Xi03gdWr1I47u5TDgmqfMliNKvUr3Dv7Gk4', '2023-07-30 18:22:54.487042');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ejko7yps7bdqhrlr3h9clrde742o4ar9', 'e30:1qL6P3:rxjXN8fo7lQjETccR6vOYdA2iazNeJpwnJTzImW4i0s', '2023-07-30 18:23:29.954153');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('qygicfkjeu1hdjcwv3tr3c2gqn85yip3', 'e30:1qL6Ps:u9pPe8lXTLvGU9R4o49-e2-7y9Lwk9mRutcv77gbVAI', '2023-07-30 18:24:20.411793');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('2bemydt8byb1wr756ybx9ybpi4b9qst7', 'e30:1qL6Sd:PTc4LzQquTWEnze5HrNVmTkR4zTpDbMXLjGTxHGgZhc', '2023-07-30 18:27:11.590580');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('l551e0gz4panqhzn3px40lvqo2jgzm7l', 'e30:1qL6TZ:GzMlDOcDrpv0UOJZMtGbkIiAek0CcDc7xgh_Ad1wjUA', '2023-07-30 18:28:09.597778');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('kkljq4wl221kmz7l2h2pj1r14ivnak0g', 'e30:1qL6UO:DXld_2FnuqtgoGqQm0Pa6n_pDpNDor0fSeFacYBDNIQ', '2023-07-30 18:29:00.465161');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('jav06xnxn14yp8mxpao94cr6v3q8an0c', 'e30:1qL6We:q8V7AC2LyXWFiyduQMIBPO4PJPfYAwjwX_ENY4AoyEI', '2023-07-30 18:31:20.247607');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ikq5awx800ngysxnwdyv3apj21vpwxau', 'e30:1qL6Y5:BqJ2ddVlAcYqEItPeFvaTwyOQnnKwbvF3Pxet33etDQ', '2023-07-30 18:32:49.920087');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('n7niw4hr5tces6dudug5ltkh69m7w7lz', 'e30:1qL6YT:arlMgGc-cSbG7VkuH54AOtUcy4cRTmpRkkvAcjIRMTg', '2023-07-30 18:33:13.959673');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('5nwxv9wos5tqn5o7b0e32xn61o0lu3oy', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL6aK:iel52rQLT05WwwdBRa5j59D454-iY1fv3b2JEzEzpAQ', '2023-07-30 18:35:08.502412');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ndnra9l4lr5u8vtv7t1jzrybrb7dbbve', 'e30:1qL6bg:P_WdWRyIqb0M1fgrSOiZ3ipizxl26CGOuNStamgtQGk', '2023-07-30 18:36:32.360555');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('tlo1ojfa38gdfy2z3iadohu7wfc6wtqo', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL6c5:mlQ1C_4QPTxWon9WBhayIkyy43QYbDpbZRQgOzvQV8k', '2023-07-30 18:36:57.566015');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('b6fh96dionivx8mamjn0bpdbe452wexh', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL6eY:I08-wD6ziiczCp6JdCdSo6v79tjk-M31bUsTFtFhxRQ', '2023-07-30 18:39:30.822481');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('fwznupt6uisidbb3bt7x2agm1nyozbdf', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL6jY:CjHof5DicrR5RjDkgJPLTxE1if-fz0R-OSy8_hHwJww', '2023-07-30 18:44:40.280033');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('qx6anxoip23apnnrkd4yndpk2zca949u', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL6ml:-tieliOztQhQlTlfsFywyuFdlo-MFQajVwcp9IM07gU', '2023-07-30 18:47:59.581843');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('2v12eg8jbvvsr0m3ihjcfsg06o59nu7f', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qL6oz:xKe7mU5kZa5MxEHMNiwn_LmF08BvEfs3TATSjSwA45I', '2023-07-30 18:50:17.801047');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('axkq12vpephcxjnm1386i8tj545oi3y5', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL71v:0CxVUds9brNmqJFUW7R1OZCTqTspMdrocTNoBrd7VEQ', '2023-07-30 19:03:39.264492');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('tvxsc6remi4y34okrpuv0tq7x0thkoz7', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL72p:gHjC6FQHEhKiicztTB4rXPHdyDjGsv4V-STB5LrGSBs', '2023-07-30 19:04:35.213470');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('lqw3y30ljcs7lctrly9fthrhln9fc8e2', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL73B:Xf5SBrEdhcFaIGrunv4bGgviznQbmdAv08ZYCUjzVNo', '2023-07-30 19:04:57.165964');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('kbmivjwt1slb30wy4uyzjx83qlqm5t72', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL73w:s-GwziIsyVHVwiqzaxRWYLZXcocFxCcwTZ6-R-KrGSQ', '2023-07-30 19:05:44.439829');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('sirx8kpwsp23nohou0sounatb22h5e2x', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL7Aa:AyR76DJc9xfqf_-L3Yn53mp1KDLoS_bFQDsDTKENBZw', '2023-07-30 19:12:36.913340');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('zqrfywa71znbx65wbmlfe45hegxfa54c', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL7CR:2dZj3-kqPu3nm4XNkWkYFVH3oLWiSPN8cmJrTg6GAHs', '2023-07-30 19:14:31.258100');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('eliouxxlmef4310i4zgyim8zau8nkxo3', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL7GK:DR15mPRKkgfUG59Uut1K2Q2uFrn78HEkVJLDf7JrM6g', '2023-07-30 19:18:32.009360');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('yfk3hm9pbua31chzm4i1gvzfggbmp4fm', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qL7JN:30DyS9tCZUNyj8DQEd8Oh7I8oRQm0roNClLf1KgCBdE', '2023-07-30 19:21:41.864397');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('poa8jkl0vbeo39vklr34nzpw6fuyjx2d', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL7Se:gWPbczyuV6ondPPXfMSSpHRUIZkeOZxDeYLL6vnCih4', '2023-07-30 19:31:16.046760');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('753jdurxdwzzpil70051m2h3uxpa3k6t', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qL7Sx:EeoItq4ea9t8aqLx3262RYjibd4HyBlTmoMs8yhKoBU', '2023-07-30 19:31:35.229449');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('47asbrpalg4woncsxdkqij3tok4m6k52', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL7V4:sK7ipgMvC5Q_BxerS5zC5tUbmwCIEA5XIV46PeNC6-Y', '2023-07-30 19:33:46.995018');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ur7uvagsibl7uqs52zefw9yzndfvmnlu', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL7bE:FUMr2YHbV9OLcXpG5N7d4yYv02PNH1rk3EV25moLKBk', '2023-07-30 19:40:08.417085');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('pontqhwaa4sdts2pizdo29gaw33njtys', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL7c2:zC-IYsttRtr0t25ueWVaEDmMuAtQum2jtSkdZtsz0Hc', '2023-07-30 19:40:58.649303');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('839zr9cn66t3axuiia9mhu1assgwxuxu', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qL7km:gd7aMtMPzTOw7UCkwTfC7VfD5uBlYbaNaA2yQteiDAs', '2023-07-30 19:50:00.840412');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('pc8q51gvkgy8tb7wgofj7g4mkjq53tta', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qL7li:RzkEbXryO53GvOlAgK9jFu-aBvGfehit0Xul0CSgDd0', '2023-07-30 19:50:58.489961');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('l2ee7vuz0cd2uwfw0ltp2d9z7lvbn8s5', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qLCYt:gajqZroHmnW4RBWgby6v3iOgvlio5XImo31tEf5CTJU', '2023-07-31 00:58:03.288571');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('lvvkqzoprueoskgdcm0t8a9153grqxlv', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLCZ1:devLmW2e2J7o33t_WFInNPMtlVLyZ4xGqA4YJpps-fg', '2023-07-31 00:58:11.052088');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('jnepjum2mucko7kwh2x32u2bxda6wea0', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLCk3:viKD2gVxP1zgtWGm1f8aN30Ve4cwqtY4382pgXO2QsA', '2023-07-31 01:09:35.048198');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('mpsp4581kfiegpbmco39mc3eqncqse3e', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qLCkT:CVEpUVvMLCsi-UGMLda0b2pe3PqT5K_Dj5DqFfkrMBc', '2023-07-31 01:10:01.101840');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('gmp3acuhfgjd3kzc9cyd76h8ub6ek5nz', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLCpo:K_qOKOQB0aplQUSYFMR0HMTlVTQuZ4GnE5XMxltJkAg', '2023-07-31 01:15:32.243416');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('4gft8ya4h30filwule8ryuioj5w5tc9n', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qLCpx:_6p2UBdLRQgogYtoX-7rLDXZYFMDHOI-y6XpyRIgoTM', '2023-07-31 01:15:41.832141');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('5tzuxpg8uug0woorqca49e7wbg8q6jmn', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLCtt:vzT6LbHGUgHw1vmTdE9MSdGyi6ScYqOsqSagXEeUV1U', '2023-07-31 01:19:45.128817');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('jambctwbqw6wmoql68vz3210mq90jsby', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qLCuo:aPhKzF-7XI00nyjmlTLF27pdeHQ-weIdb5fOx66I-3Y', '2023-07-31 01:20:42.027482');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('cxh5yjvoid6y9bwapl8zsi7jpeenzu11', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qLCw5:Mz-J8e862fe6yjhKOQFB9savqTmDkHgP1OTyjsyV_A4', '2023-07-31 01:22:01.069365');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('a71lq2zy0bs8rt4pzuuqglw20qwbjllp', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLCwH:eHjs9fQLrdc9S1GHYzgXUv-7Ngs5GX7uXXUu14xLrww', '2023-07-31 01:22:13.020742');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('mtcqud9zzcgeskuv6xu2h6mgfz2be9u8', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qLD25:m8IRkS7eCEeXaL78eC9Mw5fPBlFzpflTYwDQgvfShvM', '2023-07-31 01:28:13.349358');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('u1jjur6ub3fyu4ba4n8zdnb1zwt3hnpq', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLD5m:JQCVFr4VUK2NGMY5prgwJB5kJFCPAmE33Dz4RtOZssU', '2023-07-31 01:32:02.647032');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('bj54ldkdlg1n2kblvaglf3jb0sbs9t86', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qLD7P:X-bEM9p6CUK6xh3DrqOTmN5JemY87jP_RhU371OsrpU', '2023-07-31 01:33:43.646195');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('s8e0px3yla0sge6x0bz4o0hx1xnra0fz', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLD8Q:RtBzXpYZ9uyFIZ99JfjJo2TD_n_3J6u-pUFhN8ladpY', '2023-07-31 01:34:46.185826');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('75qtobyf1i93ftyrr87l5e866al2zejx', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLDCJ:91xPxj5frzeeTBaAUFDZlLQnySF1Z38wOmx-1jSwnjs', '2023-07-31 01:38:47.746230');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('jx3dpyvqwh0by186go4zkvr6dwdtx5ax', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLDJz:Y9ArGIe3-yhv950BDn1fkuj1DimUwwdUNDlaoombyvg', '2023-07-31 01:46:43.718007');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('1cajmbnihvi6j5zrhwyh97h39m5oxkce', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLDVi:8hSzEY3sCK7R0E98h05ZD0N4E7rLFkdSi6T99Mv4xH4', '2023-07-31 01:58:50.739554');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('e59b4e60qzqu6yn4oq6g1ptsjzjslp4t', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qLDWR:jXc24aJWDPCdonSGay0pBGhKrgyEwxnPNYxlTNuwBM8', '2023-07-31 01:59:35.211666');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('zpvg7t551zoozh7z4dralrx9ex59mc39', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLQGC:eeVP6zA8EcIrZ7Q3eNq2o3VsMxeezuONojGLsU7ZOOQ', '2023-07-31 15:35:40.744613');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('z8svxaer73ti8hry3d2oexah21blax7x', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qLQNl:LEtSLRF3RcBOgUnBn3p5HspMQJNjNRHgZP-Hvdbas_c', '2023-07-31 15:43:29.587493');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('jk3j9gzwvrq8wmqoiwa1bkn5190u0snw', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qLQOD:7iKXkXfz08jFYpfwA7ZIqpH7MGF2aID-OXF3FM4LA4o', '2023-07-31 15:43:57.885047');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('21ggtjuwj759pw4k2hkjdc9hlp1u03dq', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qLQpR:vbjvZWQOQ2wPMcaccy1Gvw7cs4DIY808pMaaA4bKsmw', '2023-07-31 16:12:05.588929');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('faenv2vey5gdmas1g0ace5diwqq2lwnc', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qM9wv:aeBCGPxDQOHSyZOKCiDUtbCUJVFRLsuiBOmOrXH2D_o', '2023-08-02 16:22:49.771329');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('gxd1ickjlslkgnuinan4cnd8mhc9qng1', '.eJxVjEEOwiAQRe_C2hAKlM64dO8ZGoZhbNVAUtqV8e7apAvd_vfef6kxbus0bi0v48zqrKw6_W4U0yOXHfA9llvVqZZ1mUnvij5o09fK-Xk53L-DKbbpWw8ccAjEiYaYAmJwzhjbZeAehMSzS9h5K4K9eEKCzgRBD8AhMSCo9wfmRjfZ:1qOJYN:X7xSfslIZjUJ18sOmcM8B2AmBkeAa3nk0si4zVL9Z5A', '2023-08-08 15:02:23.575731');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('7dtkxhqo1hnuykkgcnyrlrk9dps2yqtk', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qOJYp:u_TisBBlD4Xt-9wi1NCJJNTCo5m7HkbtSAULjwi_wN0', '2023-08-08 15:02:51.797058');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('e5v3gl9uad0b88fbodlbvx2i897w0x4o', 'e30:1qOjKw:Z3LIEHXaUbE7-8wfgmmHeCWOhGhUd6Us0aLkMdQccAI', '2023-08-09 18:34:14.600150');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('e2w8iyym6biph4gzesnsr3q17ju7n2vh', 'e30:1qOjM8:RWDIvmhF6fEJb10NTLInVCLIxvq9bCiIkTD8i163A0c', '2023-08-09 18:35:28.777907');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('r0y8exe4xco4bxctl6465tjcofjw0ahh', 'e30:1qOjPa:xWWXnvcvCKfbrGHi4qSXF0C6gTKiQQAiF2aag5MwkP8', '2023-08-09 18:39:02.399491');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('2zyhryx9q1whnu3hghopa6xpqfvwbhdz', 'e30:1qOjQm:tjYa7vneJB5SqWq93k91WriFeZ6N-gfgerZ-wIofPSw', '2023-08-09 18:40:16.140148');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('lfuiv89p8ro31tq904ufzgtupqmaw4gm', 'e30:1qOjSF:nsKXYuO-SklWmxypylRc_PdueWQ8esi12BSRqqTXUfc', '2023-08-09 18:41:47.328595');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('1w64ty0e8t9idacqrpbbxka124kkbv46', 'e30:1qOjfR:T3_vqWBTURaDmogVB507OHBVhj7rgDUAErcYyzYc4Ww', '2023-08-09 18:55:25.398231');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('xfyodlcnn1gxg6ukviexurnlcafg8lbv', 'e30:1qOjfy:3A5xkXfbf1m8jwwc4Ep46uEfDoPLtbVC9l6JDP3ihaI', '2023-08-09 18:55:58.010884');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('91y0u9jczc8y8t0plm5b68ej23tlwbg3', 'e30:1qOjr3:n-QavEKvwa6-7KcO4pJWV0jy4Bfe1vABnBq8YSrAsZI', '2023-08-09 19:07:25.107347');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('ky139zcrvymklrola9utpj8rq3hx3c4e', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qOjvQ:g6Dyk6ia_kV8cLOfNcB4-0KuPDjWIXU_QCUIxhP-Jfo', '2023-08-09 19:11:56.809878');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('d3cuk1q25l6ed3oza1wf45tj50hfjcj6', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qPal9:Ish_e69a1WT9ixb4GHhKbJCkyFY8MRurA6JI12R--so', '2023-08-12 03:36:51.157733');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('94422tpnkzw5x4gf9np7rcug092ee5cs', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qPaxR:cZBWgcRVw04GQktNJbAjogOZpzNM3c9LE1i32oDYco8', '2023-08-12 03:49:33.687594');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('izdnj646h3lr1rdvt9gcgks50kegyf3u', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qPb10:uJEDko0UhMbZoIUWRMQTInVBmJr8GzIOBde4-pz5yws', '2023-08-12 03:53:14.744442');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('t1tyjnnco5g0fuz5g4uupv0dviw1ejyy', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qPbFH:whUrNNZfepEQA0D6i3XMOZUiCvou5u8DlI0C5PuMRwk', '2023-08-12 04:07:59.246155');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('5r8gsi3whc8w8qjdu0ly15fc1990hgkj', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qPbWC:UJ_87yfIERDgno__hcNC8NjHfmNxcRHJVrVkb6RpA4M', '2023-08-12 04:25:28.004690');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('wetsm9b4flbrx59qw6t8jcmkrrratsn4', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qPbWe:GVlRM6qAjlZ0xzvzCsK90wThM_kY8shqqSsE7zlPqeU', '2023-08-12 04:25:56.897272');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('jdofpuj3w0zwygd4riebn579zuqxuwyk', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qPbXI:3xJiocA7oFZAZXYthDz8xNmVwGO-Piq3-4rCc93kE1I', '2023-08-12 04:26:36.694809');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('m7tonbil5l6dt1ytddbuaa7ulha689eg', '.eJxVjMsOwiAQAP-FsyF0ebR49N5vaGB3kaqBpLQn478bkh70OjOZt1jCseflaLwtK4mr0OLyy2LAJ5cu6BHKvUqsZd_WKHsiT9vkXIlft7P9G-TQct8CWPKO9QRJGwCvNFitEQZyyMpPiSnySDFZB6wCjiYBDio54wMyi88Xxow4AA:1qPbXr:YsC8WnbscHHKI268xRfm7FH-BofJlpDGd2v4esnOHIQ', '2023-08-12 04:27:11.343001');
INSERT INTO django_session (session_key, session_data, expire_date) VALUES ('yom7dzz7wpxlm7fwm2kroul1u9sdhrg1', '.eJxVjEEOwiAQRe_C2hAKdGBcuvcMZJgptmpoUtqV8e7apAvd_vfef6lE2zqmrQ1LmkSdVadOv1smfgx1B3Kneps1z3Vdpqx3RR-06essw_NyuH8HI7XxW_eRvHUUMUp0yKaQdAzFFrCF0GAQ03Ex0QUByxkxECP53GdPQADq_QHi1zgR:1qPc0l:fY63VeL_QNHeKYOUaUWAG6Bd6Jl3htO_nAAYakDmc3E', '2023-08-12 04:57:03.115547');

-- Table: EmployeeApp_current_jobs
CREATE TABLE IF NOT EXISTS EmployeeApp_current_jobs (job_id integer NOT NULL PRIMARY KEY AUTOINCREMENT, job_description varchar (200) NOT NULL, location varchar (100) NOT NULL, company_name varchar (100) NOT NULL, date_posted varchar (50) NOT NULL, user_id INTEGER);
INSERT INTO EmployeeApp_current_jobs (job_id, job_description, location, company_name, date_posted, user_id) VALUES (1, 'Data Analyst', 'tornto', 'Gathi Analytics', '02/03/2023', 33);
INSERT INTO EmployeeApp_current_jobs (job_id, job_description, location, company_name, date_posted, user_id) VALUES (3, 'System Analyst', 'Hyderaba', 'Amazon', '04/08/2023', 33);
INSERT INTO EmployeeApp_current_jobs (job_id, job_description, location, company_name, date_posted, user_id) VALUES (5, 'Full stack developer', 'Monteral', 'TCS', '12/12/2023', 34);

-- Table: EmployeeApp_departments
CREATE TABLE IF NOT EXISTS "EmployeeApp_departments" ("DepartmentID" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "DepartmentName" varchar(100) NOT NULL);
INSERT INTO EmployeeApp_departments (DepartmentID, DepartmentName) VALUES (4, 'it');
INSERT INTO EmployeeApp_departments (DepartmentID, DepartmentName) VALUES (6, 'Hr');
INSERT INTO EmployeeApp_departments (DepartmentID, DepartmentName) VALUES (7, 'It Support');

-- Table: EmployeeApp_employees
CREATE TABLE IF NOT EXISTS "EmployeeApp_employees" ("EmployeeID" integer NOT NULL PRIMARY KEY AUTOINCREMENT, "EmployeeName" varchar(100) NOT NULL, "Department" varchar(100) NOT NULL, "DateofJoining" date NOT NULL, "PhotoFileName" varchar(100) NOT NULL);
INSERT INTO EmployeeApp_employees (EmployeeID, EmployeeName, Department, DateofJoining, PhotoFileName) VALUES (2, 'body', 'IT', '2020-01-02', 'anayan.png');

-- Index: auth_group_permissions_group_id_b120cbf9
CREATE INDEX IF NOT EXISTS "auth_group_permissions_group_id_b120cbf9" ON "auth_group_permissions" ("group_id");

-- Index: auth_group_permissions_group_id_permission_id_0cd325b0_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_group_permissions_group_id_permission_id_0cd325b0_uniq" ON "auth_group_permissions" ("group_id", "permission_id");

-- Index: auth_group_permissions_permission_id_84c5c92e
CREATE INDEX IF NOT EXISTS "auth_group_permissions_permission_id_84c5c92e" ON "auth_group_permissions" ("permission_id");

-- Index: auth_permission_content_type_id_2f476e4b
CREATE INDEX IF NOT EXISTS "auth_permission_content_type_id_2f476e4b" ON "auth_permission" ("content_type_id");

-- Index: auth_permission_content_type_id_codename_01ab375a_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_permission_content_type_id_codename_01ab375a_uniq" ON "auth_permission" ("content_type_id", "codename");

-- Index: auth_user_groups_group_id_97559544
CREATE INDEX IF NOT EXISTS "auth_user_groups_group_id_97559544" ON "auth_user_groups" ("group_id");

-- Index: auth_user_groups_user_id_6a12ed8b
CREATE INDEX IF NOT EXISTS "auth_user_groups_user_id_6a12ed8b" ON "auth_user_groups" ("user_id");

-- Index: auth_user_groups_user_id_group_id_94350c0c_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_groups_user_id_group_id_94350c0c_uniq" ON "auth_user_groups" ("user_id", "group_id");

-- Index: auth_user_user_permissions_permission_id_1fbb5f2c
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_permission_id_1fbb5f2c" ON "auth_user_user_permissions" ("permission_id");

-- Index: auth_user_user_permissions_user_id_a95ead1b
CREATE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_a95ead1b" ON "auth_user_user_permissions" ("user_id");

-- Index: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "auth_user_user_permissions_user_id_permission_id_14a6b632_uniq" ON "auth_user_user_permissions" ("user_id", "permission_id");

-- Index: django_admin_log_content_type_id_c4bce8eb
CREATE INDEX IF NOT EXISTS "django_admin_log_content_type_id_c4bce8eb" ON "django_admin_log" ("content_type_id");

-- Index: django_admin_log_user_id_c564eba6
CREATE INDEX IF NOT EXISTS "django_admin_log_user_id_c564eba6" ON "django_admin_log" ("user_id");

-- Index: django_content_type_app_label_model_76bd3d3b_uniq
CREATE UNIQUE INDEX IF NOT EXISTS "django_content_type_app_label_model_76bd3d3b_uniq" ON "django_content_type" ("app_label", "model");

-- Index: django_session_expire_date_a5c62663
CREATE INDEX IF NOT EXISTS "django_session_expire_date_a5c62663" ON "django_session" ("expire_date");

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
