-- USE [homeland_base]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__following__14270015]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__followers__1332DBDC]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__failed_at__123EB7A3]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__replies_c__114A936A]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__topics_co__10566F31]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__sign_in_c__0F624AF8]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__state__0E6E26BF]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__email_pub__0D7A0286]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__likes_co__04E4BC85]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__replies___03F0984C]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__grade__02FC7413]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__lock_nod__02084FDA]
GO
ALTER TABLE [dbo].[sections] DROP CONSTRAINT [DF__sections__sort__75A278F5]
GO
ALTER TABLE [dbo].[replies] DROP CONSTRAINT [DF__replies__likes_c__72C60C4A]
GO
ALTER TABLE [dbo].[replies] DROP CONSTRAINT [DF__replies__state__71D1E811]
GO
ALTER TABLE [dbo].[page_versions] DROP CONSTRAINT [DF__page_vers__versi__6D0D32F4]
GO
ALTER TABLE [dbo].[oauth_applications] DROP CONSTRAINT [DF__oauth_app__confi__628FA481]
GO
ALTER TABLE [dbo].[oauth_applications] DROP CONSTRAINT [DF__oauth_app__level__619B8048]
GO
ALTER TABLE [dbo].[notes] DROP CONSTRAINT [DF__notes__publish__4D94879B]
GO
ALTER TABLE [dbo].[notes] DROP CONSTRAINT [DF__notes__changes_c__4CA06362]
GO
ALTER TABLE [dbo].[notes] DROP CONSTRAINT [DF__notes__word_coun__4BAC3F29]
GO
ALTER TABLE [dbo].[nodes] DROP CONSTRAINT [DF__nodes__topics_co__48CFD27E]
GO
ALTER TABLE [dbo].[nodes] DROP CONSTRAINT [DF__nodes__sort__47DBAE45]
GO
ALTER TABLE [dbo].[locations] DROP CONSTRAINT [DF__locations__users__3F466844]
GO
ALTER TABLE [dbo].[commentable_pages] DROP CONSTRAINT [DF__commentab__comme__32E0915F]
GO
/****** Object:  Table [dbo].[walking_deads]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[walking_deads]') AND type in (N'U'))
DROP TABLE [dbo].[walking_deads]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[user_ssos]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_ssos]') AND type in (N'U'))
DROP TABLE [dbo].[user_ssos]
GO
/****** Object:  Table [dbo].[topics]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topics]') AND type in (N'U'))
DROP TABLE [dbo].[topics]
GO
/****** Object:  Table [dbo].[test_documents]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[test_documents]') AND type in (N'U'))
DROP TABLE [dbo].[test_documents]
GO
/****** Object:  Table [dbo].[team_users]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[team_users]') AND type in (N'U'))
DROP TABLE [dbo].[team_users]
GO
/****** Object:  Table [dbo].[settings]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[settings]') AND type in (N'U'))
DROP TABLE [dbo].[settings]
GO
/****** Object:  Table [dbo].[sections]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sections]') AND type in (N'U'))
DROP TABLE [dbo].[sections]
GO
/****** Object:  Table [dbo].[replies]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[replies]') AND type in (N'U'))
DROP TABLE [dbo].[replies]
GO
/****** Object:  Table [dbo].[photos]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[photos]') AND type in (N'U'))
DROP TABLE [dbo].[photos]
GO
/****** Object:  Table [dbo].[page_versions]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[page_versions]') AND type in (N'U'))
DROP TABLE [dbo].[page_versions]
GO
/****** Object:  Table [dbo].[oauth_applications]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_applications]') AND type in (N'U'))
DROP TABLE [dbo].[oauth_applications]
GO
/****** Object:  Table [dbo].[oauth_access_tokens]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_access_tokens]') AND type in (N'U'))
DROP TABLE [dbo].[oauth_access_tokens]
GO
/****** Object:  Table [dbo].[oauth_access_grants]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_access_grants]') AND type in (N'U'))
DROP TABLE [dbo].[oauth_access_grants]
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notifications]') AND type in (N'U'))
DROP TABLE [dbo].[notifications]
GO
/****** Object:  Table [dbo].[notes]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notes]') AND type in (N'U'))
DROP TABLE [dbo].[notes]
GO
/****** Object:  Table [dbo].[nodes]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nodes]') AND type in (N'U'))
DROP TABLE [dbo].[nodes]
GO
/****** Object:  Table [dbo].[monkeys]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[monkeys]') AND type in (N'U'))
DROP TABLE [dbo].[monkeys]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[locations]') AND type in (N'U'))
DROP TABLE [dbo].[locations]
GO
/****** Object:  Table [dbo].[exception_tracks]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[exception_tracks]') AND type in (N'U'))
DROP TABLE [dbo].[exception_tracks]
GO
/****** Object:  Table [dbo].[devices]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[devices]') AND type in (N'U'))
DROP TABLE [dbo].[devices]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
DROP TABLE [dbo].[comments]
GO
/****** Object:  Table [dbo].[commentable_pages]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[commentable_pages]') AND type in (N'U'))
DROP TABLE [dbo].[commentable_pages]
GO
/****** Object:  Table [dbo].[authorizations]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[authorizations]') AND type in (N'U'))
DROP TABLE [dbo].[authorizations]
GO
/****** Object:  Table [dbo].[actions]    Script Date: 2021/8/5 10:13:25 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[actions]') AND type in (N'U'))
DROP TABLE [dbo].[actions]
GO
/****** Object:  Table [dbo].[actions]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[actions](
	[id] [int]  NOT NULL,
	[action_type] [varchar](max) NOT NULL,
	[action_option] [varchar](max) NULL,
	[target_type] [varchar](max) NULL,
	[target_id] [int] NULL,
	[user_type] [varchar](max) NULL,
	[user_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_actions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[authorizations]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorizations](
	[id] [int]  NOT NULL,
	[provider] [varchar](max) NOT NULL,
	[uid] [varchar](1000) NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_authorizations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[commentable_pages]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[commentable_pages](
	[id] [bigint]  NOT NULL,
	[name] [varchar](max) NULL,
	[user_id] [int] NULL,
	[comments_count] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_commentable_pages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int]  NOT NULL,
	[body] [varchar](max) NOT NULL,
	[user_id] [int] NOT NULL,
	[commentable_type] [varchar](max) NULL,
	[commentable_id] [int] NULL,
	[deleted_at] [datetime] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_comments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[devices]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[devices](
	[id] [int]  NOT NULL,
	[platform] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[token] [varchar](max) NOT NULL,
	[last_actived_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_devices] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[exception_tracks]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[exception_tracks](
	[id] [int]  NOT NULL,
	[title] [varchar](max) NULL,
	[body] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_exception_tracks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[locations]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locations](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[users_count] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_locations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[monkeys]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[monkeys](
	[id] [bigint]  NOT NULL,
	[name] [varchar](max) NULL,
	[user_id] [int] NULL,
	[comments_count] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_monkeys] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[nodes]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nodes](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[summary] [varchar](max) NULL,
	[section_id] [int] NOT NULL,
	[sort] [int] NOT NULL,
	[topics_count] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_nodes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[notes]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notes](
	[id] [int]  NOT NULL,
	[title] [varchar](max) NOT NULL,
	[body] [varchar](max) NOT NULL,
	[user_id] [int] NOT NULL,
	[word_count] [int] NOT NULL,
	[changes_count] [int] NOT NULL,
	[publish] [smallint] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_notes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notifications](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[actor_id] [int] NULL,
	[notify_type] [varchar](max) NOT NULL,
	[target_type] [varchar](max) NULL,
	[target_id] [int] NULL,
	[second_target_type] [varchar](max) NULL,
	[second_target_id] [int] NULL,
	[third_target_type] [varchar](max) NULL,
	[third_target_id] [int] NULL,
	[read_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_notifications] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[oauth_access_grants]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oauth_access_grants](
	[id] [int]  NOT NULL,
	[resource_owner_id] [int] NOT NULL,
	[application_id] [int] NOT NULL,
	[token] [varchar](max) NOT NULL,
	[expires_in] [bigint] NULL,
	[redirect_uri] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[revoked_at] [datetime] NULL,
	[scopes] [varchar](max) NULL,
 CONSTRAINT [pk_oauth_access_grants] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[oauth_access_tokens]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oauth_access_tokens](
	[id] [int]  NOT NULL,
	[resource_owner_id] [int] NULL,
	[application_id] [int] NULL,
	[token] [varchar](max) NOT NULL,
	[refresh_token] [varchar](max) NULL,
	[expires_in] [bigint] NULL,
	[revoked_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[scopes] [varchar](max) NULL,
 CONSTRAINT [pk_oauth_access_tokens] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[oauth_applications]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oauth_applications](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[uid] [varchar](max) NOT NULL,
	[secret] [varchar](max) NOT NULL,
	[redirect_uri] [varchar](max) NOT NULL,
	[scopes] [varchar](max) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[owner_id] [int] NULL,
	[owner_type] [varchar](max) NULL,
	[level] [int] NOT NULL,
	[confidential] [smallint] NOT NULL,
 CONSTRAINT [pk_oauth_applications] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[page_versions]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[page_versions](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[page_id] [int] NOT NULL,
	[version] [int] NOT NULL,
	[slug] [varchar](max) NOT NULL,
	[title] [varchar](max) NOT NULL,
	[desc] [varchar](max) NOT NULL,
	[body] [varchar](max) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_page_versions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[photos]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[photos](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[image] [varchar](max) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_photos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[replies]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[replies](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[body] [varchar](max) NOT NULL,
	[state] [int] NOT NULL,
	[likes_count] [int] NULL,
	[mentioned_user_ids] [varchar](max) NULL,
	[deleted_at] [datetime] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[action] [varchar](max) NULL,
	[target_type] [varchar](max) NULL,
	[target_id] [varchar](max) NULL,
	[reply_to_id] [int] NULL,
 CONSTRAINT [pk_replies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[sections]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sections](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[sort] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_sections] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[settings]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[settings](
	[id] [int]  NOT NULL,
	[var] [varchar](max) NOT NULL,
	[value] [varchar](max) NULL,
	[thing_id] [int] NULL,
	[thing_type] [varchar](30) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_settings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[team_users]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[team_users](
	[id] [int]  NOT NULL,
	[team_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[role] [int] NULL,
	[status] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_team_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test_documents]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test_documents](
	[id] [bigint]  NOT NULL,
	[user_id] [int] NULL,
	[reply_to_id] [int] NULL,
	[mentioned_user_ids] [varchar](max) NULL,
	[body] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_test_documents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[topics]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topics](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[node_id] [int] NOT NULL,
	[title] [varchar](max) NOT NULL,
	[body] [varchar](max) NOT NULL,
	[last_reply_id] [int] NULL,
	[last_reply_user_id] [int] NULL,
	[last_reply_user_login] [varchar](max) NULL,
	[node_name] [varchar](max) NULL,
	[who_deleted] [varchar](max) NULL,
	[last_active_mark] [int] NULL,
	[lock_node] [smallint] NULL,
	[suggested_at] [datetime] NULL,
	[grade] [int] NULL,
	[replied_at] [datetime] NULL,
	[replies_count] [int] NOT NULL,
	[likes_count] [int] NULL,
	[mentioned_user_ids] [varchar](max) NULL,
	[deleted_at] [datetime] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[closed_at] [datetime] NULL,
	[team_id] [int] NULL,
 CONSTRAINT [pk_topics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_ssos]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_ssos](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[uid] [varchar](max) NOT NULL,
	[username] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[avatar_url] [varchar](max) NULL,
	[last_payload] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_user_ssos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int]  NOT NULL,
	[login] [varchar](100) NOT NULL,
	[name] [varchar](100) NULL,
	[email] [varchar](max) NOT NULL,
	[email_md5] [varchar](max) NOT NULL,
	[email_public] [smallint] NOT NULL,
	[location] [varchar](max) NULL,
	[location_id] [int] NULL,
	[bio] [varchar](max) NULL,
	[website] [varchar](max) NULL,
	[company] [varchar](max) NULL,
	[github] [varchar](max) NULL,
	[twitter] [varchar](max) NULL,
	[avatar] [varchar](max) NULL,
	[state] [int] NOT NULL,
	[tagline] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[encrypted_password] [varchar](max) NOT NULL,
	[reset_password_token] [varchar](max) NULL,
	[reset_password_sent_at] [datetime] NULL,
	[remember_created_at] [datetime] NULL,
	[sign_in_count] [int] NOT NULL,
	[current_sign_in_at] [datetime] NULL,
	[last_sign_in_at] [datetime] NULL,
	[current_sign_in_ip] [varchar](max) NULL,
	[last_sign_in_ip] [varchar](max) NULL,
	[password_salt] [varchar](max) NOT NULL,
	[persistence_token] [varchar](max) NOT NULL,
	[single_access_token] [varchar](max) NOT NULL,
	[perishable_token] [varchar](max) NOT NULL,
	[topics_count] [int] NOT NULL,
	[replies_count] [int] NOT NULL,
	[follower_ids] [varchar](max) NULL,
	[type] [varchar](20) NULL,
	[failed_attempts] [int] NOT NULL,
	[unlock_token] [varchar](max) NULL,
	[locked_at] [datetime] NULL,
	[team_users_count] [int] NULL,
	[followers_count] [int] NULL,
	[following_count] [int] NULL,
 CONSTRAINT [pk_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[walking_deads]    Script Date: 2021/8/5 10:13:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[walking_deads](
	[id] [bigint]  NOT NULL,
	[name] [varchar](max) NULL,
	[tag] [varchar](max) NULL,
	[deleted_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_walking_deads] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
ALTER TABLE [dbo].[commentable_pages] ADD  DEFAULT ((0)) FOR [comments_count]
GO
ALTER TABLE [dbo].[locations] ADD  DEFAULT ((0)) FOR [users_count]
GO
ALTER TABLE [dbo].[nodes] ADD  DEFAULT ((0)) FOR [sort]
GO
ALTER TABLE [dbo].[nodes] ADD  DEFAULT ((0)) FOR [topics_count]
GO
ALTER TABLE [dbo].[notes] ADD  DEFAULT ((0)) FOR [word_count]
GO
ALTER TABLE [dbo].[notes] ADD  DEFAULT ((0)) FOR [changes_count]
GO
ALTER TABLE [dbo].[notes] ADD  DEFAULT ((0)) FOR [publish]
GO
ALTER TABLE [dbo].[oauth_applications] ADD  DEFAULT ((0)) FOR [level]
GO
ALTER TABLE [dbo].[oauth_applications] ADD  DEFAULT ((1)) FOR [confidential]
GO
ALTER TABLE [dbo].[page_versions] ADD  DEFAULT ((0)) FOR [version]
GO
ALTER TABLE [dbo].[replies] ADD  DEFAULT ((1)) FOR [state]
GO
ALTER TABLE [dbo].[replies] ADD  DEFAULT ((0)) FOR [likes_count]
GO
ALTER TABLE [dbo].[sections] ADD  DEFAULT ((0)) FOR [sort]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [lock_node]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [grade]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [replies_count]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [likes_count]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [email_public]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [state]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [sign_in_count]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [topics_count]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [replies_count]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [failed_attempts]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [followers_count]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [following_count]
GO
