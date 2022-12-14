-- USE [febs_base]
GO
ALTER TABLE [dbo].[qrtz_triggers] DROP CONSTRAINT [qrtz_triggers_ibfk_1]
GO
ALTER TABLE [dbo].[qrtz_simprop_triggers] DROP CONSTRAINT [qrtz_simprop_triggers_ibfk_1]
GO
ALTER TABLE [dbo].[qrtz_simple_triggers] DROP CONSTRAINT [qrtz_simple_triggers_ibfk_1]
GO
ALTER TABLE [dbo].[qrtz_cron_triggers] DROP CONSTRAINT [qrtz_cron_triggers_ibfk_1]
GO
ALTER TABLE [dbo].[qrtz_blob_triggers] DROP CONSTRAINT [qrtz_blob_triggers_ibfk_1]
GO
/****** Object:  Table [dbo].[t_user_role]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_user_role]') AND type in (N'U'))
DROP TABLE [dbo].[t_user_role]
GO
/****** Object:  Table [dbo].[t_user]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_user]') AND type in (N'U'))
DROP TABLE [dbo].[t_user]
GO
/****** Object:  Table [dbo].[t_role_menu]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_role_menu]') AND type in (N'U'))
DROP TABLE [dbo].[t_role_menu]
GO
/****** Object:  Table [dbo].[t_role]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_role]') AND type in (N'U'))
DROP TABLE [dbo].[t_role]
GO
/****** Object:  Table [dbo].[t_menu]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_menu]') AND type in (N'U'))
DROP TABLE [dbo].[t_menu]
GO
/****** Object:  Table [dbo].[t_login_log]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_login_log]') AND type in (N'U'))
DROP TABLE [dbo].[t_login_log]
GO
/****** Object:  Table [dbo].[t_log]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_log]') AND type in (N'U'))
DROP TABLE [dbo].[t_log]
GO
/****** Object:  Table [dbo].[t_job_log]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_job_log]') AND type in (N'U'))
DROP TABLE [dbo].[t_job_log]
GO
/****** Object:  Table [dbo].[t_job]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_job]') AND type in (N'U'))
DROP TABLE [dbo].[t_job]
GO
/****** Object:  Table [dbo].[t_generator_config]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_generator_config]') AND type in (N'U'))
DROP TABLE [dbo].[t_generator_config]
GO
/****** Object:  Table [dbo].[t_eximport]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_eximport]') AND type in (N'U'))
DROP TABLE [dbo].[t_eximport]
GO
/****** Object:  Table [dbo].[t_dept]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[t_dept]') AND type in (N'U'))
DROP TABLE [dbo].[t_dept]
GO
/****** Object:  Table [dbo].[qrtz_triggers]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_triggers]') AND type in (N'U'))
DROP TABLE [dbo].[qrtz_triggers]
GO
/****** Object:  Table [dbo].[qrtz_simprop_triggers]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_simprop_triggers]') AND type in (N'U'))
DROP TABLE [dbo].[qrtz_simprop_triggers]
GO
/****** Object:  Table [dbo].[qrtz_simple_triggers]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_simple_triggers]') AND type in (N'U'))
DROP TABLE [dbo].[qrtz_simple_triggers]
GO
/****** Object:  Table [dbo].[qrtz_scheduler_state]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_scheduler_state]') AND type in (N'U'))
DROP TABLE [dbo].[qrtz_scheduler_state]
GO
/****** Object:  Table [dbo].[qrtz_paused_trigger_grps]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_paused_trigger_grps]') AND type in (N'U'))
DROP TABLE [dbo].[qrtz_paused_trigger_grps]
GO
/****** Object:  Table [dbo].[qrtz_locks]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_locks]') AND type in (N'U'))
DROP TABLE [dbo].[qrtz_locks]
GO
/****** Object:  Table [dbo].[qrtz_job_details]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_job_details]') AND type in (N'U'))
DROP TABLE [dbo].[qrtz_job_details]
GO
/****** Object:  Table [dbo].[qrtz_fired_triggers]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_fired_triggers]') AND type in (N'U'))
DROP TABLE [dbo].[qrtz_fired_triggers]
GO
/****** Object:  Table [dbo].[qrtz_cron_triggers]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_cron_triggers]') AND type in (N'U'))
DROP TABLE [dbo].[qrtz_cron_triggers]
GO
/****** Object:  Table [dbo].[qrtz_calendars]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_calendars]') AND type in (N'U'))
DROP TABLE [dbo].[qrtz_calendars]
GO
/****** Object:  Table [dbo].[qrtz_blob_triggers]    Script Date: 2021/9/5 22:56:01 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qrtz_blob_triggers]') AND type in (N'U'))
DROP TABLE [dbo].[qrtz_blob_triggers]
GO
/****** Object:  Table [dbo].[qrtz_blob_triggers]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_blob_triggers](
	[SCHED_NAME] [varchar](120) NOT NULL,
	[TRIGGER_NAME] [varchar](200) NOT NULL,
	[TRIGGER_GROUP] [varchar](200) NOT NULL,
	[BLOB_DATA] [varbinary](1024) NULL,
 CONSTRAINT [pk_qrtz_blob_triggers] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_calendars]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_calendars](
	[SCHED_NAME] [varchar](120) NOT NULL,
	[CALENDAR_NAME] [varchar](200) NOT NULL,
	[CALENDAR] [varbinary](1024) NOT NULL,
 CONSTRAINT [pk_qrtz_calendars] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[CALENDAR_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_cron_triggers]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_cron_triggers](
	[SCHED_NAME] [varchar](120) NOT NULL,
	[TRIGGER_NAME] [varchar](200) NOT NULL,
	[TRIGGER_GROUP] [varchar](200) NOT NULL,
	[CRON_EXPRESSION] [varchar](200) NOT NULL,
	[TIME_ZONE_ID] [varchar](80) NULL,
 CONSTRAINT [pk_qrtz_cron_triggers] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_fired_triggers]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_fired_triggers](
	[SCHED_NAME] [varchar](120) NOT NULL,
	[ENTRY_ID] [varchar](95) NOT NULL,
	[TRIGGER_NAME] [varchar](200) NOT NULL,
	[TRIGGER_GROUP] [varchar](200) NOT NULL,
	[INSTANCE_NAME] [varchar](200) NOT NULL,
	[FIRED_TIME] [bigint] NOT NULL,
	[SCHED_TIME] [bigint] NOT NULL,
	[PRIORITY] [int] NOT NULL,
	[STATE] [varchar](16) NOT NULL,
	[JOB_NAME] [varchar](200) NULL,
	[JOB_GROUP] [varchar](200) NULL,
	[IS_NONCONCURRENT] [varchar](1) NULL,
	[REQUESTS_RECOVERY] [varchar](1) NULL,
 CONSTRAINT [pk_qrtz_fired_triggers] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[ENTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_job_details]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_job_details](
	[SCHED_NAME] [varchar](120) NOT NULL,
	[JOB_NAME] [varchar](200) NOT NULL,
	[JOB_GROUP] [varchar](200) NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[JOB_CLASS_NAME] [varchar](250) NOT NULL,
	[IS_DURABLE] [varchar](1) NOT NULL,
	[IS_NONCONCURRENT] [varchar](1) NOT NULL,
	[IS_UPDATE_DATA] [varchar](1) NOT NULL,
	[REQUESTS_RECOVERY] [varchar](1) NOT NULL,
	[JOB_DATA] [varbinary](1024) NULL,
 CONSTRAINT [pk_qrtz_job_details] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[JOB_NAME] ASC,
	[JOB_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_locks]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_locks](
	[SCHED_NAME] [varchar](120) NOT NULL,
	[LOCK_NAME] [varchar](40) NOT NULL,
 CONSTRAINT [pk_qrtz_locks] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[LOCK_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_paused_trigger_grps]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_paused_trigger_grps](
	[SCHED_NAME] [varchar](120) NOT NULL,
	[TRIGGER_GROUP] [varchar](200) NOT NULL,
 CONSTRAINT [pk_qrtz_paused_trigger_grps] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_scheduler_state]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_scheduler_state](
	[SCHED_NAME] [varchar](120) NOT NULL,
	[INSTANCE_NAME] [varchar](200) NOT NULL,
	[LAST_CHECKIN_TIME] [bigint] NOT NULL,
	[CHECKIN_INTERVAL] [bigint] NOT NULL,
 CONSTRAINT [pk_qrtz_scheduler_state] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[INSTANCE_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_simple_triggers]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_simple_triggers](
	[SCHED_NAME] [varchar](120) NOT NULL,
	[TRIGGER_NAME] [varchar](200) NOT NULL,
	[TRIGGER_GROUP] [varchar](200) NOT NULL,
	[REPEAT_COUNT] [bigint] NOT NULL,
	[REPEAT_INTERVAL] [bigint] NOT NULL,
	[TIMES_TRIGGERED] [bigint] NOT NULL,
 CONSTRAINT [pk_qrtz_simple_triggers] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_simprop_triggers]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_simprop_triggers](
	[SCHED_NAME] [varchar](120) NOT NULL,
	[TRIGGER_NAME] [varchar](200) NOT NULL,
	[TRIGGER_GROUP] [varchar](200) NOT NULL,
	[STR_PROP_1] [varchar](512) NULL,
	[STR_PROP_2] [varchar](512) NULL,
	[STR_PROP_3] [varchar](512) NULL,
	[INT_PROP_1] [int] NULL,
	[INT_PROP_2] [int] NULL,
	[LONG_PROP_1] [bigint] NULL,
	[LONG_PROP_2] [bigint] NULL,
	[DEC_PROP_1] [decimal](13, 4) NULL,
	[DEC_PROP_2] [decimal](13, 4) NULL,
	[BOOL_PROP_1] [varchar](1) NULL,
	[BOOL_PROP_2] [varchar](1) NULL,
 CONSTRAINT [pk_qrtz_simprop_triggers] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qrtz_triggers]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qrtz_triggers](
	[SCHED_NAME] [varchar](120) NOT NULL,
	[TRIGGER_NAME] [varchar](200) NOT NULL,
	[TRIGGER_GROUP] [varchar](200) NOT NULL,
	[JOB_NAME] [varchar](200) NOT NULL,
	[JOB_GROUP] [varchar](200) NOT NULL,
	[DESCRIPTION] [varchar](250) NULL,
	[NEXT_FIRE_TIME] [bigint] NULL,
	[PREV_FIRE_TIME] [bigint] NULL,
	[PRIORITY] [int] NULL,
	[TRIGGER_STATE] [varchar](16) NOT NULL,
	[TRIGGER_TYPE] [varchar](8) NOT NULL,
	[START_TIME] [bigint] NOT NULL,
	[END_TIME] [bigint] NULL,
	[CALENDAR_NAME] [varchar](200) NULL,
	[MISFIRE_INSTR] [smallint] NULL,
	[JOB_DATA] [varbinary](1024) NULL,
 CONSTRAINT [pk_qrtz_triggers] PRIMARY KEY CLUSTERED 
(
	[SCHED_NAME] ASC,
	[TRIGGER_NAME] ASC,
	[TRIGGER_GROUP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_dept]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_dept](
	[DEPT_ID] [bigint]  NOT NULL,
	[PARENT_ID] [bigint] NOT NULL,
	[DEPT_NAME] [varchar](100) NOT NULL,
	[ORDER_NUM] [bigint] NULL,
	[CREATE_TIME] [datetime] NULL,
	[MODIFY_TIME] [datetime] NULL,
 CONSTRAINT [pk_t_dept] PRIMARY KEY CLUSTERED 
(
	[DEPT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_eximport]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_eximport](
	[FIELD1] [varchar](20) NOT NULL,
	[FIELD2] [int] NOT NULL,
	[FIELD3] [varchar](100) NOT NULL,
	[CREATE_TIME] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_generator_config]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_generator_config](
	[id] [int] NOT NULL,
	[author] [varchar](20) NOT NULL,
	[base_package] [varchar](50) NOT NULL,
	[entity_package] [varchar](20) NOT NULL,
	[mapper_package] [varchar](20) NOT NULL,
	[mapper_xml_package] [varchar](20) NOT NULL,
	[service_package] [varchar](20) NOT NULL,
	[service_impl_package] [varchar](20) NOT NULL,
	[controller_package] [varchar](20) NOT NULL,
	[is_trim] [char](1) NOT NULL,
	[trim_value] [varchar](10) NULL,
 CONSTRAINT [pk_t_generator_config] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_job]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_job](
	[JOB_ID] [bigint]  NOT NULL,
	[BEAN_NAME] [varchar](50) NOT NULL,
	[METHOD_NAME] [varchar](50) NOT NULL,
	[PARAMS] [varchar](50) NULL,
	[CRON_EXPRESSION] [varchar](20) NOT NULL,
	[STATUS] [char](2) NOT NULL,
	[REMARK] [varchar](50) NULL,
	[CREATE_TIME] [datetime] NULL,
 CONSTRAINT [pk_t_job] PRIMARY KEY CLUSTERED 
(
	[JOB_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_job_log]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_job_log](
	[LOG_ID] [bigint]  NOT NULL,
	[JOB_ID] [bigint] NOT NULL,
	[BEAN_NAME] [varchar](100) NOT NULL,
	[METHOD_NAME] [varchar](100) NOT NULL,
	[PARAMS] [varchar](200) NULL,
	[STATUS] [char](2) NOT NULL,
	[ERROR] [varchar](max) NULL,
	[TIMES] [decimal](11, 0) NULL,
	[CREATE_TIME] [datetime] NULL,
 CONSTRAINT [pk_t_job_log] PRIMARY KEY CLUSTERED 
(
	[LOG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[t_log]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_log](
	[ID] [bigint]  NOT NULL,
	[USERNAME] [varchar](50) NULL,
	[OPERATION] [varchar](max) NULL,
	[TIME] [decimal](11, 0) NULL,
	[METHOD] [varchar](max) NULL,
	[PARAMS] [varchar](max) NULL,
	[IP] [varchar](64) NULL,
	[CREATE_TIME] [datetime] NULL,
	[location] [varchar](50) NULL,
 CONSTRAINT [pk_t_log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[t_login_log]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_login_log](
	[ID] [bigint]  NOT NULL,
	[USERNAME] [varchar](50) NOT NULL,
	[LOGIN_TIME] [datetime] NOT NULL,
	[LOCATION] [varchar](50) NULL,
	[IP] [varchar](50) NULL,
	[SYSTEM] [varchar](50) NULL,
	[BROWSER] [varchar](50) NULL,
 CONSTRAINT [pk_t_login_log] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_menu]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_menu](
	[MENU_ID] [bigint]  NOT NULL,
	[PARENT_ID] [bigint] NOT NULL,
	[MENU_NAME] [varchar](50) NOT NULL,
	[URL] [varchar](50) NULL,
	[PERMS] [varchar](max) NULL,
	[ICON] [varchar](50) NULL,
	[TYPE] [char](2) NOT NULL,
	[ORDER_NUM] [bigint] NULL,
	[CREATE_TIME] [datetime] NOT NULL,
	[MODIFY_TIME] [datetime] NULL,
 CONSTRAINT [pk_t_menu] PRIMARY KEY CLUSTERED 
(
	[MENU_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[t_role]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_role](
	[ROLE_ID] [bigint]  NOT NULL,
	[ROLE_NAME] [varchar](100) NOT NULL,
	[REMARK] [varchar](100) NULL,
	[CREATE_TIME] [datetime] NOT NULL,
	[MODIFY_TIME] [datetime] NULL,
 CONSTRAINT [pk_t_role] PRIMARY KEY CLUSTERED 
(
	[ROLE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_role_menu]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_role_menu](
	[ROLE_ID] [bigint] NOT NULL,
	[MENU_ID] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_user]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_user](
	[USER_ID] [bigint]  NOT NULL,
	[USERNAME] [varchar](50) NOT NULL,
	[PASSWORD] [varchar](128) NOT NULL,
	[DEPT_ID] [bigint] NULL,
	[EMAIL] [varchar](128) NULL,
	[MOBILE] [varchar](20) NULL,
	[STATUS] [char](1) NOT NULL,
	[CREATE_TIME] [datetime] NOT NULL,
	[MODIFY_TIME] [datetime] NULL,
	[LAST_LOGIN_TIME] [datetime] NULL,
	[SSEX] [char](1) NULL,
	[IS_TAB] [char](1) NULL,
	[THEME] [varchar](10) NULL,
	[AVATAR] [varchar](100) NULL,
	[DESCRIPTION] [varchar](100) NULL,
 CONSTRAINT [pk_t_user] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_user_role]    Script Date: 2021/9/5 22:56:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_user_role](
	[USER_ID] [bigint] NOT NULL,
	[ROLE_ID] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[qrtz_blob_triggers]  WITH CHECK ADD  CONSTRAINT [qrtz_blob_triggers_ibfk_1] FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[qrtz_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[qrtz_blob_triggers] CHECK CONSTRAINT [qrtz_blob_triggers_ibfk_1]
GO
ALTER TABLE [dbo].[qrtz_cron_triggers]  WITH CHECK ADD  CONSTRAINT [qrtz_cron_triggers_ibfk_1] FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[qrtz_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[qrtz_cron_triggers] CHECK CONSTRAINT [qrtz_cron_triggers_ibfk_1]
GO
ALTER TABLE [dbo].[qrtz_simple_triggers]  WITH CHECK ADD  CONSTRAINT [qrtz_simple_triggers_ibfk_1] FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[qrtz_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[qrtz_simple_triggers] CHECK CONSTRAINT [qrtz_simple_triggers_ibfk_1]
GO
ALTER TABLE [dbo].[qrtz_simprop_triggers]  WITH CHECK ADD  CONSTRAINT [qrtz_simprop_triggers_ibfk_1] FOREIGN KEY([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
REFERENCES [dbo].[qrtz_triggers] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[qrtz_simprop_triggers] CHECK CONSTRAINT [qrtz_simprop_triggers_ibfk_1]
GO
ALTER TABLE [dbo].[qrtz_triggers]  WITH CHECK ADD  CONSTRAINT [qrtz_triggers_ibfk_1] FOREIGN KEY([SCHED_NAME], [JOB_NAME], [JOB_GROUP])
REFERENCES [dbo].[qrtz_job_details] ([SCHED_NAME], [JOB_NAME], [JOB_GROUP]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[qrtz_triggers] CHECK CONSTRAINT [qrtz_triggers_ibfk_1]
GO
