-- USE [lobsters_base]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [users$users_invited_by_user_id_fk]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [users$users_disabled_invite_by_user_id_fk]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [users$users_banned_by_user_id_fk]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [taggings$taggings_tag_id_fk]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [taggings$taggings_story_id_fk]
GO
ALTER TABLE [dbo].[tag_filters] DROP CONSTRAINT [tag_filters$tag_filters_user_id_fk]
GO
ALTER TABLE [dbo].[tag_filters] DROP CONSTRAINT [tag_filters$tag_filters_tag_id_fk]
GO
ALTER TABLE [dbo].[suggested_titles] DROP CONSTRAINT [suggested_titles$suggested_titles_user_id_fk]
GO
ALTER TABLE [dbo].[suggested_titles] DROP CONSTRAINT [suggested_titles$suggested_titles_story_id_fk]
GO
ALTER TABLE [dbo].[suggested_taggings] DROP CONSTRAINT [suggested_taggings$suggested_taggings_user_id_fk]
GO
ALTER TABLE [dbo].[suggested_taggings] DROP CONSTRAINT [suggested_taggings$suggested_taggings_tag_id_fk]
GO
ALTER TABLE [dbo].[suggested_taggings] DROP CONSTRAINT [suggested_taggings$suggested_taggings_story_id_fk]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [stories$stories_user_id_fk]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [stories$stories_merged_story_id_fk]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [stories$fk_rails_a04bca56b0]
GO
ALTER TABLE [dbo].[saved_stories] DROP CONSTRAINT [saved_stories$saved_stories_user_id_fk]
GO
ALTER TABLE [dbo].[saved_stories] DROP CONSTRAINT [saved_stories$saved_stories_story_id_fk]
GO
ALTER TABLE [dbo].[read_ribbons] DROP CONSTRAINT [read_ribbons$read_ribbons_user_id_fk]
GO
ALTER TABLE [dbo].[read_ribbons] DROP CONSTRAINT [read_ribbons$read_ribbons_story_id_fk]
GO
ALTER TABLE [dbo].[moderations] DROP CONSTRAINT [moderations$moderations_tag_id_fk]
GO
ALTER TABLE [dbo].[moderations] DROP CONSTRAINT [moderations$moderations_story_id_fk]
GO
ALTER TABLE [dbo].[moderations] DROP CONSTRAINT [moderations$moderations_moderator_user_id_fk]
GO
ALTER TABLE [dbo].[moderations] DROP CONSTRAINT [moderations$moderations_comment_id_fk]
GO
ALTER TABLE [dbo].[mod_notes] DROP CONSTRAINT [mod_notes$mod_notes_user_id_fk]
GO
ALTER TABLE [dbo].[mod_notes] DROP CONSTRAINT [mod_notes$mod_notes_moderator_user_id_fk]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [messages$messages_recipient_user_id_fk]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [messages$messages_ibfk_1]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [messages$messages_hat_id_fk]
GO
ALTER TABLE [dbo].[invitations] DROP CONSTRAINT [invitations$invitations_user_id_fk]
GO
ALTER TABLE [dbo].[invitations] DROP CONSTRAINT [invitations$invitations_new_user_id_fk]
GO
ALTER TABLE [dbo].[hidden_stories] DROP CONSTRAINT [hidden_stories$hidden_stories_user_id_fk]
GO
ALTER TABLE [dbo].[hidden_stories] DROP CONSTRAINT [hidden_stories$hidden_stories_story_id_fk]
GO
ALTER TABLE [dbo].[hats] DROP CONSTRAINT [hats$hats_user_id_fk]
GO
ALTER TABLE [dbo].[hats] DROP CONSTRAINT [hats$hats_granted_by_user_id_fk]
GO
ALTER TABLE [dbo].[hat_requests] DROP CONSTRAINT [hat_requests$hat_requests_user_id_fk]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [comments$comments_user_id_fk]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [comments$comments_story_id_fk]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [comments$comments_parent_comment_id_fk]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [comments$comments_hat_id_fk]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__disabled___540C7B00]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__disabled___531856C7]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__disabled___5224328E]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__deleted_a__51300E55]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__banned_re__503BEA1C]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__banned_by__4F47C5E3]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__banned_at__4E53A1AA]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__karma__4D5F7D71]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__mailing_l__4C6B5938]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__mailing_l__4B7734FF]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__rss_token__4A8310C6]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__pushover___498EEC8D]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__is_modera__489AC854]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__invited_b__47A6A41B]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__session_t__46B27FE2]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__password___45BE5BA9]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__is_admin__44CA3770]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__created_a__43D61337]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__password___42E1EEFE]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__email__41EDCAC5]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__username__40F9A68C]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__permit_by___40058253]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__hotness_mo__3F115E1A]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__inactive__3E1D39E1]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__is_media__3D2915A8]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__privileged__3C34F16F]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__descriptio__3B40CD36]
GO
ALTER TABLE [dbo].[suggested_titles] DROP CONSTRAINT [DF__suggested__title__3A4CA8FD]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__domain___395884C4]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__user_is__3864608B]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__user_is__37703C52]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__twitter__367C1819]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__unavail__3587F3E0]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__merged___3493CFA7]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__comment__339FAB6E]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__hotness__32AB8735]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__is_mode__31B762FC]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__downvot__30C33EC3]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__upvotes__2FCF1A8A]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__is_expi__2EDAF651]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__short_i__2DE6D218]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__title__2CF2ADDF]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__url__2BFE89A6]
GO
ALTER TABLE [dbo].[stories] DROP CONSTRAINT [DF__stories__created__2B0A656D]
GO
ALTER TABLE [dbo].[read_ribbons] DROP CONSTRAINT [DF__read_ribb__is_fo__2A164134]
GO
ALTER TABLE [dbo].[moderations] DROP CONSTRAINT [DF__moderatio__domai__29221CFB]
GO
ALTER TABLE [dbo].[moderations] DROP CONSTRAINT [DF__moderatio__tag_i__282DF8C2]
GO
ALTER TABLE [dbo].[moderations] DROP CONSTRAINT [DF__moderatio__is_fr__2739D489]
GO
ALTER TABLE [dbo].[moderations] DROP CONSTRAINT [DF__moderatio__user___2645B050]
GO
ALTER TABLE [dbo].[moderations] DROP CONSTRAINT [DF__moderatio__comme__25518C17]
GO
ALTER TABLE [dbo].[moderations] DROP CONSTRAINT [DF__moderatio__story__245D67DE]
GO
ALTER TABLE [dbo].[moderations] DROP CONSTRAINT [DF__moderatio__moder__236943A5]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__hat_id__22751F6C]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__delete__2180FB33]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__delete__208CD6FA]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__short___1F98B2C1]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__subjec__1EA48E88]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__has_be__1DB06A4F]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__create__1CBC4616]
GO
ALTER TABLE [dbo].[keystores] DROP CONSTRAINT [DF__keystores__value__1BC821DD]
GO
ALTER TABLE [dbo].[keystores] DROP CONSTRAINT [DF__keystores__key__1AD3FDA4]
GO
ALTER TABLE [dbo].[invitations] DROP CONSTRAINT [DF__invitatio__new_u__19DFD96B]
GO
ALTER TABLE [dbo].[invitations] DROP CONSTRAINT [DF__invitatio__used___18EBB532]
GO
ALTER TABLE [dbo].[invitations] DROP CONSTRAINT [DF__invitation__code__17F790F9]
GO
ALTER TABLE [dbo].[invitations] DROP CONSTRAINT [DF__invitatio__email__17036CC0]
GO
ALTER TABLE [dbo].[invitation_requests] DROP CONSTRAINT [DF__invitatio__ip_ad__160F4887]
GO
ALTER TABLE [dbo].[invitation_requests] DROP CONSTRAINT [DF__invitatio__is_ve__151B244E]
GO
ALTER TABLE [dbo].[invitation_requests] DROP CONSTRAINT [DF__invitation__code__14270015]
GO
ALTER TABLE [dbo].[hats] DROP CONSTRAINT [DF__hats__doffed_at__1332DBDC]
GO
ALTER TABLE [dbo].[hats] DROP CONSTRAINT [DF__hats__modlog_use__123EB7A3]
GO
ALTER TABLE [dbo].[hats] DROP CONSTRAINT [DF__hats__link__114A936A]
GO
ALTER TABLE [dbo].[hats] DROP CONSTRAINT [DF__hats__updated_at__10566F31]
GO
ALTER TABLE [dbo].[hats] DROP CONSTRAINT [DF__hats__created_at__0F624AF8]
GO
ALTER TABLE [dbo].[hat_requests] DROP CONSTRAINT [DF__hat_reque__updat__0E6E26BF]
GO
ALTER TABLE [dbo].[hat_requests] DROP CONSTRAINT [DF__hat_reque__creat__0D7A0286]
GO
ALTER TABLE [dbo].[domains] DROP CONSTRAINT [DF__domains__banned___0C85DE4D]
GO
ALTER TABLE [dbo].[domains] DROP CONSTRAINT [DF__domains__banned___0B91BA14]
GO
ALTER TABLE [dbo].[domains] DROP CONSTRAINT [DF__domains__banned___0A9D95DB]
GO
ALTER TABLE [dbo].[domains] DROP CONSTRAINT [DF__domains__is_trac__09A971A2]
GO
ALTER TABLE [dbo].[domains] DROP CONSTRAINT [DF__domains__domain__08B54D69]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__hat_id__07C12930]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__is_fro__06CD04F7]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__is_mod__05D8E0BE]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__is_del__04E4BC85]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__confid__03F0984C]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__downvo__02FC7413]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__upvote__02084FDA]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__thread__01142BA1]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__parent__00200768]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__short___7F2BE32F]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__update__7E37BEF6]
GO
ALTER TABLE [dbo].[ar_internal_metadata] DROP CONSTRAINT [DF__ar_intern__value__7D439ABD]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tags]') AND type in (N'U'))
DROP TABLE [dbo].[tags]
GO
/****** Object:  Table [dbo].[taggings]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[taggings]') AND type in (N'U'))
DROP TABLE [dbo].[taggings]
GO
/****** Object:  Table [dbo].[tag_filters]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tag_filters]') AND type in (N'U'))
DROP TABLE [dbo].[tag_filters]
GO
/****** Object:  Table [dbo].[suggested_titles]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[suggested_titles]') AND type in (N'U'))
DROP TABLE [dbo].[suggested_titles]
GO
/****** Object:  Table [dbo].[suggested_taggings]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[suggested_taggings]') AND type in (N'U'))
DROP TABLE [dbo].[suggested_taggings]
GO
/****** Object:  Table [dbo].[stories]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stories]') AND type in (N'U'))
DROP TABLE [dbo].[stories]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schema_migrations]') AND type in (N'U'))
DROP TABLE [dbo].[schema_migrations]
GO
/****** Object:  Table [dbo].[saved_stories]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[saved_stories]') AND type in (N'U'))
DROP TABLE [dbo].[saved_stories]
GO
/****** Object:  Table [dbo].[read_ribbons]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[read_ribbons]') AND type in (N'U'))
DROP TABLE [dbo].[read_ribbons]
GO
/****** Object:  Table [dbo].[moderations]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[moderations]') AND type in (N'U'))
DROP TABLE [dbo].[moderations]
GO
/****** Object:  Table [dbo].[mod_notes]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mod_notes]') AND type in (N'U'))
DROP TABLE [dbo].[mod_notes]
GO
/****** Object:  Table [dbo].[messages]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[messages]') AND type in (N'U'))
DROP TABLE [dbo].[messages]
GO
/****** Object:  Table [dbo].[keystores]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[keystores]') AND type in (N'U'))
DROP TABLE [dbo].[keystores]
GO
/****** Object:  Table [dbo].[invitations]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[invitations]') AND type in (N'U'))
DROP TABLE [dbo].[invitations]
GO
/****** Object:  Table [dbo].[invitation_requests]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[invitation_requests]') AND type in (N'U'))
DROP TABLE [dbo].[invitation_requests]
GO
/****** Object:  Table [dbo].[hidden_stories]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hidden_stories]') AND type in (N'U'))
DROP TABLE [dbo].[hidden_stories]
GO
/****** Object:  Table [dbo].[hats]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hats]') AND type in (N'U'))
DROP TABLE [dbo].[hats]
GO
/****** Object:  Table [dbo].[hat_requests]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[hat_requests]') AND type in (N'U'))
DROP TABLE [dbo].[hat_requests]
GO
/****** Object:  Table [dbo].[domains]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[domains]') AND type in (N'U'))
DROP TABLE [dbo].[domains]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
DROP TABLE [dbo].[comments]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 10:16:29 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ar_internal_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[ar_internal_metadata]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 10:16:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ar_internal_metadata](
	[key] [nvarchar](255) NOT NULL,
	[value] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_ar_internal_metadata_key] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [numeric](20, 0)  NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NULL,
	[short_id] [nvarchar](10) NOT NULL,
	[story_id] [numeric](20, 0) NOT NULL,
	[user_id] [numeric](20, 0) NOT NULL,
	[parent_comment_id] [numeric](20, 0) NULL,
	[thread_id] [numeric](20, 0) NULL,
	[comment] [nvarchar](max) NOT NULL,
	[upvotes] [int] NOT NULL,
	[downvotes] [int] NOT NULL,
	[confidence] [decimal](20, 19) NOT NULL,
	[markeddown_comment] [nvarchar](max) NULL,
	[is_deleted] [smallint] NULL,
	[is_moderated] [smallint] NULL,
	[is_from_email] [smallint] NULL,
	[hat_id] [numeric](20, 0) NULL,
 CONSTRAINT [PK_comments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [comments$short_id] UNIQUE NONCLUSTERED 
(
	[short_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[domains]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[domains](
	[id] [bigint]  NOT NULL,
	[domain] [nvarchar](255) NULL,
	[is_tracker] [smallint] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[banned_at] [datetime2](0) NULL,
	[banned_by_user_id] [int] NULL,
	[banned_reason] [nvarchar](200) NULL,
 CONSTRAINT [PK_domains_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hat_requests]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hat_requests](
	[id] [numeric](20, 0)  NOT NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[user_id] [numeric](20, 0) NOT NULL,
	[hat] [nvarchar](255) NOT NULL,
	[link] [nvarchar](255) NOT NULL,
	[comment] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_hat_requests_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[hats]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hats](
	[id] [numeric](20, 0)  NOT NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[user_id] [numeric](20, 0) NOT NULL,
	[granted_by_user_id] [numeric](20, 0) NOT NULL,
	[hat] [nvarchar](255) NOT NULL,
	[link] [nvarchar](255) NULL,
	[modlog_use] [smallint] NULL,
	[doffed_at] [datetime2](0) NULL,
 CONSTRAINT [PK_hats_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hidden_stories]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hidden_stories](
	[id] [numeric](20, 0)  NOT NULL,
	[user_id] [numeric](20, 0) NOT NULL,
	[story_id] [numeric](20, 0) NOT NULL,
 CONSTRAINT [PK_hidden_stories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [hidden_stories$index_hidden_stories_on_user_id_and_story_id] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[story_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invitation_requests]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invitation_requests](
	[id] [numeric](20, 0)  NOT NULL,
	[code] [nvarchar](255) NULL,
	[is_verified] [smallint] NULL,
	[email] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[memo] [nvarchar](max) NULL,
	[ip_address] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_invitation_requests_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[invitations]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invitations](
	[id] [numeric](20, 0)  NOT NULL,
	[user_id] [numeric](20, 0) NOT NULL,
	[email] [nvarchar](255) NULL,
	[code] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[memo] [nvarchar](max) NULL,
	[used_at] [datetime2](0) NULL,
	[new_user_id] [numeric](20, 0) NULL,
 CONSTRAINT [PK_invitations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[keystores]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[keystores](
	[key] [nvarchar](50) NOT NULL,
	[value] [bigint] NULL,
 CONSTRAINT [keystores$key] UNIQUE CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[messages]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[messages](
	[id] [numeric](20, 0)  NOT NULL,
	[created_at] [datetime2](0) NULL,
	[author_user_id] [numeric](20, 0) NOT NULL,
	[recipient_user_id] [numeric](20, 0) NOT NULL,
	[has_been_read] [smallint] NULL,
	[subject] [nvarchar](100) NULL,
	[body] [nvarchar](max) NULL,
	[short_id] [nvarchar](30) NULL,
	[deleted_by_author] [smallint] NULL,
	[deleted_by_recipient] [smallint] NULL,
	[hat_id] [numeric](20, 0) NULL,
 CONSTRAINT [PK_messages_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [messages$random_hash] UNIQUE NONCLUSTERED 
(
	[short_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[mod_notes]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mod_notes](
	[id] [numeric](20, 0)  NOT NULL,
	[moderator_user_id] [numeric](20, 0) NOT NULL,
	[user_id] [numeric](20, 0) NOT NULL,
	[note] [nvarchar](max) NOT NULL,
	[markeddown_note] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_mod_notes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[moderations]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[moderations](
	[id] [numeric](20, 0)  NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[moderator_user_id] [numeric](20, 0) NULL,
	[story_id] [numeric](20, 0) NULL,
	[comment_id] [numeric](20, 0) NULL,
	[user_id] [numeric](20, 0) NULL,
	[action] [nvarchar](max) NULL,
	[reason] [nvarchar](max) NULL,
	[is_from_suggestions] [smallint] NULL,
	[tag_id] [numeric](20, 0) NULL,
	[domain_id] [int] NULL,
 CONSTRAINT [PK_moderations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[read_ribbons]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[read_ribbons](
	[id] [numeric](20, 0)  NOT NULL,
	[is_following] [smallint] NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[user_id] [numeric](20, 0) NOT NULL,
	[story_id] [numeric](20, 0) NOT NULL,
 CONSTRAINT [PK_read_ribbons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[saved_stories]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[saved_stories](
	[id] [numeric](20, 0)  NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[user_id] [numeric](20, 0) NOT NULL,
	[story_id] [numeric](20, 0) NOT NULL,
 CONSTRAINT [PK_saved_stories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [saved_stories$index_saved_stories_on_user_id_and_story_id] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[story_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schema_migrations](
	[version] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_schema_migrations_version] PRIMARY KEY CLUSTERED 
(
	[version] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stories]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stories](
	[id] [numeric](20, 0)  NOT NULL,
	[created_at] [datetime2](0) NULL,
	[user_id] [numeric](20, 0) NOT NULL,
	[url] [nvarchar](250) NULL,
	[title] [nvarchar](150) NOT NULL,
	[description] [nvarchar](max) NULL,
	[short_id] [nvarchar](6) NOT NULL,
	[is_expired] [smallint] NOT NULL,
	[upvotes] [bigint] NOT NULL,
	[downvotes] [bigint] NOT NULL,
	[is_moderated] [smallint] NOT NULL,
	[hotness] [decimal](20, 10) NOT NULL,
	[markeddown_description] [nvarchar](max) NULL,
	[story_cache] [nvarchar](max) NULL,
	[comments_count] [int] NOT NULL,
	[merged_story_id] [numeric](20, 0) NULL,
	[unavailable_at] [datetime2](0) NULL,
	[twitter_id] [nvarchar](20) NULL,
	[user_is_author] [smallint] NULL,
	[user_is_following] [smallint] NOT NULL,
	[domain_id] [bigint] NULL,
 CONSTRAINT [PK_stories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [stories$unique_short_id] UNIQUE NONCLUSTERED 
(
	[short_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[suggested_taggings]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suggested_taggings](
	[id] [numeric](20, 0)  NOT NULL,
	[story_id] [numeric](20, 0) NOT NULL,
	[tag_id] [numeric](20, 0) NOT NULL,
	[user_id] [numeric](20, 0) NOT NULL,
 CONSTRAINT [PK_suggested_taggings_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[suggested_titles]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suggested_titles](
	[id] [numeric](20, 0)  NOT NULL,
	[story_id] [numeric](20, 0) NOT NULL,
	[user_id] [numeric](20, 0) NOT NULL,
	[title] [nvarchar](150) NOT NULL,
 CONSTRAINT [PK_suggested_titles_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag_filters]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag_filters](
	[id] [numeric](20, 0)  NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[user_id] [numeric](20, 0) NOT NULL,
	[tag_id] [numeric](20, 0) NOT NULL,
 CONSTRAINT [PK_tag_filters_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taggings]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taggings](
	[id] [numeric](20, 0)  NOT NULL,
	[story_id] [numeric](20, 0) NOT NULL,
	[tag_id] [numeric](20, 0) NOT NULL,
 CONSTRAINT [PK_taggings_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [taggings$story_id_tag_id] UNIQUE NONCLUSTERED 
(
	[story_id] ASC,
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tags](
	[id] [numeric](20, 0)  NOT NULL,
	[tag] [nvarchar](25) NOT NULL,
	[description] [nvarchar](100) NULL,
	[privileged] [smallint] NULL,
	[is_media] [smallint] NULL,
	[inactive] [smallint] NULL,
	[hotness_mod] [real] NULL,
	[permit_by_new_users] [smallint] NOT NULL,
 CONSTRAINT [PK_tags_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [tags$tag] UNIQUE NONCLUSTERED 
(
	[tag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/8/5 10:16:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [numeric](20, 0)  NOT NULL,
	[username] [nvarchar](50) NULL,
	[email] [nvarchar](100) NULL,
	[password_digest] [nvarchar](75) NULL,
	[created_at] [datetime2](0) NULL,
	[is_admin] [smallint] NULL,
	[password_reset_token] [nvarchar](75) NULL,
	[session_token] [nvarchar](75) NOT NULL,
	[about] [nvarchar](max) NULL,
	[invited_by_user_id] [numeric](20, 0) NULL,
	[is_moderator] [smallint] NULL,
	[pushover_mentions] [smallint] NULL,
	[rss_token] [nvarchar](75) NULL,
	[mailing_list_token] [nvarchar](75) NULL,
	[mailing_list_mode] [int] NULL,
	[karma] [int] NOT NULL,
	[banned_at] [datetime2](0) NULL,
	[banned_by_user_id] [numeric](20, 0) NULL,
	[banned_reason] [nvarchar](200) NULL,
	[deleted_at] [datetime2](0) NULL,
	[disabled_invite_at] [datetime2](0) NULL,
	[disabled_invite_by_user_id] [numeric](20, 0) NULL,
	[disabled_invite_reason] [nvarchar](200) NULL,
	[settings] [nvarchar](max) NULL,
 CONSTRAINT [PK_users_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$mailing_list_token] UNIQUE NONCLUSTERED 
(
	[mailing_list_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$password_reset_token] UNIQUE NONCLUSTERED 
(
	[password_reset_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$rss_token] UNIQUE NONCLUSTERED 
(
	[rss_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$session_hash] UNIQUE NONCLUSTERED 
(
	[session_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
ALTER TABLE [dbo].[ar_internal_metadata] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (N'') FOR [short_id]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (NULL) FOR [parent_comment_id]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (NULL) FOR [thread_id]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [upvotes]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [downvotes]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0.0000000000000000000)) FOR [confidence]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [is_deleted]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [is_moderated]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [is_from_email]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (NULL) FOR [hat_id]
GO
ALTER TABLE [dbo].[domains] ADD  DEFAULT (NULL) FOR [domain]
GO
ALTER TABLE [dbo].[domains] ADD  DEFAULT ((0)) FOR [is_tracker]
GO
ALTER TABLE [dbo].[domains] ADD  DEFAULT (NULL) FOR [banned_at]
GO
ALTER TABLE [dbo].[domains] ADD  DEFAULT (NULL) FOR [banned_by_user_id]
GO
ALTER TABLE [dbo].[domains] ADD  DEFAULT (NULL) FOR [banned_reason]
GO
ALTER TABLE [dbo].[hat_requests] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[hat_requests] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[hats] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[hats] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[hats] ADD  DEFAULT (NULL) FOR [link]
GO
ALTER TABLE [dbo].[hats] ADD  DEFAULT ((0)) FOR [modlog_use]
GO
ALTER TABLE [dbo].[hats] ADD  DEFAULT (NULL) FOR [doffed_at]
GO
ALTER TABLE [dbo].[invitation_requests] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[invitation_requests] ADD  DEFAULT ((0)) FOR [is_verified]
GO
ALTER TABLE [dbo].[invitation_requests] ADD  DEFAULT (NULL) FOR [ip_address]
GO
ALTER TABLE [dbo].[invitations] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[invitations] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[invitations] ADD  DEFAULT (NULL) FOR [used_at]
GO
ALTER TABLE [dbo].[invitations] ADD  DEFAULT (NULL) FOR [new_user_id]
GO
ALTER TABLE [dbo].[keystores] ADD  DEFAULT (N'') FOR [key]
GO
ALTER TABLE [dbo].[keystores] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT ((0)) FOR [has_been_read]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT (NULL) FOR [subject]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT (NULL) FOR [short_id]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT ((0)) FOR [deleted_by_author]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT ((0)) FOR [deleted_by_recipient]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT (NULL) FOR [hat_id]
GO
ALTER TABLE [dbo].[moderations] ADD  DEFAULT (NULL) FOR [moderator_user_id]
GO
ALTER TABLE [dbo].[moderations] ADD  DEFAULT (NULL) FOR [story_id]
GO
ALTER TABLE [dbo].[moderations] ADD  DEFAULT (NULL) FOR [comment_id]
GO
ALTER TABLE [dbo].[moderations] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[moderations] ADD  DEFAULT ((0)) FOR [is_from_suggestions]
GO
ALTER TABLE [dbo].[moderations] ADD  DEFAULT (NULL) FOR [tag_id]
GO
ALTER TABLE [dbo].[moderations] ADD  DEFAULT (NULL) FOR [domain_id]
GO
ALTER TABLE [dbo].[read_ribbons] ADD  DEFAULT ((1)) FOR [is_following]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT (N'') FOR [url]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT (N'') FOR [title]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT (N'') FOR [short_id]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT ((0)) FOR [is_expired]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT ((0)) FOR [upvotes]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT ((0)) FOR [downvotes]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT ((0)) FOR [is_moderated]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT ((0.0000000000)) FOR [hotness]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT ((0)) FOR [comments_count]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT (NULL) FOR [merged_story_id]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT (NULL) FOR [unavailable_at]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT (NULL) FOR [twitter_id]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT ((0)) FOR [user_is_author]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT ((0)) FOR [user_is_following]
GO
ALTER TABLE [dbo].[stories] ADD  DEFAULT (NULL) FOR [domain_id]
GO
ALTER TABLE [dbo].[suggested_titles] ADD  DEFAULT (N'') FOR [title]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT ((0)) FOR [privileged]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT ((0)) FOR [is_media]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT ((0)) FOR [inactive]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT ((0)) FOR [hotness_mod]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT ((1)) FOR [permit_by_new_users]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [password_digest]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [is_admin]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [password_reset_token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [session_token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [invited_by_user_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [is_moderator]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [pushover_mentions]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [rss_token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [mailing_list_token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [mailing_list_mode]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [karma]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [banned_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [banned_by_user_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [banned_reason]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [disabled_invite_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [disabled_invite_by_user_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [disabled_invite_reason]
GO
ALTER TABLE [dbo].[comments]  WITH NOCHECK ADD  CONSTRAINT [comments$comments_hat_id_fk] FOREIGN KEY([hat_id])
REFERENCES [dbo].[hats] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [comments$comments_hat_id_fk]
GO
ALTER TABLE [dbo].[comments]  WITH NOCHECK ADD  CONSTRAINT [comments$comments_parent_comment_id_fk] FOREIGN KEY([parent_comment_id])
REFERENCES [dbo].[comments] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [comments$comments_parent_comment_id_fk]
GO
ALTER TABLE [dbo].[comments]  WITH NOCHECK ADD  CONSTRAINT [comments$comments_story_id_fk] FOREIGN KEY([story_id])
REFERENCES [dbo].[stories] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [comments$comments_story_id_fk]
GO
ALTER TABLE [dbo].[comments]  WITH NOCHECK ADD  CONSTRAINT [comments$comments_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [comments$comments_user_id_fk]
GO
ALTER TABLE [dbo].[hat_requests]  WITH NOCHECK ADD  CONSTRAINT [hat_requests$hat_requests_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hat_requests] CHECK CONSTRAINT [hat_requests$hat_requests_user_id_fk]
GO
ALTER TABLE [dbo].[hats]  WITH NOCHECK ADD  CONSTRAINT [hats$hats_granted_by_user_id_fk] FOREIGN KEY([granted_by_user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hats] CHECK CONSTRAINT [hats$hats_granted_by_user_id_fk]
GO
ALTER TABLE [dbo].[hats]  WITH NOCHECK ADD  CONSTRAINT [hats$hats_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hats] CHECK CONSTRAINT [hats$hats_user_id_fk]
GO
ALTER TABLE [dbo].[hidden_stories]  WITH NOCHECK ADD  CONSTRAINT [hidden_stories$hidden_stories_story_id_fk] FOREIGN KEY([story_id])
REFERENCES [dbo].[stories] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hidden_stories] CHECK CONSTRAINT [hidden_stories$hidden_stories_story_id_fk]
GO
ALTER TABLE [dbo].[hidden_stories]  WITH NOCHECK ADD  CONSTRAINT [hidden_stories$hidden_stories_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[hidden_stories] CHECK CONSTRAINT [hidden_stories$hidden_stories_user_id_fk]
GO
ALTER TABLE [dbo].[invitations]  WITH NOCHECK ADD  CONSTRAINT [invitations$invitations_new_user_id_fk] FOREIGN KEY([new_user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[invitations] CHECK CONSTRAINT [invitations$invitations_new_user_id_fk]
GO
ALTER TABLE [dbo].[invitations]  WITH NOCHECK ADD  CONSTRAINT [invitations$invitations_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[invitations] CHECK CONSTRAINT [invitations$invitations_user_id_fk]
GO
ALTER TABLE [dbo].[messages]  WITH NOCHECK ADD  CONSTRAINT [messages$messages_hat_id_fk] FOREIGN KEY([hat_id])
REFERENCES [dbo].[hats] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[messages] CHECK CONSTRAINT [messages$messages_hat_id_fk]
GO
ALTER TABLE [dbo].[messages]  WITH NOCHECK ADD  CONSTRAINT [messages$messages_ibfk_1] FOREIGN KEY([author_user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[messages] CHECK CONSTRAINT [messages$messages_ibfk_1]
GO
ALTER TABLE [dbo].[messages]  WITH NOCHECK ADD  CONSTRAINT [messages$messages_recipient_user_id_fk] FOREIGN KEY([recipient_user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[messages] CHECK CONSTRAINT [messages$messages_recipient_user_id_fk]
GO
ALTER TABLE [dbo].[mod_notes]  WITH NOCHECK ADD  CONSTRAINT [mod_notes$mod_notes_moderator_user_id_fk] FOREIGN KEY([moderator_user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[mod_notes] CHECK CONSTRAINT [mod_notes$mod_notes_moderator_user_id_fk]
GO
ALTER TABLE [dbo].[mod_notes]  WITH NOCHECK ADD  CONSTRAINT [mod_notes$mod_notes_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[mod_notes] CHECK CONSTRAINT [mod_notes$mod_notes_user_id_fk]
GO
ALTER TABLE [dbo].[moderations]  WITH NOCHECK ADD  CONSTRAINT [moderations$moderations_comment_id_fk] FOREIGN KEY([comment_id])
REFERENCES [dbo].[comments] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[moderations] CHECK CONSTRAINT [moderations$moderations_comment_id_fk]
GO
ALTER TABLE [dbo].[moderations]  WITH NOCHECK ADD  CONSTRAINT [moderations$moderations_moderator_user_id_fk] FOREIGN KEY([moderator_user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[moderations] CHECK CONSTRAINT [moderations$moderations_moderator_user_id_fk]
GO
ALTER TABLE [dbo].[moderations]  WITH NOCHECK ADD  CONSTRAINT [moderations$moderations_story_id_fk] FOREIGN KEY([story_id])
REFERENCES [dbo].[stories] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[moderations] CHECK CONSTRAINT [moderations$moderations_story_id_fk]
GO
ALTER TABLE [dbo].[moderations]  WITH NOCHECK ADD  CONSTRAINT [moderations$moderations_tag_id_fk] FOREIGN KEY([tag_id])
REFERENCES [dbo].[tags] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[moderations] CHECK CONSTRAINT [moderations$moderations_tag_id_fk]
GO
ALTER TABLE [dbo].[read_ribbons]  WITH NOCHECK ADD  CONSTRAINT [read_ribbons$read_ribbons_story_id_fk] FOREIGN KEY([story_id])
REFERENCES [dbo].[stories] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[read_ribbons] CHECK CONSTRAINT [read_ribbons$read_ribbons_story_id_fk]
GO
ALTER TABLE [dbo].[read_ribbons]  WITH NOCHECK ADD  CONSTRAINT [read_ribbons$read_ribbons_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[read_ribbons] CHECK CONSTRAINT [read_ribbons$read_ribbons_user_id_fk]
GO
ALTER TABLE [dbo].[saved_stories]  WITH NOCHECK ADD  CONSTRAINT [saved_stories$saved_stories_story_id_fk] FOREIGN KEY([story_id])
REFERENCES [dbo].[stories] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[saved_stories] CHECK CONSTRAINT [saved_stories$saved_stories_story_id_fk]
GO
ALTER TABLE [dbo].[saved_stories]  WITH NOCHECK ADD  CONSTRAINT [saved_stories$saved_stories_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[saved_stories] CHECK CONSTRAINT [saved_stories$saved_stories_user_id_fk]
GO
ALTER TABLE [dbo].[stories]  WITH NOCHECK ADD  CONSTRAINT [stories$fk_rails_a04bca56b0] FOREIGN KEY([domain_id])
REFERENCES [dbo].[domains] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[stories] CHECK CONSTRAINT [stories$fk_rails_a04bca56b0]
GO
ALTER TABLE [dbo].[stories]  WITH NOCHECK ADD  CONSTRAINT [stories$stories_merged_story_id_fk] FOREIGN KEY([merged_story_id])
REFERENCES [dbo].[stories] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[stories] CHECK CONSTRAINT [stories$stories_merged_story_id_fk]
GO
ALTER TABLE [dbo].[stories]  WITH NOCHECK ADD  CONSTRAINT [stories$stories_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[stories] CHECK CONSTRAINT [stories$stories_user_id_fk]
GO
ALTER TABLE [dbo].[suggested_taggings]  WITH NOCHECK ADD  CONSTRAINT [suggested_taggings$suggested_taggings_story_id_fk] FOREIGN KEY([story_id])
REFERENCES [dbo].[stories] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[suggested_taggings] CHECK CONSTRAINT [suggested_taggings$suggested_taggings_story_id_fk]
GO
ALTER TABLE [dbo].[suggested_taggings]  WITH NOCHECK ADD  CONSTRAINT [suggested_taggings$suggested_taggings_tag_id_fk] FOREIGN KEY([tag_id])
REFERENCES [dbo].[tags] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[suggested_taggings] CHECK CONSTRAINT [suggested_taggings$suggested_taggings_tag_id_fk]
GO
ALTER TABLE [dbo].[suggested_taggings]  WITH NOCHECK ADD  CONSTRAINT [suggested_taggings$suggested_taggings_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[suggested_taggings] CHECK CONSTRAINT [suggested_taggings$suggested_taggings_user_id_fk]
GO
ALTER TABLE [dbo].[suggested_titles]  WITH NOCHECK ADD  CONSTRAINT [suggested_titles$suggested_titles_story_id_fk] FOREIGN KEY([story_id])
REFERENCES [dbo].[stories] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[suggested_titles] CHECK CONSTRAINT [suggested_titles$suggested_titles_story_id_fk]
GO
ALTER TABLE [dbo].[suggested_titles]  WITH NOCHECK ADD  CONSTRAINT [suggested_titles$suggested_titles_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[suggested_titles] CHECK CONSTRAINT [suggested_titles$suggested_titles_user_id_fk]
GO
ALTER TABLE [dbo].[tag_filters]  WITH NOCHECK ADD  CONSTRAINT [tag_filters$tag_filters_tag_id_fk] FOREIGN KEY([tag_id])
REFERENCES [dbo].[tags] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tag_filters] CHECK CONSTRAINT [tag_filters$tag_filters_tag_id_fk]
GO
ALTER TABLE [dbo].[tag_filters]  WITH NOCHECK ADD  CONSTRAINT [tag_filters$tag_filters_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tag_filters] CHECK CONSTRAINT [tag_filters$tag_filters_user_id_fk]
GO
ALTER TABLE [dbo].[taggings]  WITH NOCHECK ADD  CONSTRAINT [taggings$taggings_story_id_fk] FOREIGN KEY([story_id])
REFERENCES [dbo].[stories] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[taggings] CHECK CONSTRAINT [taggings$taggings_story_id_fk]
GO
ALTER TABLE [dbo].[taggings]  WITH NOCHECK ADD  CONSTRAINT [taggings$taggings_tag_id_fk] FOREIGN KEY([tag_id])
REFERENCES [dbo].[tags] ([id]) ON DELETE CASCADE
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[taggings] CHECK CONSTRAINT [taggings$taggings_tag_id_fk]
GO
ALTER TABLE [dbo].[users]  WITH NOCHECK ADD  CONSTRAINT [users$users_banned_by_user_id_fk] FOREIGN KEY([banned_by_user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [users$users_banned_by_user_id_fk]
GO
ALTER TABLE [dbo].[users]  WITH NOCHECK ADD  CONSTRAINT [users$users_disabled_invite_by_user_id_fk] FOREIGN KEY([disabled_invite_by_user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [users$users_disabled_invite_by_user_id_fk]
GO
ALTER TABLE [dbo].[users]  WITH NOCHECK ADD  CONSTRAINT [users$users_invited_by_user_id_fk] FOREIGN KEY([invited_by_user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [users$users_invited_by_user_id_fk]
GO
