-- USE [forest_blog_base]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__user_statu__3F115E1A]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__user_url__3E1D39E1]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__user_email__3D2915A8]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__user_nickn__3C34F16F]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__user_pass__3B40CD36]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__user_name__3A4CA8FD]
GO
ALTER TABLE [dbo].[page] DROP CONSTRAINT [DF__page__page_statu__3587F3E0]
GO
ALTER TABLE [dbo].[page] DROP CONSTRAINT [DF__page__page_comme__3493CFA7]
GO
ALTER TABLE [dbo].[page] DROP CONSTRAINT [DF__page__page_view___339FAB6E]
GO
ALTER TABLE [dbo].[options] DROP CONSTRAINT [DF__options__option___30C33EC3]
GO
ALTER TABLE [dbo].[notice] DROP CONSTRAINT [DF__notice__notice_s__2DE6D218]
GO
ALTER TABLE [dbo].[link] DROP CONSTRAINT [DF__link__link_statu__29221CFB]
GO
ALTER TABLE [dbo].[link] DROP CONSTRAINT [DF__link__link_order__282DF8C2]
GO
ALTER TABLE [dbo].[comment] DROP CONSTRAINT [DF__comment__comment__25518C17]
GO
ALTER TABLE [dbo].[category] DROP CONSTRAINT [DF__category__catego__22751F6C]
GO
ALTER TABLE [dbo].[article] DROP CONSTRAINT [DF__article__article__1CBC4616]
GO
ALTER TABLE [dbo].[article] DROP CONSTRAINT [DF__article__article__1BC821DD]
GO
ALTER TABLE [dbo].[article] DROP CONSTRAINT [DF__article__article__1AD3FDA4]
GO
ALTER TABLE [dbo].[article] DROP CONSTRAINT [DF__article__article__19DFD96B]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[tag]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tag]') AND type in (N'U'))
DROP TABLE [dbo].[tag]
GO
/****** Object:  Table [dbo].[page]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[page]') AND type in (N'U'))
DROP TABLE [dbo].[page]
GO
/****** Object:  Table [dbo].[options]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[options]') AND type in (N'U'))
DROP TABLE [dbo].[options]
GO
/****** Object:  Table [dbo].[notice]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notice]') AND type in (N'U'))
DROP TABLE [dbo].[notice]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[menu]') AND type in (N'U'))
DROP TABLE [dbo].[menu]
GO
/****** Object:  Table [dbo].[link]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[link]') AND type in (N'U'))
DROP TABLE [dbo].[link]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comment]') AND type in (N'U'))
DROP TABLE [dbo].[comment]
GO
/****** Object:  Table [dbo].[category]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type in (N'U'))
DROP TABLE [dbo].[category]
GO
/****** Object:  Table [dbo].[article_tag_ref]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[article_tag_ref]') AND type in (N'U'))
DROP TABLE [dbo].[article_tag_ref]
GO
/****** Object:  Table [dbo].[article_category_ref]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[article_category_ref]') AND type in (N'U'))
DROP TABLE [dbo].[article_category_ref]
GO
/****** Object:  Table [dbo].[article]    Script Date: 2021/9/5 22:57:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[article]') AND type in (N'U'))
DROP TABLE [dbo].[article]
GO
/****** Object:  Table [dbo].[article]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[article](
	[article_id] [int]  NOT NULL,
	[article_user_id] [bigint] NULL,
	[article_title] [varchar](255) NULL,
	[article_content] [varchar](max) NULL,
	[article_view_count] [int] NULL,
	[article_comment_count] [int] NULL,
	[article_like_count] [int] NULL,
	[article_is_comment] [bigint] NULL,
	[article_status] [bigint] NULL,
	[article_order] [bigint] NULL,
	[article_update_time] [datetime] NULL,
	[article_create_time] [datetime] NULL,
	[article_summary] [varchar](max) NULL,
 CONSTRAINT [pk_article] PRIMARY KEY CLUSTERED 
(
	[article_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[article_category_ref]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[article_category_ref](
	[article_id] [int] NULL,
	[category_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[article_tag_ref]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[article_tag_ref](
	[article_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
 CONSTRAINT [pk_article_tag_ref] PRIMARY KEY CLUSTERED 
(
	[article_id] ASC,
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [bigint]  NOT NULL,
	[category_pid] [int] NULL,
	[category_name] [varchar](50) NULL,
	[category_description] [varchar](255) NULL,
	[category_order] [bigint] NULL,
	[category_icon] [varchar](20) NULL,
 CONSTRAINT [pk_category] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment](
	[comment_id] [bigint]  NOT NULL,
	[comment_pid] [bigint] NULL,
	[comment_pname] [varchar](255) NULL,
	[comment_article_id] [bigint] NULL,
	[comment_author_name] [varchar](50) NULL,
	[comment_author_email] [varchar](50) NULL,
	[comment_author_url] [varchar](50) NULL,
	[comment_author_avatar] [varchar](100) NULL,
	[comment_content] [varchar](1000) NULL,
	[comment_agent] [varchar](200) NULL,
	[comment_ip] [varchar](50) NULL,
	[comment_create_time] [datetime] NULL,
	[comment_role] [int] NULL,
 CONSTRAINT [pk_comment] PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[link]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[link](
	[link_id] [bigint]  NOT NULL,
	[link_url] [varchar](255) NULL,
	[link_name] [varchar](255) NULL,
	[link_image] [varchar](255) NULL,
	[link_description] [varchar](255) NULL,
	[link_owner_nickname] [varchar](40) NULL,
	[link_owner_contact] [varchar](255) NULL,
	[link_update_time] [datetime] NULL,
	[link_create_time] [datetime] NULL,
	[link_order] [bigint] NULL,
	[link_status] [bigint] NULL,
 CONSTRAINT [pk_link] PRIMARY KEY CLUSTERED 
(
	[link_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[menu_id] [int]  NOT NULL,
	[menu_name] [varchar](255) NULL,
	[menu_url] [varchar](255) NULL,
	[menu_level] [int] NULL,
	[menu_icon] [varchar](255) NULL,
	[menu_order] [int] NULL,
 CONSTRAINT [pk_menu] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notice]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notice](
	[notice_id] [int]  NOT NULL,
	[notice_title] [varchar](255) NULL,
	[notice_content] [varchar](max) NULL,
	[notice_create_time] [datetime] NULL,
	[notice_update_time] [datetime] NULL,
	[notice_status] [bigint] NULL,
	[notice_order] [int] NULL,
 CONSTRAINT [pk_notice] PRIMARY KEY CLUSTERED 
(
	[notice_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[options]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[options](
	[option_id] [int] NOT NULL,
	[option_site_title] [varchar](255) NULL,
	[option_site_descrption] [varchar](255) NULL,
	[option_meta_descrption] [varchar](255) NULL,
	[option_meta_keyword] [varchar](255) NULL,
	[option_aboutsite_avatar] [varchar](255) NULL,
	[option_aboutsite_title] [varchar](255) NULL,
	[option_aboutsite_content] [varchar](255) NULL,
	[option_aboutsite_wechat] [varchar](255) NULL,
	[option_aboutsite_qq] [varchar](255) NULL,
	[option_aboutsite_github] [varchar](255) NULL,
	[option_aboutsite_weibo] [varchar](255) NULL,
	[option_tongji] [varchar](255) NULL,
	[option_status] [int] NULL,
 CONSTRAINT [pk_options] PRIMARY KEY CLUSTERED 
(
	[option_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[page]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[page](
	[page_id] [bigint]  NOT NULL,
	[page_key] [varchar](50) NULL,
	[page_title] [varchar](50) NULL,
	[page_content] [varchar](max) NULL,
	[page_create_time] [datetime] NULL,
	[page_update_time] [datetime] NULL,
	[page_view_count] [bigint] NULL,
	[page_comment_count] [bigint] NULL,
	[page_status] [bigint] NULL,
 CONSTRAINT [pk_page] PRIMARY KEY CLUSTERED 
(
	[page_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[tag]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag](
	[tag_id] [bigint]  NOT NULL,
	[tag_name] [varchar](50) NULL,
	[tag_description] [varchar](255) NULL,
 CONSTRAINT [pk_tag] PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2021/9/5 22:57:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [bigint]  NOT NULL,
	[user_name] [varchar](255) NOT NULL,
	[user_pass] [varchar](255) NOT NULL,
	[user_nickname] [varchar](255) NOT NULL,
	[user_email] [varchar](100) NULL,
	[user_url] [varchar](100) NULL,
	[user_avatar] [varchar](255) NULL,
	[user_last_login_ip] [varchar](255) NULL,
	[user_register_time] [datetime] NULL,
	[user_last_login_time] [datetime] NULL,
	[user_status] [bigint] NULL,
 CONSTRAINT [pk_user] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[article] ADD  DEFAULT ((0)) FOR [article_view_count]
GO
ALTER TABLE [dbo].[article] ADD  DEFAULT ((0)) FOR [article_comment_count]
GO
ALTER TABLE [dbo].[article] ADD  DEFAULT ((0)) FOR [article_like_count]
GO
ALTER TABLE [dbo].[article] ADD  DEFAULT ((1)) FOR [article_status]
GO
ALTER TABLE [dbo].[category] ADD  DEFAULT ((1)) FOR [category_order]
GO
ALTER TABLE [dbo].[comment] ADD  DEFAULT ((0)) FOR [comment_pid]
GO
ALTER TABLE [dbo].[link] ADD  DEFAULT ((1)) FOR [link_order]
GO
ALTER TABLE [dbo].[link] ADD  DEFAULT ((1)) FOR [link_status]
GO
ALTER TABLE [dbo].[notice] ADD  DEFAULT ((1)) FOR [notice_status]
GO
ALTER TABLE [dbo].[options] ADD  DEFAULT ((1)) FOR [option_status]
GO
ALTER TABLE [dbo].[page] ADD  DEFAULT ((0)) FOR [page_view_count]
GO
ALTER TABLE [dbo].[page] ADD  DEFAULT ((0)) FOR [page_comment_count]
GO
ALTER TABLE [dbo].[page] ADD  DEFAULT ((1)) FOR [page_status]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('') FOR [user_name]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('') FOR [user_pass]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('') FOR [user_nickname]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('') FOR [user_email]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ('') FOR [user_url]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT ((1)) FOR [user_status]
GO
