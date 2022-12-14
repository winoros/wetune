-- USE [halo_base]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__email__7D439ABD]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__descripti__7C4F7684]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__avatar__7B5B524B]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__deleted__7A672E12]
GO
ALTER TABLE [dbo].[theme_settings] DROP CONSTRAINT [DF__theme_set__delet__778AC167]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__deleted__74AE54BC]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__visits__71D1E811]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__top_prior__70DDC3D8]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__thumbnail__6FE99F9F]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__template__6EF57B66]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__summary__6E01572D]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__status__6D0D32F4]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__password__6C190EBB]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__likes__6B24EA82]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__disallow___6A30C649]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__create_fr__693CA210]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__deleted__68487DD7]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__type__6754599E]
GO
ALTER TABLE [dbo].[post_tags] DROP CONSTRAINT [DF__post_tags__delet__6477ECF3]
GO
ALTER TABLE [dbo].[post_categories] DROP CONSTRAINT [DF__post_cate__delet__619B8048]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__thumbnai__5EBF139D]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__team__5DCAEF64]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__location__5CD6CB2B]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__descript__5BE2A6F2]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__deleted__5AEE82B9]
GO
ALTER TABLE [dbo].[options] DROP CONSTRAINT [DF__options__deleted__5812160E]
GO
ALTER TABLE [dbo].[metas] DROP CONSTRAINT [DF__metas__deleted__5535A963]
GO
ALTER TABLE [dbo].[metas] DROP CONSTRAINT [DF__metas__type__5441852A]
GO
ALTER TABLE [dbo].[menus] DROP CONSTRAINT [DF__menus__team__5165187F]
GO
ALTER TABLE [dbo].[menus] DROP CONSTRAINT [DF__menus__target__5070F446]
GO
ALTER TABLE [dbo].[menus] DROP CONSTRAINT [DF__menus__priority__4F7CD00D]
GO
ALTER TABLE [dbo].[menus] DROP CONSTRAINT [DF__menus__parent_id__4E88ABD4]
GO
ALTER TABLE [dbo].[menus] DROP CONSTRAINT [DF__menus__icon__4D94879B]
GO
ALTER TABLE [dbo].[menus] DROP CONSTRAINT [DF__menus__deleted__4CA06362]
GO
ALTER TABLE [dbo].[logs] DROP CONSTRAINT [DF__logs__log_key__49C3F6B7]
GO
ALTER TABLE [dbo].[logs] DROP CONSTRAINT [DF__logs__ip_address__48CFD27E]
GO
ALTER TABLE [dbo].[logs] DROP CONSTRAINT [DF__logs__deleted__47DBAE45]
GO
ALTER TABLE [dbo].[links] DROP CONSTRAINT [DF__links__team__44FF419A]
GO
ALTER TABLE [dbo].[links] DROP CONSTRAINT [DF__links__priority__440B1D61]
GO
ALTER TABLE [dbo].[links] DROP CONSTRAINT [DF__links__logo__4316F928]
GO
ALTER TABLE [dbo].[links] DROP CONSTRAINT [DF__links__descripti__4222D4EF]
GO
ALTER TABLE [dbo].[links] DROP CONSTRAINT [DF__links__deleted__412EB0B6]
GO
ALTER TABLE [dbo].[journals] DROP CONSTRAINT [DF__journals__type__3E52440B]
GO
ALTER TABLE [dbo].[journals] DROP CONSTRAINT [DF__journals__likes__3D5E1FD2]
GO
ALTER TABLE [dbo].[journals] DROP CONSTRAINT [DF__journals__delete__3C69FB99]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__user_a__398D8EEE]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__top_pr__38996AB5]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__status__37A5467C]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__parent__36B12243]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__is_adm__35BCFE0A]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__ip_add__34C8D9D1]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__gravat__33D4B598]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__author__32E0915F]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__delete__31EC6D26]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__type__30F848ED]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__paren__2E1BDC42]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__descr__2D27B809]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__delet__2C3393D0]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__width__29572725]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachment__type__286302EC]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__thumb__276EDEB3]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__suffi__267ABA7A]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__heigh__25869641]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__file___24927208]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__delet__239E4DCF]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[theme_settings]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[theme_settings]') AND type in (N'U'))
DROP TABLE [dbo].[theme_settings]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tags]') AND type in (N'U'))
DROP TABLE [dbo].[tags]
GO
/****** Object:  Table [dbo].[posts]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[posts]') AND type in (N'U'))
DROP TABLE [dbo].[posts]
GO
/****** Object:  Table [dbo].[post_tags]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_tags]') AND type in (N'U'))
DROP TABLE [dbo].[post_tags]
GO
/****** Object:  Table [dbo].[post_categories]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_categories]') AND type in (N'U'))
DROP TABLE [dbo].[post_categories]
GO
/****** Object:  Table [dbo].[photos]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[photos]') AND type in (N'U'))
DROP TABLE [dbo].[photos]
GO
/****** Object:  Table [dbo].[options]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[options]') AND type in (N'U'))
DROP TABLE [dbo].[options]
GO
/****** Object:  Table [dbo].[metas]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[metas]') AND type in (N'U'))
DROP TABLE [dbo].[metas]
GO
/****** Object:  Table [dbo].[menus]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[menus]') AND type in (N'U'))
DROP TABLE [dbo].[menus]
GO
/****** Object:  Table [dbo].[logs]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[logs]') AND type in (N'U'))
DROP TABLE [dbo].[logs]
GO
/****** Object:  Table [dbo].[links]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[links]') AND type in (N'U'))
DROP TABLE [dbo].[links]
GO
/****** Object:  Table [dbo].[journals]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[journals]') AND type in (N'U'))
DROP TABLE [dbo].[journals]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
DROP TABLE [dbo].[comments]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categories]') AND type in (N'U'))
DROP TABLE [dbo].[categories]
GO
/****** Object:  Table [dbo].[attachments]    Script Date: 2021/9/5 23:00:39 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[attachments]') AND type in (N'U'))
DROP TABLE [dbo].[attachments]
GO
/****** Object:  Table [dbo].[attachments]    Script Date: 2021/9/5 23:00:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attachments](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[file_key] [varchar](2047) NULL,
	[height] [int] NULL,
	[media_type] [varchar](50) NOT NULL,
	[name] [varchar](255) NOT NULL,
	[path] [varchar](1023) NOT NULL,
	[size] [bigint] NOT NULL,
	[suffix] [varchar](50) NULL,
	[thumb_path] [varchar](1023) NULL,
	[type] [int] NULL,
	[width] [int] NULL,
 CONSTRAINT [pk_attachments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[description] [varchar](100) NULL,
	[name] [varchar](50) NOT NULL,
	[parent_id] [int] NULL,
	[slug_name] [varchar](50) NOT NULL,
 CONSTRAINT [pk_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[type] [int] NOT NULL,
	[id] [bigint]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[author] [varchar](50) NOT NULL,
	[author_url] [varchar](512) NULL,
	[content] [varchar](1023) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[gravatar_md5] [varchar](128) NULL,
	[ip_address] [varchar](127) NULL,
	[is_admin] [smallint] NULL,
	[parent_id] [bigint] NULL,
	[post_id] [int] NOT NULL,
	[status] [int] NULL,
	[top_priority] [int] NULL,
	[user_agent] [varchar](512) NULL,
 CONSTRAINT [pk_comments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[journals]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[journals](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[content] [varchar](1023) NOT NULL,
	[likes] [bigint] NULL,
	[type] [int] NULL,
 CONSTRAINT [pk_journals] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[links]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[links](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[description] [varchar](255) NULL,
	[logo] [varchar](1023) NULL,
	[name] [varchar](255) NOT NULL,
	[priority] [int] NULL,
	[team] [varchar](255) NULL,
	[url] [varchar](1023) NOT NULL,
 CONSTRAINT [pk_links] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logs]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logs](
	[id] [bigint]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[content] [varchar](1023) NOT NULL,
	[ip_address] [varchar](127) NULL,
	[log_key] [varchar](1023) NULL,
	[type] [int] NOT NULL,
 CONSTRAINT [pk_logs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menus]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menus](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[icon] [varchar](50) NULL,
	[name] [varchar](50) NOT NULL,
	[parent_id] [int] NULL,
	[priority] [int] NULL,
	[target] [varchar](20) NULL,
	[team] [varchar](255) NULL,
	[url] [varchar](1023) NOT NULL,
 CONSTRAINT [pk_menus] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[metas]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[metas](
	[type] [int] NOT NULL,
	[id] [bigint]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[meta_key] [varchar](100) NOT NULL,
	[post_id] [int] NOT NULL,
	[meta_value] [varchar](1023) NOT NULL,
 CONSTRAINT [pk_metas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[options]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[options](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[option_key] [varchar](100) NOT NULL,
	[option_value] [varchar](1023) NOT NULL,
 CONSTRAINT [pk_options] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[photos]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[photos](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[description] [varchar](255) NULL,
	[location] [varchar](255) NULL,
	[name] [varchar](255) NOT NULL,
	[take_time] [datetime] NOT NULL,
	[team] [varchar](255) NULL,
	[thumbnail] [varchar](1023) NULL,
	[url] [varchar](1023) NOT NULL,
 CONSTRAINT [pk_photos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_categories]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_categories](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[category_id] [int] NULL,
	[post_id] [int] NULL,
 CONSTRAINT [pk_post_categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_tags]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_tags](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[post_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
 CONSTRAINT [pk_post_tags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[posts]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[posts](
	[type] [int] NOT NULL,
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[create_from] [int] NULL,
	[disallow_comment] [int] NULL,
	[edit_time] [datetime] NOT NULL,
	[format_content] [varchar](max) NOT NULL,
	[likes] [bigint] NULL,
	[original_content] [varchar](max) NOT NULL,
	[password] [varchar](255) NULL,
	[status] [int] NULL,
	[summary] [varchar](500) NULL,
	[template] [varchar](255) NULL,
	[thumbnail] [varchar](1023) NULL,
	[title] [varchar](100) NOT NULL,
	[top_priority] [int] NULL,
	[url] [varchar](255) NOT NULL,
	[visits] [bigint] NULL,
 CONSTRAINT [pk_posts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tags](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[slug_name] [varchar](255) NOT NULL,
 CONSTRAINT [pk_tags] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[theme_settings]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theme_settings](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[setting_key] [varchar](255) NOT NULL,
	[theme_id] [varchar](255) NOT NULL,
	[setting_value] [varchar](max) NOT NULL,
 CONSTRAINT [pk_theme_settings] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/9/5 23:00:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int]  NOT NULL,
	[create_time] [datetime] NOT NULL,
	[deleted] [smallint] NULL,
	[update_time] [datetime] NOT NULL,
	[avatar] [varchar](1023) NULL,
	[description] [varchar](1023) NULL,
	[email] [varchar](127) NULL,
	[expire_time] [datetime] NOT NULL,
	[nickname] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[username] [varchar](50) NOT NULL,
 CONSTRAINT [pk_users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT ('') FOR [file_key]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT ((0)) FOR [height]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT ('') FOR [suffix]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT ('') FOR [thumb_path]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT ((0)) FOR [width]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ('') FOR [description]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ('') FOR [author_url]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ('') FOR [gravatar_md5]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ('') FOR [ip_address]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [is_admin]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [top_priority]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ('') FOR [user_agent]
GO
ALTER TABLE [dbo].[journals] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[journals] ADD  DEFAULT ((0)) FOR [likes]
GO
ALTER TABLE [dbo].[journals] ADD  DEFAULT ((1)) FOR [type]
GO
ALTER TABLE [dbo].[links] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[links] ADD  DEFAULT ('') FOR [description]
GO
ALTER TABLE [dbo].[links] ADD  DEFAULT ('') FOR [logo]
GO
ALTER TABLE [dbo].[links] ADD  DEFAULT ((0)) FOR [priority]
GO
ALTER TABLE [dbo].[links] ADD  DEFAULT ('') FOR [team]
GO
ALTER TABLE [dbo].[logs] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[logs] ADD  DEFAULT ('') FOR [ip_address]
GO
ALTER TABLE [dbo].[logs] ADD  DEFAULT ('') FOR [log_key]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT ('') FOR [icon]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT ((0)) FOR [parent_id]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT ((0)) FOR [priority]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT ('_self') FOR [target]
GO
ALTER TABLE [dbo].[menus] ADD  DEFAULT ('') FOR [team]
GO
ALTER TABLE [dbo].[metas] ADD  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[metas] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[options] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT ('') FOR [description]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT ('') FOR [location]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT ('') FOR [team]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT ('') FOR [thumbnail]
GO
ALTER TABLE [dbo].[post_categories] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[post_tags] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [create_from]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [disallow_comment]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [likes]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ('') FOR [password]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ('') FOR [summary]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ('') FOR [template]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ('') FOR [thumbnail]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [top_priority]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [visits]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[theme_settings] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('') FOR [avatar]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('') FOR [description]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ('') FOR [email]
GO
