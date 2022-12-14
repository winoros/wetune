-- USE [pybbs_base]
GO
ALTER TABLE [dbo].[topic_tag] DROP CONSTRAINT [topic_tag_ibfk_2]
GO
ALTER TABLE [dbo].[topic_tag] DROP CONSTRAINT [topic_tag_ibfk_1]
GO
ALTER TABLE [dbo].[topic] DROP CONSTRAINT [topic_ibfk_1]
GO
ALTER TABLE [dbo].[role_permission] DROP CONSTRAINT [role_permission_ibfk_2]
GO
ALTER TABLE [dbo].[role_permission] DROP CONSTRAINT [role_permission_ibfk_1]
GO
ALTER TABLE [dbo].[oauth_user] DROP CONSTRAINT [oauth_user_ibfk_1]
GO
ALTER TABLE [dbo].[notification] DROP CONSTRAINT [notification_ibfk_3]
GO
ALTER TABLE [dbo].[notification] DROP CONSTRAINT [notification_ibfk_2]
GO
ALTER TABLE [dbo].[notification] DROP CONSTRAINT [notification_ibfk_1]
GO
ALTER TABLE [dbo].[comment] DROP CONSTRAINT [comment_ibfk_2]
GO
ALTER TABLE [dbo].[comment] DROP CONSTRAINT [comment_ibfk_1]
GO
ALTER TABLE [dbo].[collect] DROP CONSTRAINT [collect_ibfk_2]
GO
ALTER TABLE [dbo].[collect] DROP CONSTRAINT [collect_ibfk_1]
GO
ALTER TABLE [dbo].[code] DROP CONSTRAINT [code_ibfk_1]
GO
ALTER TABLE [dbo].[admin_user] DROP CONSTRAINT [admin_user_ibfk_1]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__active__59063A47]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__email_noti__5812160E]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__token__571DF1D5]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__score__5629CD9C]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__password__5535A963]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__username__5441852A]
GO
ALTER TABLE [dbo].[topic] DROP CONSTRAINT [DF__topic__good__5070F446]
GO
ALTER TABLE [dbo].[topic] DROP CONSTRAINT [DF__topic__top__4F7CD00D]
GO
ALTER TABLE [dbo].[topic] DROP CONSTRAINT [DF__topic__view__4E88ABD4]
GO
ALTER TABLE [dbo].[topic] DROP CONSTRAINT [DF__topic__collect_c__4D94879B]
GO
ALTER TABLE [dbo].[topic] DROP CONSTRAINT [DF__topic__comment_c__4CA06362]
GO
ALTER TABLE [dbo].[topic] DROP CONSTRAINT [DF__topic__title__4BAC3F29]
GO
ALTER TABLE [dbo].[tag] DROP CONSTRAINT [DF__tag__topic_count__48CFD27E]
GO
ALTER TABLE [dbo].[tag] DROP CONSTRAINT [DF__tag__name__47DBAE45]
GO
ALTER TABLE [dbo].[system_config] DROP CONSTRAINT [DF__system_co__reboo__44FF419A]
GO
ALTER TABLE [dbo].[system_config] DROP CONSTRAINT [DF__system_conf__pid__440B1D61]
GO
ALTER TABLE [dbo].[system_config] DROP CONSTRAINT [DF__system_co__value__4316F928]
GO
ALTER TABLE [dbo].[role] DROP CONSTRAINT [DF__role__name__3D5E1FD2]
GO
ALTER TABLE [dbo].[permission] DROP CONSTRAINT [DF__permission__pid__3A81B327]
GO
ALTER TABLE [dbo].[permission] DROP CONSTRAINT [DF__permissio__value__398D8EEE]
GO
ALTER TABLE [dbo].[permission] DROP CONSTRAINT [DF__permission__name__38996AB5]
GO
ALTER TABLE [dbo].[oauth_user] DROP CONSTRAINT [DF__oauth_use__acces__35BCFE0A]
GO
ALTER TABLE [dbo].[oauth_user] DROP CONSTRAINT [DF__oauth_use__login__34C8D9D1]
GO
ALTER TABLE [dbo].[oauth_user] DROP CONSTRAINT [DF__oauth_user__type__33D4B598]
GO
ALTER TABLE [dbo].[notification] DROP CONSTRAINT [DF__notificati__read__30F848ED]
GO
ALTER TABLE [dbo].[notification] DROP CONSTRAINT [DF__notificat__actio__300424B4]
GO
ALTER TABLE [dbo].[code] DROP CONSTRAINT [DF__code__used__286302EC]
GO
ALTER TABLE [dbo].[code] DROP CONSTRAINT [DF__code__code__276EDEB3]
GO
ALTER TABLE [dbo].[admin_user] DROP CONSTRAINT [DF__admin_use__passw__24927208]
GO
ALTER TABLE [dbo].[admin_user] DROP CONSTRAINT [DF__admin_use__usern__239E4DCF]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[topic_tag]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_tag]') AND type in (N'U'))
DROP TABLE [dbo].[topic_tag]
GO
/****** Object:  Table [dbo].[topic]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic]') AND type in (N'U'))
DROP TABLE [dbo].[topic]
GO
/****** Object:  Table [dbo].[tag]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tag]') AND type in (N'U'))
DROP TABLE [dbo].[tag]
GO
/****** Object:  Table [dbo].[system_config]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[system_config]') AND type in (N'U'))
DROP TABLE [dbo].[system_config]
GO
/****** Object:  Table [dbo].[sensitive_word]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sensitive_word]') AND type in (N'U'))
DROP TABLE [dbo].[sensitive_word]
GO
/****** Object:  Table [dbo].[role_permission]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role_permission]') AND type in (N'U'))
DROP TABLE [dbo].[role_permission]
GO
/****** Object:  Table [dbo].[role]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role]') AND type in (N'U'))
DROP TABLE [dbo].[role]
GO
/****** Object:  Table [dbo].[permission]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permission]') AND type in (N'U'))
DROP TABLE [dbo].[permission]
GO
/****** Object:  Table [dbo].[oauth_user]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_user]') AND type in (N'U'))
DROP TABLE [dbo].[oauth_user]
GO
/****** Object:  Table [dbo].[notification]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notification]') AND type in (N'U'))
DROP TABLE [dbo].[notification]
GO
/****** Object:  Table [dbo].[flyway_schema_history]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[flyway_schema_history]') AND type in (N'U'))
DROP TABLE [dbo].[flyway_schema_history]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comment]') AND type in (N'U'))
DROP TABLE [dbo].[comment]
GO
/****** Object:  Table [dbo].[collect]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[collect]') AND type in (N'U'))
DROP TABLE [dbo].[collect]
GO
/****** Object:  Table [dbo].[code]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[code]') AND type in (N'U'))
DROP TABLE [dbo].[code]
GO
/****** Object:  Table [dbo].[admin_user]    Script Date: 2021/8/5 10:24:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[admin_user]') AND type in (N'U'))
DROP TABLE [dbo].[admin_user]
GO
/****** Object:  Table [dbo].[admin_user]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin_user](
	[id] [int]  NOT NULL,
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[in_time] [datetime] NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [pk_admin_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[code]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[code](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[code] [varchar](255) NOT NULL,
	[in_time] [datetime] NOT NULL,
	[expire_time] [datetime] NOT NULL,
	[email] [varchar](255) NULL,
	[mobile] [varchar](255) NULL,
	[used] [bit] NOT NULL,
 CONSTRAINT [pk_code] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[collect]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[collect](
	[topic_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[in_time] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[id] [int]  NOT NULL,
	[content] [varchar](max) NOT NULL,
	[topic_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[in_time] [datetime] NOT NULL,
	[comment_id] [int] NULL,
	[up_ids] [varchar](max) NULL,
 CONSTRAINT [pk_comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[flyway_schema_history]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[flyway_schema_history](
	[installed_rank] [int] NOT NULL,
	[version] [varchar](50) NULL,
	[description] [varchar](200) NOT NULL,
	[type] [varchar](20) NOT NULL,
	[script] [varchar](1000) NOT NULL,
	[checksum] [int] NULL,
	[installed_by] [varchar](100) NOT NULL,
	[installed_on] [datetime] NOT NULL,
	[execution_time] [int] NOT NULL,
	[success] [smallint] NOT NULL,
 CONSTRAINT [pk_flyway_schema_history] PRIMARY KEY CLUSTERED 
(
	[installed_rank] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notification]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification](
	[id] [int]  NOT NULL,
	[topic_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[target_user_id] [int] NOT NULL,
	[action] [varchar](255) NOT NULL,
	[in_time] [datetime] NOT NULL,
	[read] [bit] NOT NULL,
	[content] [varchar](max) NULL,
 CONSTRAINT [pk_notification] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[oauth_user]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oauth_user](
	[id] [int]  NOT NULL,
	[oauth_id] [int] NULL,
	[type] [varchar](255) NOT NULL,
	[login] [varchar](255) NOT NULL,
	[access_token] [varchar](255) NOT NULL,
	[in_time] [datetime] NOT NULL,
	[bio] [varchar](max) NULL,
	[email] [varchar](255) NULL,
	[user_id] [int] NOT NULL,
	[refresh_token] [varchar](255) NULL,
	[union_id] [varchar](255) NULL,
	[expires_in] [varchar](255) NULL,
 CONSTRAINT [pk_oauth_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[permission]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permission](
	[id] [int]  NOT NULL,
	[name] [varchar](255) NOT NULL,
	[value] [varchar](255) NOT NULL,
	[pid] [int] NOT NULL,
 CONSTRAINT [pk_permission] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [int]  NOT NULL,
	[name] [varchar](255) NOT NULL,
 CONSTRAINT [pk_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role_permission]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role_permission](
	[role_id] [int] NOT NULL,
	[permission_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sensitive_word]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sensitive_word](
	[id] [int]  NOT NULL,
	[word] [varchar](255) NOT NULL,
 CONSTRAINT [pk_sensitive_word] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[system_config]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[system_config](
	[id] [bigint]  NOT NULL,
	[key] [varchar](255) NULL,
	[value] [varchar](255) NULL,
	[description] [varchar](1000) NOT NULL,
	[pid] [int] NOT NULL,
	[type] [varchar](255) NULL,
	[option] [varchar](255) NULL,
	[reboot] [int] NOT NULL,
 CONSTRAINT [pk_system_config] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag](
	[id] [int]  NOT NULL,
	[name] [varchar](255) NOT NULL,
	[description] [varchar](1000) NULL,
	[icon] [varchar](255) NULL,
	[topic_count] [int] NOT NULL,
	[in_time] [datetime] NOT NULL,
 CONSTRAINT [pk_tag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic](
	[id] [int]  NOT NULL,
	[title] [varchar](255) NOT NULL,
	[content] [varchar](max) NULL,
	[in_time] [datetime] NOT NULL,
	[modify_time] [datetime] NULL,
	[user_id] [int] NOT NULL,
	[comment_count] [int] NOT NULL,
	[collect_count] [int] NOT NULL,
	[view] [int] NOT NULL,
	[top] [bit] NOT NULL,
	[good] [bit] NOT NULL,
	[up_ids] [varchar](max) NULL,
 CONSTRAINT [pk_topic] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[topic_tag]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_tag](
	[tag_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2021/8/5 10:24:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int]  NOT NULL,
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NULL,
	[avatar] [varchar](1000) NULL,
	[email] [varchar](255) NULL,
	[mobile] [varchar](255) NULL,
	[website] [varchar](255) NULL,
	[bio] [varchar](1000) NULL,
	[score] [int] NOT NULL,
	[in_time] [datetime] NOT NULL,
	[token] [varchar](255) NOT NULL,
	[telegram_name] [varchar](255) NULL,
	[email_notification] [bit] NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [pk_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[admin_user] ADD  DEFAULT ('') FOR [username]
GO
ALTER TABLE [dbo].[admin_user] ADD  DEFAULT ('') FOR [password]
GO
ALTER TABLE [dbo].[code] ADD  DEFAULT ('') FOR [code]
GO
ALTER TABLE [dbo].[code] ADD  DEFAULT ((1)) FOR [used]
GO
ALTER TABLE [dbo].[notification] ADD  DEFAULT ('') FOR [action]
GO
ALTER TABLE [dbo].[notification] ADD  DEFAULT ((1)) FOR [read]
GO
ALTER TABLE [dbo].[oauth_user] ADD  DEFAULT ('') FOR [type]
GO
ALTER TABLE [dbo].[oauth_user] ADD  DEFAULT ('') FOR [login]
GO
ALTER TABLE [dbo].[oauth_user] ADD  DEFAULT ('') FOR [access_token]
GO
ALTER TABLE [dbo].[permission] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[permission] ADD  DEFAULT ('') FOR [value]
GO
ALTER TABLE [dbo].[permission] ADD  DEFAULT ((0)) FOR [pid]
GO
ALTER TABLE [dbo].[role] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[system_config] ADD  DEFAULT ('') FOR [value]
GO
ALTER TABLE [dbo].[system_config] ADD  DEFAULT ((0)) FOR [pid]
GO
ALTER TABLE [dbo].[system_config] ADD  DEFAULT ((0)) FOR [reboot]
GO
ALTER TABLE [dbo].[tag] ADD  DEFAULT ('') FOR [name]
GO
ALTER TABLE [dbo].[tag] ADD  DEFAULT ((0)) FOR [topic_count]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ('') FOR [title]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((0)) FOR [comment_count]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((0)) FOR [collect_count]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((0)) FOR [view]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((1)) FOR [top]
GO
ALTER TABLE [dbo].[topic] ADD  DEFAULT ((1)) FOR [good]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('') FOR [username]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('') FOR [password]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((0)) FOR [score]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('') FOR [token]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [email_notification]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[admin_user]  WITH NOCHECK ADD  CONSTRAINT [admin_user_ibfk_1] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[admin_user] CHECK CONSTRAINT [admin_user_ibfk_1]
GO
ALTER TABLE [dbo].[code]  WITH NOCHECK ADD  CONSTRAINT [code_ibfk_1] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[code] CHECK CONSTRAINT [code_ibfk_1]
GO
ALTER TABLE [dbo].[collect]  WITH NOCHECK ADD  CONSTRAINT [collect_ibfk_1] FOREIGN KEY([topic_id])
REFERENCES [dbo].[topic] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[collect] CHECK CONSTRAINT [collect_ibfk_1]
GO
ALTER TABLE [dbo].[collect]  WITH NOCHECK ADD  CONSTRAINT [collect_ibfk_2] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[collect] CHECK CONSTRAINT [collect_ibfk_2]
GO
ALTER TABLE [dbo].[comment]  WITH NOCHECK ADD  CONSTRAINT [comment_ibfk_1] FOREIGN KEY([topic_id])
REFERENCES [dbo].[topic] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [comment_ibfk_1]
GO
ALTER TABLE [dbo].[comment]  WITH NOCHECK ADD  CONSTRAINT [comment_ibfk_2] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comment] CHECK CONSTRAINT [comment_ibfk_2]
GO
ALTER TABLE [dbo].[notification]  WITH NOCHECK ADD  CONSTRAINT [notification_ibfk_1] FOREIGN KEY([topic_id])
REFERENCES [dbo].[topic] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[notification] CHECK CONSTRAINT [notification_ibfk_1]
GO
ALTER TABLE [dbo].[notification]  WITH NOCHECK ADD  CONSTRAINT [notification_ibfk_2] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[notification] CHECK CONSTRAINT [notification_ibfk_2]
GO
ALTER TABLE [dbo].[notification]  WITH NOCHECK ADD  CONSTRAINT [notification_ibfk_3] FOREIGN KEY([target_user_id])
REFERENCES [dbo].[user] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[notification] CHECK CONSTRAINT [notification_ibfk_3]
GO
ALTER TABLE [dbo].[oauth_user]  WITH NOCHECK ADD  CONSTRAINT [oauth_user_ibfk_1] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[oauth_user] CHECK CONSTRAINT [oauth_user_ibfk_1]
GO
ALTER TABLE [dbo].[role_permission]  WITH NOCHECK ADD  CONSTRAINT [role_permission_ibfk_1] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[role_permission] CHECK CONSTRAINT [role_permission_ibfk_1]
GO
ALTER TABLE [dbo].[role_permission]  WITH NOCHECK ADD  CONSTRAINT [role_permission_ibfk_2] FOREIGN KEY([permission_id])
REFERENCES [dbo].[permission] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[role_permission] CHECK CONSTRAINT [role_permission_ibfk_2]
GO
ALTER TABLE [dbo].[topic]  WITH NOCHECK ADD  CONSTRAINT [topic_ibfk_1] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[topic] CHECK CONSTRAINT [topic_ibfk_1]
GO
ALTER TABLE [dbo].[topic_tag]  WITH NOCHECK ADD  CONSTRAINT [topic_tag_ibfk_1] FOREIGN KEY([tag_id])
REFERENCES [dbo].[tag] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[topic_tag] CHECK CONSTRAINT [topic_tag_ibfk_1]
GO
ALTER TABLE [dbo].[topic_tag]  WITH NOCHECK ADD  CONSTRAINT [topic_tag_ibfk_2] FOREIGN KEY([topic_id])
REFERENCES [dbo].[topic] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[topic_tag] CHECK CONSTRAINT [topic_tag_ibfk_2]
GO
