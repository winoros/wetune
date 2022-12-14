-- USE [publiccms_base]
GO
ALTER TABLE [dbo].[sys_user] DROP CONSTRAINT [DF__sys_user__owns_a__797309D9]
GO
ALTER TABLE [dbo].[sys_user] DROP CONSTRAINT [DF__sys_user__weak_p__787EE5A0]
GO
ALTER TABLE [dbo].[sys_module] DROP CONSTRAINT [DF__sys_module__menu__68487DD7]
GO
ALTER TABLE [dbo].[sys_extend_field] DROP CONSTRAINT [DF__sys_extend__sort__656C112C]
GO
ALTER TABLE [dbo].[sys_dept] DROP CONSTRAINT [DF__sys_dept__owns_a__571DF1D5]
GO
ALTER TABLE [dbo].[sys_dept] DROP CONSTRAINT [DF__sys_dept__max_so__5629CD9C]
GO
ALTER TABLE [dbo].[cms_content] DROP CONSTRAINT [DF__cms_conten__sort__2F10007B]
GO
ALTER TABLE [dbo].[cms_category] DROP CONSTRAINT [DF__cms_catego__sort__24927208]
GO
ALTER TABLE [dbo].[cms_category] DROP CONSTRAINT [DF__cms_categ__conta__239E4DCF]
GO
/****** Object:  Table [dbo].[sys_user_token]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user_token]') AND type in (N'U'))
DROP TABLE [dbo].[sys_user_token]
GO
/****** Object:  Table [dbo].[sys_user]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_user]') AND type in (N'U'))
DROP TABLE [dbo].[sys_user]
GO
/****** Object:  Table [dbo].[sys_task]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_task]') AND type in (N'U'))
DROP TABLE [dbo].[sys_task]
GO
/****** Object:  Table [dbo].[sys_site]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_site]') AND type in (N'U'))
DROP TABLE [dbo].[sys_site]
GO
/****** Object:  Table [dbo].[sys_role_user]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role_user]') AND type in (N'U'))
DROP TABLE [dbo].[sys_role_user]
GO
/****** Object:  Table [dbo].[sys_role_module]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role_module]') AND type in (N'U'))
DROP TABLE [dbo].[sys_role_module]
GO
/****** Object:  Table [dbo].[sys_role_authorized]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role_authorized]') AND type in (N'U'))
DROP TABLE [dbo].[sys_role_authorized]
GO
/****** Object:  Table [dbo].[sys_role]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_role]') AND type in (N'U'))
DROP TABLE [dbo].[sys_role]
GO
/****** Object:  Table [dbo].[sys_module_lang]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_module_lang]') AND type in (N'U'))
DROP TABLE [dbo].[sys_module_lang]
GO
/****** Object:  Table [dbo].[sys_module]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_module]') AND type in (N'U'))
DROP TABLE [dbo].[sys_module]
GO
/****** Object:  Table [dbo].[sys_extend_field]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_extend_field]') AND type in (N'U'))
DROP TABLE [dbo].[sys_extend_field]
GO
/****** Object:  Table [dbo].[sys_extend]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_extend]') AND type in (N'U'))
DROP TABLE [dbo].[sys_extend]
GO
/****** Object:  Table [dbo].[sys_email_token]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_email_token]') AND type in (N'U'))
DROP TABLE [dbo].[sys_email_token]
GO
/****** Object:  Table [dbo].[sys_domain]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_domain]') AND type in (N'U'))
DROP TABLE [dbo].[sys_domain]
GO
/****** Object:  Table [dbo].[sys_dept_page]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dept_page]') AND type in (N'U'))
DROP TABLE [dbo].[sys_dept_page]
GO
/****** Object:  Table [dbo].[sys_dept_config]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dept_config]') AND type in (N'U'))
DROP TABLE [dbo].[sys_dept_config]
GO
/****** Object:  Table [dbo].[sys_dept_category]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dept_category]') AND type in (N'U'))
DROP TABLE [dbo].[sys_dept_category]
GO
/****** Object:  Table [dbo].[sys_dept]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_dept]') AND type in (N'U'))
DROP TABLE [dbo].[sys_dept]
GO
/****** Object:  Table [dbo].[sys_config_data]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_config_data]') AND type in (N'U'))
DROP TABLE [dbo].[sys_config_data]
GO
/****** Object:  Table [dbo].[sys_cluster]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_cluster]') AND type in (N'U'))
DROP TABLE [dbo].[sys_cluster]
GO
/****** Object:  Table [dbo].[sys_app_token]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_app_token]') AND type in (N'U'))
DROP TABLE [dbo].[sys_app_token]
GO
/****** Object:  Table [dbo].[sys_app_client]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_app_client]') AND type in (N'U'))
DROP TABLE [dbo].[sys_app_client]
GO
/****** Object:  Table [dbo].[sys_app]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sys_app]') AND type in (N'U'))
DROP TABLE [dbo].[sys_app]
GO
/****** Object:  Table [dbo].[log_upload]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[log_upload]') AND type in (N'U'))
DROP TABLE [dbo].[log_upload]
GO
/****** Object:  Table [dbo].[log_task]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[log_task]') AND type in (N'U'))
DROP TABLE [dbo].[log_task]
GO
/****** Object:  Table [dbo].[log_operate]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[log_operate]') AND type in (N'U'))
DROP TABLE [dbo].[log_operate]
GO
/****** Object:  Table [dbo].[log_login]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[log_login]') AND type in (N'U'))
DROP TABLE [dbo].[log_login]
GO
/****** Object:  Table [dbo].[cms_word]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_word]') AND type in (N'U'))
DROP TABLE [dbo].[cms_word]
GO
/****** Object:  Table [dbo].[cms_tag_type]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_tag_type]') AND type in (N'U'))
DROP TABLE [dbo].[cms_tag_type]
GO
/****** Object:  Table [dbo].[cms_tag]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_tag]') AND type in (N'U'))
DROP TABLE [dbo].[cms_tag]
GO
/****** Object:  Table [dbo].[cms_place_attribute]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_place_attribute]') AND type in (N'U'))
DROP TABLE [dbo].[cms_place_attribute]
GO
/****** Object:  Table [dbo].[cms_place]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_place]') AND type in (N'U'))
DROP TABLE [dbo].[cms_place]
GO
/****** Object:  Table [dbo].[cms_dictionary_data]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_dictionary_data]') AND type in (N'U'))
DROP TABLE [dbo].[cms_dictionary_data]
GO
/****** Object:  Table [dbo].[cms_dictionary]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_dictionary]') AND type in (N'U'))
DROP TABLE [dbo].[cms_dictionary]
GO
/****** Object:  Table [dbo].[cms_content_related]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_content_related]') AND type in (N'U'))
DROP TABLE [dbo].[cms_content_related]
GO
/****** Object:  Table [dbo].[cms_content_file]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_content_file]') AND type in (N'U'))
DROP TABLE [dbo].[cms_content_file]
GO
/****** Object:  Table [dbo].[cms_content_attribute]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_content_attribute]') AND type in (N'U'))
DROP TABLE [dbo].[cms_content_attribute]
GO
/****** Object:  Table [dbo].[cms_content]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_content]') AND type in (N'U'))
DROP TABLE [dbo].[cms_content]
GO
/****** Object:  Table [dbo].[cms_comment]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_comment]') AND type in (N'U'))
DROP TABLE [dbo].[cms_comment]
GO
/****** Object:  Table [dbo].[cms_category_type]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_category_type]') AND type in (N'U'))
DROP TABLE [dbo].[cms_category_type]
GO
/****** Object:  Table [dbo].[cms_category_model]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_category_model]') AND type in (N'U'))
DROP TABLE [dbo].[cms_category_model]
GO
/****** Object:  Table [dbo].[cms_category_attribute]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_category_attribute]') AND type in (N'U'))
DROP TABLE [dbo].[cms_category_attribute]
GO
/****** Object:  Table [dbo].[cms_category]    Script Date: 2021/9/5 23:01:50 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cms_category]') AND type in (N'U'))
DROP TABLE [dbo].[cms_category]
GO
/****** Object:  Table [dbo].[cms_category]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_category](
	[id] [int]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[parent_id] [int] NULL,
	[type_id] [int] NULL,
	[child_ids] [varchar](max) NULL,
	[tag_type_ids] [varchar](max) NULL,
	[code] [varchar](50) NOT NULL,
	[template_path] [varchar](255) NULL,
	[path] [varchar](1000) NULL,
	[only_url] [smallint] NOT NULL,
	[has_static] [smallint] NOT NULL,
	[url] [varchar](1000) NULL,
	[content_path] [varchar](1000) NULL,
	[contain_child] [smallint] NOT NULL,
	[page_size] [int] NULL,
	[allow_contribute] [smallint] NOT NULL,
	[sort] [int] NOT NULL,
	[hidden] [smallint] NOT NULL,
	[disabled] [smallint] NOT NULL,
	[extend_id] [int] NULL,
 CONSTRAINT [pk_cms_category] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[cms_category_attribute]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_category_attribute](
	[category_id] [int] NOT NULL,
	[title] [varchar](80) NULL,
	[keywords] [varchar](100) NULL,
	[description] [varchar](300) NULL,
	[data] [varchar](max) NULL,
 CONSTRAINT [pk_cms_category_attribute] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[cms_category_model]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_category_model](
	[category_id] [int] NOT NULL,
	[model_id] [varchar](20) NOT NULL,
	[template_path] [varchar](200) NULL,
 CONSTRAINT [pk_cms_category_model] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC,
	[model_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cms_category_type]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_category_type](
	[id] [int]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[sort] [int] NOT NULL,
	[extend_id] [int] NULL,
 CONSTRAINT [pk_cms_category_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cms_comment]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_comment](
	[id] [bigint]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[reply_id] [bigint] NULL,
	[reply_user_id] [bigint] NULL,
	[content_id] [bigint] NOT NULL,
	[check_user_id] [bigint] NULL,
	[check_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[create_date] [datetime] NOT NULL,
	[status] [int] NOT NULL,
	[disabled] [smallint] NOT NULL,
	[text] [varchar](max) NULL,
 CONSTRAINT [pk_cms_comment] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[cms_content]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_content](
	[id] [bigint]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[title] [varchar](255) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[check_user_id] [bigint] NULL,
	[category_id] [int] NOT NULL,
	[model_id] [varchar](20) NOT NULL,
	[parent_id] [bigint] NULL,
	[quote_content_id] [bigint] NULL,
	[copied] [smallint] NOT NULL,
	[author] [varchar](50) NULL,
	[editor] [varchar](50) NULL,
	[only_url] [smallint] NOT NULL,
	[has_images] [smallint] NOT NULL,
	[has_files] [smallint] NOT NULL,
	[has_static] [smallint] NOT NULL,
	[url] [varchar](1000) NULL,
	[description] [varchar](300) NULL,
	[tag_ids] [varchar](max) NULL,
	[dictionar_values] [varchar](max) NULL,
	[cover] [varchar](255) NULL,
	[childs] [int] NOT NULL,
	[scores] [int] NOT NULL,
	[comments] [int] NOT NULL,
	[clicks] [int] NOT NULL,
	[publish_date] [datetime] NOT NULL,
	[expiry_date] [datetime] NULL,
	[check_date] [datetime] NULL,
	[update_date] [datetime] NULL,
	[create_date] [datetime] NOT NULL,
	[sort] [int] NOT NULL,
	[status] [int] NOT NULL,
	[disabled] [smallint] NOT NULL,
 CONSTRAINT [pk_cms_content] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[cms_content_attribute]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_content_attribute](
	[content_id] [bigint] NOT NULL,
	[source] [varchar](50) NULL,
	[source_url] [varchar](1000) NULL,
	[data] [varchar](max) NULL,
	[search_text] [varchar](max) NULL,
	[text] [varchar](max) NULL,
	[word_count] [int] NOT NULL,
 CONSTRAINT [pk_cms_content_attribute] PRIMARY KEY CLUSTERED 
(
	[content_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[cms_content_file]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_content_file](
	[id] [bigint]  NOT NULL,
	[content_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[file_path] [varchar](255) NOT NULL,
	[file_type] [varchar](20) NOT NULL,
	[file_size] [bigint] NOT NULL,
	[clicks] [int] NOT NULL,
	[sort] [int] NOT NULL,
	[description] [varchar](300) NULL,
 CONSTRAINT [pk_cms_content_file] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cms_content_related]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_content_related](
	[id] [bigint]  NOT NULL,
	[content_id] [bigint] NOT NULL,
	[related_content_id] [bigint] NULL,
	[user_id] [bigint] NOT NULL,
	[url] [varchar](1000) NULL,
	[title] [varchar](255) NULL,
	[description] [varchar](300) NULL,
	[clicks] [int] NOT NULL,
	[sort] [int] NOT NULL,
 CONSTRAINT [pk_cms_content_related] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cms_dictionary]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_dictionary](
	[id] [varchar](20) NOT NULL,
	[site_id] [smallint] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[multiple] [smallint] NOT NULL,
 CONSTRAINT [pk_cms_dictionary] PRIMARY KEY CLUSTERED 
(
	[id] ASC,
	[site_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cms_dictionary_data]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_dictionary_data](
	[dictionary_id] [varchar](20) NOT NULL,
	[site_id] [smallint] NOT NULL,
	[value] [varchar](50) NOT NULL,
	[text] [varchar](100) NOT NULL,
 CONSTRAINT [pk_cms_dictionary_data] PRIMARY KEY CLUSTERED 
(
	[dictionary_id] ASC,
	[site_id] ASC,
	[value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cms_place]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_place](
	[id] [bigint]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[path] [varchar](100) NOT NULL,
	[user_id] [bigint] NULL,
	[check_user_id] [bigint] NULL,
	[item_type] [varchar](50) NULL,
	[item_id] [bigint] NULL,
	[title] [varchar](255) NOT NULL,
	[url] [varchar](1000) NULL,
	[cover] [varchar](255) NULL,
	[create_date] [datetime] NOT NULL,
	[publish_date] [datetime] NOT NULL,
	[expiry_date] [datetime] NULL,
	[status] [int] NOT NULL,
	[clicks] [int] NOT NULL,
	[disabled] [smallint] NOT NULL,
 CONSTRAINT [pk_cms_place] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cms_place_attribute]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_place_attribute](
	[place_id] [bigint] NOT NULL,
	[data] [varchar](max) NULL,
 CONSTRAINT [pk_cms_place_attribute] PRIMARY KEY CLUSTERED 
(
	[place_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[cms_tag]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_tag](
	[id] [bigint]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[type_id] [int] NULL,
	[search_count] [int] NOT NULL,
 CONSTRAINT [pk_cms_tag] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cms_tag_type]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_tag_type](
	[id] [int]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [pk_cms_tag_type] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cms_word]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cms_word](
	[id] [bigint]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[name] [varchar](100) NOT NULL,
	[search_count] [int] NOT NULL,
	[hidden] [smallint] NOT NULL,
	[create_date] [datetime] NOT NULL,
 CONSTRAINT [pk_cms_word] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_login]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_login](
	[id] [bigint]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[user_id] [bigint] NULL,
	[ip] [varchar](64) NOT NULL,
	[channel] [varchar](50) NOT NULL,
	[result] [smallint] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[error_password] [varchar](100) NULL,
 CONSTRAINT [pk_log_login] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log_operate]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_operate](
	[id] [bigint]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[user_id] [bigint] NULL,
	[channel] [varchar](50) NOT NULL,
	[operate] [varchar](40) NOT NULL,
	[ip] [varchar](64) NULL,
	[create_date] [datetime] NOT NULL,
	[content] [varchar](max) NOT NULL,
 CONSTRAINT [pk_log_operate] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[log_task]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_task](
	[id] [bigint]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[task_id] [int] NOT NULL,
	[begintime] [datetime] NOT NULL,
	[endtime] [datetime] NULL,
	[success] [smallint] NOT NULL,
	[result] [varchar](max) NULL,
 CONSTRAINT [pk_log_task] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[log_upload]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log_upload](
	[id] [bigint]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[channel] [varchar](50) NOT NULL,
	[original_name] [varchar](255) NULL,
	[file_type] [varchar](20) NOT NULL,
	[file_size] [bigint] NOT NULL,
	[ip] [varchar](64) NULL,
	[create_date] [datetime] NOT NULL,
	[file_path] [varchar](500) NOT NULL,
 CONSTRAINT [pk_log_upload] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_app]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_app](
	[id] [int]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[channel] [varchar](50) NOT NULL,
	[app_key] [varchar](50) NOT NULL,
	[app_secret] [varchar](50) NOT NULL,
	[authorized_apis] [varchar](max) NULL,
	[expiry_minutes] [int] NULL,
 CONSTRAINT [pk_sys_app] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[sys_app_client]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_app_client](
	[id] [bigint]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[channel] [varchar](20) NOT NULL,
	[uuid] [varchar](50) NOT NULL,
	[user_id] [bigint] NULL,
	[client_version] [varchar](50) NULL,
	[last_login_date] [datetime] NULL,
	[last_login_ip] [varchar](64) NULL,
	[create_date] [datetime] NOT NULL,
	[disabled] [smallint] NOT NULL,
 CONSTRAINT [pk_sys_app_client] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_app_token]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_app_token](
	[auth_token] [varchar](40) NOT NULL,
	[app_id] [int] NOT NULL,
	[create_date] [datetime] NOT NULL,
	[expiry_date] [datetime] NULL,
 CONSTRAINT [pk_sys_app_token] PRIMARY KEY CLUSTERED 
(
	[auth_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_cluster]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_cluster](
	[uuid] [varchar](40) NOT NULL,
	[create_date] [datetime] NOT NULL,
	[heartbeat_date] [datetime] NOT NULL,
	[master] [smallint] NOT NULL,
	[cms_version] [varchar](20) NULL,
 CONSTRAINT [pk_sys_cluster] PRIMARY KEY CLUSTERED 
(
	[uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_config_data]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_config_data](
	[site_id] [smallint] NOT NULL,
	[code] [varchar](50) NOT NULL,
	[data] [varchar](max) NOT NULL,
 CONSTRAINT [pk_sys_config_data] PRIMARY KEY CLUSTERED 
(
	[site_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[sys_dept]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dept](
	[id] [int]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[parent_id] [int] NULL,
	[description] [varchar](300) NULL,
	[user_id] [bigint] NULL,
	[max_sort] [int] NOT NULL,
	[owns_all_category] [smallint] NOT NULL,
	[owns_all_page] [smallint] NOT NULL,
	[owns_all_config] [smallint] NOT NULL,
 CONSTRAINT [pk_sys_dept] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_dept_category]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dept_category](
	[dept_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
 CONSTRAINT [pk_sys_dept_category] PRIMARY KEY CLUSTERED 
(
	[dept_id] ASC,
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_dept_config]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dept_config](
	[dept_id] [int] NOT NULL,
	[config] [varchar](100) NOT NULL,
 CONSTRAINT [pk_sys_dept_config] PRIMARY KEY CLUSTERED 
(
	[dept_id] ASC,
	[config] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_dept_page]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_dept_page](
	[dept_id] [int] NOT NULL,
	[page] [varchar](100) NOT NULL,
 CONSTRAINT [pk_sys_dept_page] PRIMARY KEY CLUSTERED 
(
	[dept_id] ASC,
	[page] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_domain]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_domain](
	[name] [varchar](100) NOT NULL,
	[site_id] [smallint] NOT NULL,
	[wild] [smallint] NOT NULL,
	[path] [varchar](100) NULL,
 CONSTRAINT [pk_sys_domain] PRIMARY KEY CLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_email_token]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_email_token](
	[auth_token] [varchar](40) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[email] [varchar](100) NOT NULL,
	[create_date] [datetime] NOT NULL,
	[expiry_date] [datetime] NOT NULL,
 CONSTRAINT [pk_sys_email_token] PRIMARY KEY CLUSTERED 
(
	[auth_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_extend]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_extend](
	[id] [int]  NOT NULL,
	[item_type] [varchar](20) NOT NULL,
	[item_id] [int] NOT NULL,
 CONSTRAINT [pk_sys_extend] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_extend_field]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_extend_field](
	[extend_id] [int] NOT NULL,
	[code] [varchar](20) NOT NULL,
	[required] [smallint] NOT NULL,
	[searchable] [smallint] NOT NULL,
	[maxlength] [int] NULL,
	[name] [varchar](20) NOT NULL,
	[description] [varchar](100) NULL,
	[input_type] [varchar](20) NOT NULL,
	[default_value] [varchar](50) NULL,
	[dictionary_id] [varchar](20) NULL,
	[sort] [int] NOT NULL,
 CONSTRAINT [pk_sys_extend_field] PRIMARY KEY CLUSTERED 
(
	[extend_id] ASC,
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_module]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_module](
	[id] [varchar](30) NOT NULL,
	[url] [varchar](255) NULL,
	[authorized_url] [varchar](max) NULL,
	[attached] [varchar](50) NULL,
	[parent_id] [varchar](30) NULL,
	[menu] [smallint] NOT NULL,
	[sort] [int] NOT NULL,
 CONSTRAINT [pk_sys_module] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[sys_module_lang]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_module_lang](
	[module_id] [varchar](30) NOT NULL,
	[lang] [varchar](20) NOT NULL,
	[value] [varchar](100) NULL,
 CONSTRAINT [pk_sys_module_lang] PRIMARY KEY CLUSTERED 
(
	[module_id] ASC,
	[lang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role](
	[id] [int]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[owns_all_right] [smallint] NOT NULL,
	[show_all_module] [smallint] NOT NULL,
 CONSTRAINT [pk_sys_role] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role_authorized]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role_authorized](
	[role_id] [int] NOT NULL,
	[url] [varchar](100) NOT NULL,
 CONSTRAINT [pk_sys_role_authorized] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[url] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role_module]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role_module](
	[role_id] [int] NOT NULL,
	[module_id] [varchar](30) NOT NULL,
 CONSTRAINT [pk_sys_role_module] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[module_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_role_user]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_role_user](
	[role_id] [int] NOT NULL,
	[user_id] [bigint] NOT NULL,
 CONSTRAINT [pk_sys_role_user] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_site]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_site](
	[id] [smallint]  NOT NULL,
	[parent_id] [smallint] NULL,
	[name] [varchar](50) NOT NULL,
	[use_static] [smallint] NOT NULL,
	[site_path] [varchar](255) NOT NULL,
	[use_ssi] [smallint] NOT NULL,
	[dynamic_path] [varchar](255) NOT NULL,
	[disabled] [smallint] NOT NULL,
 CONSTRAINT [pk_sys_site] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_task]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_task](
	[id] [int]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[status] [int] NOT NULL,
	[cron_expression] [varchar](50) NOT NULL,
	[description] [varchar](300) NULL,
	[file_path] [varchar](255) NULL,
	[update_date] [datetime] NULL,
 CONSTRAINT [pk_sys_task] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sys_user]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_user](
	[id] [bigint]  NOT NULL,
	[site_id] [smallint] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[password] [varchar](128) NOT NULL,
	[salt] [varchar](20) NULL,
	[weak_password] [smallint] NOT NULL,
	[nick_name] [varchar](45) NOT NULL,
	[dept_id] [int] NULL,
	[owns_all_content] [smallint] NOT NULL,
	[roles] [varchar](max) NULL,
	[email] [varchar](100) NULL,
	[email_checked] [smallint] NOT NULL,
	[superuser_access] [smallint] NOT NULL,
	[disabled] [smallint] NOT NULL,
	[last_login_date] [datetime] NULL,
	[last_login_ip] [varchar](64) NULL,
	[login_count] [int] NOT NULL,
	[registered_date] [datetime] NULL,
 CONSTRAINT [pk_sys_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[sys_user_token]    Script Date: 2021/9/5 23:01:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sys_user_token](
	[auth_token] [varchar](40) NOT NULL,
	[site_id] [smallint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[channel] [varchar](50) NOT NULL,
	[create_date] [datetime] NOT NULL,
	[expiry_date] [datetime] NULL,
	[login_ip] [varchar](64) NOT NULL,
 CONSTRAINT [pk_sys_user_token] PRIMARY KEY CLUSTERED 
(
	[auth_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[cms_category] ADD  DEFAULT ((1)) FOR [contain_child]
GO
ALTER TABLE [dbo].[cms_category] ADD  DEFAULT ((0)) FOR [sort]
GO
ALTER TABLE [dbo].[cms_content] ADD  DEFAULT ((0)) FOR [sort]
GO
ALTER TABLE [dbo].[sys_dept] ADD  DEFAULT ((1000)) FOR [max_sort]
GO
ALTER TABLE [dbo].[sys_dept] ADD  DEFAULT ((1)) FOR [owns_all_config]
GO
ALTER TABLE [dbo].[sys_extend_field] ADD  DEFAULT ((0)) FOR [sort]
GO
ALTER TABLE [dbo].[sys_module] ADD  DEFAULT ((1)) FOR [menu]
GO
ALTER TABLE [dbo].[sys_user] ADD  DEFAULT ((0)) FOR [weak_password]
GO
ALTER TABLE [dbo].[sys_user] ADD  DEFAULT ((1)) FOR [owns_all_content]
GO
