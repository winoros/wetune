-- USE [refinerycms_base]
GO
ALTER TABLE [dbo].[refinery_pages] DROP CONSTRAINT [DF__refinery___child__34C8D9D1]
GO
ALTER TABLE [dbo].[refinery_pages] DROP CONSTRAINT [DF__refinery___skip___33D4B598]
GO
ALTER TABLE [dbo].[refinery_pages] DROP CONSTRAINT [DF__refinery___draft__32E0915F]
GO
ALTER TABLE [dbo].[refinery_pages] DROP CONSTRAINT [DF__refinery___delet__31EC6D26]
GO
ALTER TABLE [dbo].[refinery_pages] DROP CONSTRAINT [DF__refinery___show___30F848ED]
GO
/****** Object:  Table [dbo].[seo_meta]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[seo_meta]') AND type in (N'U'))
DROP TABLE [dbo].[seo_meta]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schema_migrations]') AND type in (N'U'))
DROP TABLE [dbo].[schema_migrations]
GO
/****** Object:  Table [dbo].[refinery_resources]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[refinery_resources]') AND type in (N'U'))
DROP TABLE [dbo].[refinery_resources]
GO
/****** Object:  Table [dbo].[refinery_resource_translations]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[refinery_resource_translations]') AND type in (N'U'))
DROP TABLE [dbo].[refinery_resource_translations]
GO
/****** Object:  Table [dbo].[refinery_pages]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[refinery_pages]') AND type in (N'U'))
DROP TABLE [dbo].[refinery_pages]
GO
/****** Object:  Table [dbo].[refinery_page_translations]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[refinery_page_translations]') AND type in (N'U'))
DROP TABLE [dbo].[refinery_page_translations]
GO
/****** Object:  Table [dbo].[refinery_page_parts]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[refinery_page_parts]') AND type in (N'U'))
DROP TABLE [dbo].[refinery_page_parts]
GO
/****** Object:  Table [dbo].[refinery_page_part_translations]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[refinery_page_part_translations]') AND type in (N'U'))
DROP TABLE [dbo].[refinery_page_part_translations]
GO
/****** Object:  Table [dbo].[refinery_images]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[refinery_images]') AND type in (N'U'))
DROP TABLE [dbo].[refinery_images]
GO
/****** Object:  Table [dbo].[refinery_image_translations]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[refinery_image_translations]') AND type in (N'U'))
DROP TABLE [dbo].[refinery_image_translations]
GO
/****** Object:  Table [dbo].[refinery_crud_dummies]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[refinery_crud_dummies]') AND type in (N'U'))
DROP TABLE [dbo].[refinery_crud_dummies]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/9/5 23:02:58 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ar_internal_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[ar_internal_metadata]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ar_internal_metadata](
	[key] [varchar](255) NOT NULL,
	[value] [varchar](255) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_ar_internal_metadata] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refinery_crud_dummies]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refinery_crud_dummies](
	[id] [bigint]  NOT NULL,
	[parent_id] [int] NULL,
	[lft] [int] NULL,
	[rgt] [int] NULL,
	[depth] [int] NULL,
 CONSTRAINT [pk_refinery_crud_dummies] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refinery_image_translations]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refinery_image_translations](
	[id] [int]  NOT NULL,
	[image_alt] [varchar](255) NULL,
	[image_title] [varchar](255) NULL,
	[locale] [varchar](255) NOT NULL,
	[refinery_image_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_refinery_image_translations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refinery_images]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refinery_images](
	[id] [int]  NOT NULL,
	[image_mime_type] [varchar](255) NULL,
	[image_name] [varchar](255) NULL,
	[image_size] [int] NULL,
	[image_width] [int] NULL,
	[image_height] [int] NULL,
	[image_uid] [varchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[parent_id] [int] NULL,
 CONSTRAINT [pk_refinery_images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refinery_page_part_translations]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refinery_page_part_translations](
	[id] [int]  NOT NULL,
	[body] [varchar](max) NULL,
	[locale] [varchar](255) NOT NULL,
	[refinery_page_part_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_refinery_page_part_translations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[refinery_page_parts]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refinery_page_parts](
	[id] [int]  NOT NULL,
	[refinery_page_id] [int] NULL,
	[slug] [varchar](255) NULL,
	[position] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[title] [varchar](255) NULL,
 CONSTRAINT [pk_refinery_page_parts] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refinery_page_translations]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refinery_page_translations](
	[id] [int]  NOT NULL,
	[title] [varchar](255) NULL,
	[custom_slug] [varchar](255) NULL,
	[menu_title] [varchar](255) NULL,
	[slug] [varchar](255) NULL,
	[locale] [varchar](255) NOT NULL,
	[refinery_page_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_refinery_page_translations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refinery_pages]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refinery_pages](
	[id] [int]  NOT NULL,
	[parent_id] [int] NULL,
	[path] [varchar](255) NULL,
	[show_in_menu] [smallint] NULL,
	[link_url] [varchar](255) NULL,
	[menu_match] [varchar](255) NULL,
	[deletable] [smallint] NULL,
	[draft] [smallint] NULL,
	[skip_to_first_child] [smallint] NULL,
	[lft] [int] NULL,
	[rgt] [int] NULL,
	[depth] [int] NULL,
	[view_template] [varchar](255) NULL,
	[layout_template] [varchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[children_count] [int] NOT NULL,
 CONSTRAINT [pk_refinery_pages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refinery_resource_translations]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refinery_resource_translations](
	[id] [int]  NOT NULL,
	[resource_title] [varchar](255) NULL,
	[locale] [varchar](255) NOT NULL,
	[refinery_resource_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_refinery_resource_translations] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[refinery_resources]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[refinery_resources](
	[id] [int]  NOT NULL,
	[file_mime_type] [varchar](255) NULL,
	[file_name] [varchar](255) NULL,
	[file_size] [int] NULL,
	[file_uid] [varchar](255) NULL,
	[file_ext] [varchar](255) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [pk_refinery_resources] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schema_migrations](
	[version] [varchar](255) NOT NULL,
 CONSTRAINT [pk_schema_migrations] PRIMARY KEY CLUSTERED 
(
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[seo_meta]    Script Date: 2021/9/5 23:02:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[seo_meta](
	[id] [int]  NOT NULL,
	[seo_meta_id] [int] NULL,
	[seo_meta_type] [varchar](255) NULL,
	[browser_title] [varchar](255) NULL,
	[meta_description] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [pk_seo_meta] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
ALTER TABLE [dbo].[refinery_pages] ADD  DEFAULT ((1)) FOR [show_in_menu]
GO
ALTER TABLE [dbo].[refinery_pages] ADD  DEFAULT ((1)) FOR [deletable]
GO
ALTER TABLE [dbo].[refinery_pages] ADD  DEFAULT ((0)) FOR [draft]
GO
ALTER TABLE [dbo].[refinery_pages] ADD  DEFAULT ((0)) FOR [skip_to_first_child]
GO
ALTER TABLE [dbo].[refinery_pages] ADD  DEFAULT ((0)) FOR [children_count]
GO
