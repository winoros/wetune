-- USE [sagan_base]
GO
ALTER TABLE [dbo].[project] DROP CONSTRAINT [DF__project__display__2B3F6F97]
GO
ALTER TABLE [dbo].[project] DROP CONSTRAINT [DF__project__rendere__2A4B4B5E]
GO
ALTER TABLE [dbo].[project] DROP CONSTRAINT [DF__project__raw_ove__29572725]
GO
/****** Object:  Table [dbo].[spring_tools_platform_downloads]    Script Date: 2021/9/5 23:03:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spring_tools_platform_downloads]') AND type in (N'U'))
DROP TABLE [dbo].[spring_tools_platform_downloads]
GO
/****** Object:  Table [dbo].[spring_tools_platform]    Script Date: 2021/9/5 23:03:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spring_tools_platform]') AND type in (N'U'))
DROP TABLE [dbo].[spring_tools_platform]
GO
/****** Object:  Table [dbo].[schema_version]    Script Date: 2021/9/5 23:03:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schema_version]') AND type in (N'U'))
DROP TABLE [dbo].[schema_version]
GO
/****** Object:  Table [dbo].[project_sample_list]    Script Date: 2021/9/5 23:03:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_sample_list]') AND type in (N'U'))
DROP TABLE [dbo].[project_sample_list]
GO
/****** Object:  Table [dbo].[project_repository]    Script Date: 2021/9/5 23:03:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_repository]') AND type in (N'U'))
DROP TABLE [dbo].[project_repository]
GO
/****** Object:  Table [dbo].[project_release_list]    Script Date: 2021/9/5 23:03:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_release_list]') AND type in (N'U'))
DROP TABLE [dbo].[project_release_list]
GO
/****** Object:  Table [dbo].[project]    Script Date: 2021/9/5 23:03:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project]') AND type in (N'U'))
DROP TABLE [dbo].[project]
GO
/****** Object:  Table [dbo].[post_public_slug_aliases]    Script Date: 2021/9/5 23:03:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_public_slug_aliases]') AND type in (N'U'))
DROP TABLE [dbo].[post_public_slug_aliases]
GO
/****** Object:  Table [dbo].[post]    Script Date: 2021/9/5 23:03:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post]') AND type in (N'U'))
DROP TABLE [dbo].[post]
GO
/****** Object:  Table [dbo].[member_profile]    Script Date: 2021/9/5 23:03:51 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[member_profile]') AND type in (N'U'))
DROP TABLE [dbo].[member_profile]
GO
/****** Object:  Table [dbo].[member_profile]    Script Date: 2021/9/5 23:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member_profile](
	[id] [bigint]  NOT NULL,
	[avatar_url] [varchar](255) NULL,
	[bio] [varchar](255) NULL,
	[latitude] [float] NULL,
	[longitude] [float] NULL,
	[github_id] [bigint] NULL,
	[github_username] [varchar](255) NULL,
	[gravatar_email] [varchar](255) NULL,
	[hidden] [smallint] NULL,
	[lanyrd_username] [varchar](255) NULL,
	[location] [varchar](255) NULL,
	[name] [varchar](255) NULL,
	[speakerdeck_username] [varchar](255) NULL,
	[twitter_username] [varchar](255) NULL,
	[username] [varchar](255) NOT NULL,
	[video_embeds] [varchar](255) NULL,
	[job_title] [varchar](255) NULL,
 CONSTRAINT [pk_member_profile] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post]    Script Date: 2021/9/5 23:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post](
	[id] [bigint]  NOT NULL,
	[broadcast] [smallint] NOT NULL,
	[category] [varchar](255) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[draft] [smallint] NOT NULL,
	[format] [varchar](255) NULL,
	[public_slug] [varchar](255) NULL,
	[publish_at] [datetime] NULL,
	[raw_content] [varchar](255) NOT NULL,
	[rendered_content] [varchar](255) NOT NULL,
	[rendered_summary] [varchar](255) NOT NULL,
	[title] [varchar](255) NOT NULL,
	[author_id] [int] NOT NULL,
 CONSTRAINT [pk_post] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_public_slug_aliases]    Script Date: 2021/9/5 23:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_public_slug_aliases](
	[post_id] [int] NOT NULL,
	[public_slug_aliases] [varchar](255) NOT NULL,
 CONSTRAINT [pk_post_public_slug_aliases] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC,
	[public_slug_aliases] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project]    Script Date: 2021/9/5 23:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project](
	[id] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
	[repo_url] [varchar](255) NULL,
	[category] [varchar](255) NULL,
	[site_url] [varchar](255) NULL,
	[stack_overflow_tags] [varchar](255) NULL,
	[raw_boot_config] [varchar](255) NULL,
	[rendered_boot_config] [varchar](255) NULL,
	[raw_overview] [varchar](255) NULL,
	[rendered_overview] [varchar](255) NULL,
	[parent_project_id] [varchar](255) NULL,
	[display_order] [int] NOT NULL,
 CONSTRAINT [pk_project] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_release_list]    Script Date: 2021/9/5 23:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_release_list](
	[project_id] [varchar](255) NOT NULL,
	[repository_id] [varchar](255) NULL,
	[api_doc_url] [varchar](255) NULL,
	[artifact_id] [varchar](255) NULL,
	[group_id] [varchar](255) NULL,
	[is_current] [smallint] NULL,
	[ref_doc_url] [varchar](255) NULL,
	[release_status] [int] NULL,
	[version_name] [varchar](255) NOT NULL,
 CONSTRAINT [pk_project_release_list] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC,
	[version_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_repository]    Script Date: 2021/9/5 23:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_repository](
	[id] [varchar](255) NOT NULL,
	[name] [varchar](255) NULL,
	[url] [varchar](255) NULL,
	[snapshots_enabled] [smallint] NULL,
 CONSTRAINT [pk_project_repository] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_sample_list]    Script Date: 2021/9/5 23:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_sample_list](
	[title] [varchar](255) NULL,
	[description] [varchar](255) NULL,
	[url] [varchar](255) NULL,
	[display_order] [int] NOT NULL,
	[project_id] [varchar](255) NOT NULL,
 CONSTRAINT [pk_project_sample_list] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC,
	[display_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schema_version]    Script Date: 2021/9/5 23:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schema_version](
	[version_rank] [int] NOT NULL,
	[installed_rank] [int] NOT NULL,
	[version] [varchar](50) NOT NULL,
	[description] [varchar](200) NOT NULL,
	[type] [varchar](20) NOT NULL,
	[script] [varchar](1000) NOT NULL,
	[checksum] [int] NULL,
	[installed_by] [varchar](100) NOT NULL,
	[installed_on] [datetime] NOT NULL,
	[execution_time] [int] NOT NULL,
	[success] [smallint] NOT NULL,
 CONSTRAINT [pk_schema_version] PRIMARY KEY CLUSTERED 
(
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spring_tools_platform]    Script Date: 2021/9/5 23:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spring_tools_platform](
	[id] [varchar](255) NOT NULL,
 CONSTRAINT [pk_spring_tools_platform] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spring_tools_platform_downloads]    Script Date: 2021/9/5 23:03:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spring_tools_platform_downloads](
	[spring_tools_platform_id] [varchar](255) NOT NULL,
	[download_url] [varchar](255) NOT NULL,
	[variant] [varchar](255) NOT NULL,
	[label] [varchar](255) NOT NULL,
 CONSTRAINT [pk_spring_tools_platform_downloads] PRIMARY KEY CLUSTERED 
(
	[spring_tools_platform_id] ASC,
	[variant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[project] ADD  DEFAULT ('') FOR [raw_overview]
GO
ALTER TABLE [dbo].[project] ADD  DEFAULT ('') FOR [rendered_overview]
GO
ALTER TABLE [dbo].[project] ADD  DEFAULT ((255)) FOR [display_order]
GO
