-- USE [guns_base]
GO
ALTER TABLE [dbo].[sys_menu] DROP CONSTRAINT [DF__sys_menu__status__30F848ED]
GO
ALTER TABLE [dbo].[sys_dict_type] DROP CONSTRAINT [DF__sys_dict___statu__2A4B4B5E]
GO
ALTER TABLE [dbo].[sys_dict] DROP CONSTRAINT [DF__sys_dict__status__276EDEB3]
GO
ALTER TABLE [dbo].[sys_dept] DROP CONSTRAINT [DF__sys_dept__pids__24927208]
GO
ALTER TABLE [dbo].[sys_dept] DROP CONSTRAINT [DF__sys_dept__pid__239E4DCF]
GO
/****** Object:  Table [dbo].[sys_user]    Script Date: 2021/9/5 22:59:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user]') AND type in (N'U'))
DROP TABLE [dbo].[sys_user]
GO
/****** Object:  Table [dbo].[sys_role]    Script Date: 2021/9/5 22:59:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role]') AND type in (N'U'))
DROP TABLE [dbo].[sys_role]
GO
/****** Object:  Table [dbo].[sys_relation]    Script Date: 2021/9/5 22:59:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_relation]') AND type in (N'U'))
DROP TABLE [dbo].[sys_relation]
GO
/****** Object:  Table [dbo].[sys_operation_log]    Script Date: 2021/9/5 22:59:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_operation_log]') AND type in (N'U'))
DROP TABLE [dbo].[sys_operation_log]
GO
/****** Object:  Table [dbo].[sys_notice]    Script Date: 2021/9/5 22:59:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_notice]') AND type in (N'U'))
DROP TABLE [dbo].[sys_notice]
GO
/****** Object:  Table [dbo].[sys_menu]    Script Date: 2021/9/5 22:59:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_menu]') AND type in (N'U'))
DROP TABLE [dbo].[sys_menu]
GO
/****** Object:  Table [dbo].[sys_login_log]    Script Date: 2021/9/5 22:59:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_login_log]') AND type in (N'U'))
DROP TABLE [dbo].[sys_login_log]
GO
/****** Object:  Table [dbo].[sys_file_info]    Script Date: 2021/9/5 22:59:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_file_info]') AND type in (N'U'))
DROP TABLE [dbo].[sys_file_info]
GO
/****** Object:  Table [dbo].[sys_dict_type]    Script Date: 2021/9/5 22:59:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict_type]') AND type in (N'U'))
DROP TABLE [dbo].[sys_dict_type]
GO
/****** Object:  Table [dbo].[sys_dict]    Script Date: 2021/9/5 22:59:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dict]') AND type in (N'U'))
DROP TABLE [dbo].[sys_dict]
GO
/****** Object:  Table [dbo].[sys_dept]    Script Date: 2021/9/5 22:59:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dept]') AND type in (N'U'))
DROP TABLE [dbo].[sys_dept]
GO
/****** Object:  Table [dbo].[sys_dept]    Script Date: 2021/9/5 22:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dept](
	[dept_id] [bigint] NOT NULL,
	[pid] [bigint] NULL,
	[pids] [varchar](512) NULL,
	[simple_name] [varchar](45) NULL,
	[full_name] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[version] [int] NULL,
	[sort] [int] NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
	[create_user] [bigint] NULL,
	[update_user] [bigint] NULL,
 CONSTRAINT [pk_sys_dept] PRIMARY KEY CLUSTERED 
(
	[dept_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_dict]    Script Date: 2021/9/5 22:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dict](
	[dict_id] [bigint] NOT NULL,
	[dict_type_id] [bigint] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[parent_id] [bigint] NOT NULL,
	[parent_ids] [varchar](255) NULL,
	[status] [varchar](10) NOT NULL,
	[sort] [int] NULL,
	[description] [varchar](1000) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
	[create_user] [bigint] NULL,
	[update_user] [bigint] NULL,
 CONSTRAINT [pk_sys_dict] PRIMARY KEY CLUSTERED 
(
	[dict_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_dict_type]    Script Date: 2021/9/5 22:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dict_type](
	[dict_type_id] [bigint] NOT NULL,
	[code] [varchar](255) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](1000) NULL,
	[system_flag] [char](1) NOT NULL,
	[status] [varchar](10) NOT NULL,
	[sort] [int] NULL,
	[create_time] [datetime] NULL,
	[create_user] [bigint] NULL,
	[update_time] [datetime] NULL,
	[update_user] [bigint] NULL,
 CONSTRAINT [pk_sys_dict_type] PRIMARY KEY CLUSTERED 
(
	[dict_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_file_info]    Script Date: 2021/9/5 22:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_file_info](
	[file_id] [varchar](50) NOT NULL,
	[file_data] [varchar](max) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
	[create_user] [bigint] NULL,
	[update_user] [bigint] NULL,
 CONSTRAINT [pk_sys_file_info] PRIMARY KEY CLUSTERED 
(
	[file_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[sys_login_log]    Script Date: 2021/9/5 22:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_login_log](
	[login_log_id] [bigint] NOT NULL,
	[log_name] [varchar](255) NULL,
	[user_id] [bigint] NULL,
	[create_time] [datetime] NULL,
	[succeed] [varchar](255) NULL,
	[message] [varchar](max) NULL,
	[ip_address] [varchar](255) NULL,
 CONSTRAINT [pk_sys_login_log] PRIMARY KEY CLUSTERED 
(
	[login_log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[sys_menu]    Script Date: 2021/9/5 22:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_menu](
	[menu_id] [bigint] NOT NULL,
	[code] [varchar](255) NULL,
	[pcode] [varchar](255) NULL,
	[pcodes] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[icon] [varchar](255) NULL,
	[url] [varchar](255) NULL,
	[sort] [int] NULL,
	[levels] [int] NULL,
	[menu_flag] [varchar](32) NULL,
	[description] [varchar](255) NULL,
	[status] [varchar](32) NULL,
	[new_page_flag] [varchar](32) NULL,
	[open_flag] [varchar](32) NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
	[create_user] [bigint] NULL,
	[update_user] [bigint] NULL,
 CONSTRAINT [pk_sys_menu] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_notice]    Script Date: 2021/9/5 22:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_notice](
	[notice_id] [bigint] NOT NULL,
	[title] [varchar](255) NULL,
	[content] [varchar](max) NULL,
	[create_time] [datetime] NULL,
	[create_user] [bigint] NULL,
	[update_time] [datetime] NULL,
	[update_user] [bigint] NULL,
 CONSTRAINT [pk_sys_notice] PRIMARY KEY CLUSTERED 
(
	[notice_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[sys_operation_log]    Script Date: 2021/9/5 22:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_operation_log](
	[operation_log_id] [bigint] NOT NULL,
	[log_type] [varchar](32) NULL,
	[log_name] [varchar](255) NULL,
	[user_id] [bigint] NULL,
	[class_name] [varchar](255) NULL,
	[method] [varchar](max) NULL,
	[create_time] [datetime] NULL,
	[succeed] [varchar](32) NULL,
	[message] [varchar](max) NULL,
 CONSTRAINT [pk_sys_operation_log] PRIMARY KEY CLUSTERED 
(
	[operation_log_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[sys_relation]    Script Date: 2021/9/5 22:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_relation](
	[relation_id] [bigint] NOT NULL,
	[menu_id] [bigint] NULL,
	[role_id] [bigint] NULL,
 CONSTRAINT [pk_sys_relation] PRIMARY KEY CLUSTERED 
(
	[relation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role]    Script Date: 2021/9/5 22:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role](
	[role_id] [bigint] NOT NULL,
	[pid] [bigint] NULL,
	[name] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[sort] [int] NULL,
	[version] [int] NULL,
	[create_time] [datetime] NULL,
	[update_time] [datetime] NULL,
	[create_user] [bigint] NULL,
	[update_user] [bigint] NULL,
 CONSTRAINT [pk_sys_role] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_user]    Script Date: 2021/9/5 22:59:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_user](
	[user_id] [bigint] NOT NULL,
	[avatar] [varchar](255) NULL,
	[account] [varchar](45) NULL,
	[password] [varchar](45) NULL,
	[salt] [varchar](45) NULL,
	[name] [varchar](45) NULL,
	[birthday] [datetime] NULL,
	[sex] [varchar](32) NULL,
	[email] [varchar](45) NULL,
	[phone] [varchar](45) NULL,
	[role_id] [varchar](255) NULL,
	[dept_id] [bigint] NULL,
	[status] [varchar](32) NULL,
	[create_time] [datetime] NULL,
	[create_user] [bigint] NULL,
	[update_time] [datetime] NULL,
	[update_user] [bigint] NULL,
	[version] [int] NULL,
 CONSTRAINT [pk_sys_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[sys_dept] ADD  DEFAULT ((0)) FOR [pid]
GO
ALTER TABLE [dbo].[sys_dept] ADD  DEFAULT ('') FOR [pids]
GO
ALTER TABLE [dbo].[sys_dict] ADD  DEFAULT ('ENABLE') FOR [status]
GO
ALTER TABLE [dbo].[sys_dict_type] ADD  DEFAULT ('ENABLE') FOR [status]
GO
ALTER TABLE [dbo].[sys_menu] ADD  DEFAULT ('ENABLE') FOR [status]
GO
