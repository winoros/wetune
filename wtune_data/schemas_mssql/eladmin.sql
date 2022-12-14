-- USE [eladmin_base]
GO
ALTER TABLE [dbo].[users_roles] DROP CONSTRAINT [users_roles$FKt4v0rrweyk393bdgt107vdx0x]
GO
ALTER TABLE [dbo].[users_roles] DROP CONSTRAINT [users_roles$FKgd3iendaoyh04b95ykqise6qh]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [user$FKpq2dhypk2qgt68nauh2by22jb]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [user$FKfftoc2abhot8f2wu6cl9a5iky]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [user$FK5rwmryny6jthaaxkogownknqp]
GO
ALTER TABLE [dbo].[roles_permissions] DROP CONSTRAINT [roles_permissions$FKboeuhl31go7wer3bpy6so7exi]
GO
ALTER TABLE [dbo].[roles_permissions] DROP CONSTRAINT [roles_permissions$FK4hrolwj4ned5i7qe8kyiaak6m]
GO
ALTER TABLE [dbo].[roles_menus] DROP CONSTRAINT [roles_menus$FKtag324maketmxffly3pdyh193]
GO
ALTER TABLE [dbo].[roles_menus] DROP CONSTRAINT [roles_menus$FKo7wsmlrrxb2osfaoavp46rv2r]
GO
ALTER TABLE [dbo].[roles_depts] DROP CONSTRAINT [roles_depts$FKrg1ci4cxxfbja0sb0pddju7k]
GO
ALTER TABLE [dbo].[roles_depts] DROP CONSTRAINT [roles_depts$FK7qg6itn5ajdoa9h9o78v9ksur]
GO
ALTER TABLE [dbo].[job] DROP CONSTRAINT [job$FKmvhj0rogastlctflsxf1d6k3i]
GO
ALTER TABLE [dbo].[dict_detail] DROP CONSTRAINT [dict_detail$FK5tpkputc6d9nboxojdbgnpmyb]
GO
ALTER TABLE [dbo].[visits] DROP CONSTRAINT [DF__visits__week_day__503BEA1C]
GO
ALTER TABLE [dbo].[visits] DROP CONSTRAINT [DF__visits__pv_count__4F47C5E3]
GO
ALTER TABLE [dbo].[visits] DROP CONSTRAINT [DF__visits__ip_count__4E53A1AA]
GO
ALTER TABLE [dbo].[visits] DROP CONSTRAINT [DF__visits__date__4D5F7D71]
GO
ALTER TABLE [dbo].[visits] DROP CONSTRAINT [DF__visits__create_t__4C6B5938]
GO
ALTER TABLE [dbo].[verification_code] DROP CONSTRAINT [DF__verificat__scene__4B7734FF]
GO
ALTER TABLE [dbo].[verification_code] DROP CONSTRAINT [DF__verificat__value__4A8310C6]
GO
ALTER TABLE [dbo].[verification_code] DROP CONSTRAINT [DF__verificati__type__498EEC8D]
GO
ALTER TABLE [dbo].[verification_code] DROP CONSTRAINT [DF__verificat__statu__489AC854]
GO
ALTER TABLE [dbo].[verification_code] DROP CONSTRAINT [DF__verificat__creat__47A6A41B]
GO
ALTER TABLE [dbo].[verification_code] DROP CONSTRAINT [DF__verificati__code__46B27FE2]
GO
ALTER TABLE [dbo].[user_avatar] DROP CONSTRAINT [DF__user_avata__size__45BE5BA9]
GO
ALTER TABLE [dbo].[user_avatar] DROP CONSTRAINT [DF__user_avata__path__44CA3770]
GO
ALTER TABLE [dbo].[user_avatar] DROP CONSTRAINT [DF__user_avat__real___43D61337]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__job_id__42E1EEFE]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__phone__41EDCAC5]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__dept_id__40F9A68C]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__last_passw__40058253]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__username__3F115E1A]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__password__3E1D39E1]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__enabled__3D2915A8]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__email__3C34F16F]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__create_tim__3B40CD36]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [DF__user__avatar_id__3A4CA8FD]
GO
ALTER TABLE [dbo].[role] DROP CONSTRAINT [DF__role__level__395884C4]
GO
ALTER TABLE [dbo].[role] DROP CONSTRAINT [DF__role__data_scope__3864608B]
GO
ALTER TABLE [dbo].[role] DROP CONSTRAINT [DF__role__remark__37703C52]
GO
ALTER TABLE [dbo].[role] DROP CONSTRAINT [DF__role__create_tim__367C1819]
GO
ALTER TABLE [dbo].[quartz_log] DROP CONSTRAINT [DF__quartz_log__time__3587F3E0]
GO
ALTER TABLE [dbo].[quartz_log] DROP CONSTRAINT [DF__quartz_lo__param__3493CFA7]
GO
ALTER TABLE [dbo].[quartz_log] DROP CONSTRAINT [DF__quartz_lo__metho__339FAB6E]
GO
ALTER TABLE [dbo].[quartz_log] DROP CONSTRAINT [DF__quartz_lo__job_n__32AB8735]
GO
ALTER TABLE [dbo].[quartz_log] DROP CONSTRAINT [DF__quartz_lo__is_su__31B762FC]
GO
ALTER TABLE [dbo].[quartz_log] DROP CONSTRAINT [DF__quartz_lo__cron___30C33EC3]
GO
ALTER TABLE [dbo].[quartz_log] DROP CONSTRAINT [DF__quartz_lo__creat__2FCF1A8A]
GO
ALTER TABLE [dbo].[quartz_log] DROP CONSTRAINT [DF__quartz_lo__baen___2EDAF651]
GO
ALTER TABLE [dbo].[quartz_job] DROP CONSTRAINT [DF__quartz_jo__updat__2DE6D218]
GO
ALTER TABLE [dbo].[quartz_job] DROP CONSTRAINT [DF__quartz_jo__remar__2CF2ADDF]
GO
ALTER TABLE [dbo].[quartz_job] DROP CONSTRAINT [DF__quartz_jo__param__2BFE89A6]
GO
ALTER TABLE [dbo].[quartz_job] DROP CONSTRAINT [DF__quartz_jo__metho__2B0A656D]
GO
ALTER TABLE [dbo].[quartz_job] DROP CONSTRAINT [DF__quartz_jo__job_n__2A164134]
GO
ALTER TABLE [dbo].[quartz_job] DROP CONSTRAINT [DF__quartz_jo__is_pa__29221CFB]
GO
ALTER TABLE [dbo].[quartz_job] DROP CONSTRAINT [DF__quartz_jo__cron___282DF8C2]
GO
ALTER TABLE [dbo].[quartz_job] DROP CONSTRAINT [DF__quartz_jo__bean___2739D489]
GO
ALTER TABLE [dbo].[qiniu_content] DROP CONSTRAINT [DF__qiniu_con__suffi__2645B050]
GO
ALTER TABLE [dbo].[qiniu_content] DROP CONSTRAINT [DF__qiniu_conte__url__25518C17]
GO
ALTER TABLE [dbo].[qiniu_content] DROP CONSTRAINT [DF__qiniu_con__updat__245D67DE]
GO
ALTER TABLE [dbo].[qiniu_content] DROP CONSTRAINT [DF__qiniu_cont__type__236943A5]
GO
ALTER TABLE [dbo].[qiniu_content] DROP CONSTRAINT [DF__qiniu_cont__size__22751F6C]
GO
ALTER TABLE [dbo].[qiniu_content] DROP CONSTRAINT [DF__qiniu_cont__name__2180FB33]
GO
ALTER TABLE [dbo].[qiniu_content] DROP CONSTRAINT [DF__qiniu_con__bucke__208CD6FA]
GO
ALTER TABLE [dbo].[qiniu_config] DROP CONSTRAINT [DF__qiniu_conf__zone__1F98B2C1]
GO
ALTER TABLE [dbo].[qiniu_config] DROP CONSTRAINT [DF__qiniu_conf__type__1EA48E88]
GO
ALTER TABLE [dbo].[qiniu_config] DROP CONSTRAINT [DF__qiniu_con__bucke__1DB06A4F]
GO
ALTER TABLE [dbo].[picture] DROP CONSTRAINT [DF__picture__width__1CBC4616]
GO
ALTER TABLE [dbo].[picture] DROP CONSTRAINT [DF__picture__usernam__1BC821DD]
GO
ALTER TABLE [dbo].[picture] DROP CONSTRAINT [DF__picture__url__1AD3FDA4]
GO
ALTER TABLE [dbo].[picture] DROP CONSTRAINT [DF__picture__size__19DFD96B]
GO
ALTER TABLE [dbo].[picture] DROP CONSTRAINT [DF__picture__height__18EBB532]
GO
ALTER TABLE [dbo].[picture] DROP CONSTRAINT [DF__picture__filenam__17F790F9]
GO
ALTER TABLE [dbo].[picture] DROP CONSTRAINT [DF__picture__delete___17036CC0]
GO
ALTER TABLE [dbo].[picture] DROP CONSTRAINT [DF__picture__create___160F4887]
GO
ALTER TABLE [dbo].[permission] DROP CONSTRAINT [DF__permission__name__151B244E]
GO
ALTER TABLE [dbo].[permission] DROP CONSTRAINT [DF__permissio__creat__14270015]
GO
ALTER TABLE [dbo].[permission] DROP CONSTRAINT [DF__permissio__alias__1332DBDC]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__component___123EB7A3]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__hidden__114A936A]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__cache__10566F31]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__path__0F624AF8]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__icon__0E6E26BF]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__component__0D7A0286]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__name__0C85DE4D]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__i_frame__0B91BA14]
GO
ALTER TABLE [dbo].[menu] DROP CONSTRAINT [DF__menu__create_tim__0A9D95DB]
GO
ALTER TABLE [dbo].[log] DROP CONSTRAINT [DF__log__address__09A971A2]
GO
ALTER TABLE [dbo].[log] DROP CONSTRAINT [DF__log__username__08B54D69]
GO
ALTER TABLE [dbo].[log] DROP CONSTRAINT [DF__log__time__07C12930]
GO
ALTER TABLE [dbo].[log] DROP CONSTRAINT [DF__log__request_ip__06CD04F7]
GO
ALTER TABLE [dbo].[log] DROP CONSTRAINT [DF__log__method__05D8E0BE]
GO
ALTER TABLE [dbo].[log] DROP CONSTRAINT [DF__log__log_type__04E4BC85]
GO
ALTER TABLE [dbo].[log] DROP CONSTRAINT [DF__log__description__03F0984C]
GO
ALTER TABLE [dbo].[log] DROP CONSTRAINT [DF__log__create_time__02FC7413]
GO
ALTER TABLE [dbo].[local_storage] DROP CONSTRAINT [DF__local_sto__updat__02084FDA]
GO
ALTER TABLE [dbo].[local_storage] DROP CONSTRAINT [DF__local_sto__creat__01142BA1]
GO
ALTER TABLE [dbo].[local_storage] DROP CONSTRAINT [DF__local_sto__opera__00200768]
GO
ALTER TABLE [dbo].[local_storage] DROP CONSTRAINT [DF__local_stor__size__7F2BE32F]
GO
ALTER TABLE [dbo].[local_storage] DROP CONSTRAINT [DF__local_stor__type__7E37BEF6]
GO
ALTER TABLE [dbo].[local_storage] DROP CONSTRAINT [DF__local_stor__path__7D439ABD]
GO
ALTER TABLE [dbo].[local_storage] DROP CONSTRAINT [DF__local_sto__suffi__7C4F7684]
GO
ALTER TABLE [dbo].[local_storage] DROP CONSTRAINT [DF__local_stor__name__7B5B524B]
GO
ALTER TABLE [dbo].[local_storage] DROP CONSTRAINT [DF__local_sto__real___7A672E12]
GO
ALTER TABLE [dbo].[job] DROP CONSTRAINT [DF__job__dept_id__797309D9]
GO
ALTER TABLE [dbo].[job] DROP CONSTRAINT [DF__job__create_time__787EE5A0]
GO
ALTER TABLE [dbo].[gen_config] DROP CONSTRAINT [DF__gen_confi__prefi__778AC167]
GO
ALTER TABLE [dbo].[gen_config] DROP CONSTRAINT [DF__gen_confi__api_p__76969D2E]
GO
ALTER TABLE [dbo].[gen_config] DROP CONSTRAINT [DF__gen_config__path__75A278F5]
GO
ALTER TABLE [dbo].[gen_config] DROP CONSTRAINT [DF__gen_config__pack__74AE54BC]
GO
ALTER TABLE [dbo].[gen_config] DROP CONSTRAINT [DF__gen_confi__modul__73BA3083]
GO
ALTER TABLE [dbo].[gen_config] DROP CONSTRAINT [DF__gen_confi__cover__72C60C4A]
GO
ALTER TABLE [dbo].[gen_config] DROP CONSTRAINT [DF__gen_confi__autho__71D1E811]
GO
ALTER TABLE [dbo].[email_config] DROP CONSTRAINT [DF__email_conf__user__70DDC3D8]
GO
ALTER TABLE [dbo].[email_config] DROP CONSTRAINT [DF__email_conf__port__6FE99F9F]
GO
ALTER TABLE [dbo].[email_config] DROP CONSTRAINT [DF__email_conf__pass__6EF57B66]
GO
ALTER TABLE [dbo].[email_config] DROP CONSTRAINT [DF__email_conf__host__6E01572D]
GO
ALTER TABLE [dbo].[email_config] DROP CONSTRAINT [DF__email_con__from___6D0D32F4]
GO
ALTER TABLE [dbo].[dict_detail] DROP CONSTRAINT [DF__dict_deta__dict___6C190EBB]
GO
ALTER TABLE [dbo].[dict_detail] DROP CONSTRAINT [DF__dict_detai__sort__6B24EA82]
GO
ALTER TABLE [dbo].[dict] DROP CONSTRAINT [DF__dict__remark__6A30C649]
GO
ALTER TABLE [dbo].[dept] DROP CONSTRAINT [DF__dept__create_tim__693CA210]
GO
ALTER TABLE [dbo].[alipay_config] DROP CONSTRAINT [DF__alipay_co__sys_s__68487DD7]
GO
ALTER TABLE [dbo].[alipay_config] DROP CONSTRAINT [DF__alipay_co__sign___6754599E]
GO
ALTER TABLE [dbo].[alipay_config] DROP CONSTRAINT [DF__alipay_co__retur__66603565]
GO
ALTER TABLE [dbo].[alipay_config] DROP CONSTRAINT [DF__alipay_co__notif__656C112C]
GO
ALTER TABLE [dbo].[alipay_config] DROP CONSTRAINT [DF__alipay_co__gatew__6477ECF3]
GO
ALTER TABLE [dbo].[alipay_config] DROP CONSTRAINT [DF__alipay_co__forma__6383C8BA]
GO
ALTER TABLE [dbo].[alipay_config] DROP CONSTRAINT [DF__alipay_co__chars__628FA481]
GO
ALTER TABLE [dbo].[alipay_config] DROP CONSTRAINT [DF__alipay_co__app_i__619B8048]
GO
/****** Object:  Table [dbo].[visits]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[visits]') AND type in (N'U'))
DROP TABLE [dbo].[visits]
GO
/****** Object:  Table [dbo].[verification_code]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[verification_code]') AND type in (N'U'))
DROP TABLE [dbo].[verification_code]
GO
/****** Object:  Table [dbo].[users_roles]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users_roles]') AND type in (N'U'))
DROP TABLE [dbo].[users_roles]
GO
/****** Object:  Table [dbo].[user_avatar]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_avatar]') AND type in (N'U'))
DROP TABLE [dbo].[user_avatar]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[roles_permissions]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roles_permissions]') AND type in (N'U'))
DROP TABLE [dbo].[roles_permissions]
GO
/****** Object:  Table [dbo].[roles_menus]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roles_menus]') AND type in (N'U'))
DROP TABLE [dbo].[roles_menus]
GO
/****** Object:  Table [dbo].[roles_depts]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roles_depts]') AND type in (N'U'))
DROP TABLE [dbo].[roles_depts]
GO
/****** Object:  Table [dbo].[role]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[role]') AND type in (N'U'))
DROP TABLE [dbo].[role]
GO
/****** Object:  Table [dbo].[quartz_log]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[quartz_log]') AND type in (N'U'))
DROP TABLE [dbo].[quartz_log]
GO
/****** Object:  Table [dbo].[quartz_job]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[quartz_job]') AND type in (N'U'))
DROP TABLE [dbo].[quartz_job]
GO
/****** Object:  Table [dbo].[qiniu_content]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qiniu_content]') AND type in (N'U'))
DROP TABLE [dbo].[qiniu_content]
GO
/****** Object:  Table [dbo].[qiniu_config]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[qiniu_config]') AND type in (N'U'))
DROP TABLE [dbo].[qiniu_config]
GO
/****** Object:  Table [dbo].[picture]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[picture]') AND type in (N'U'))
DROP TABLE [dbo].[picture]
GO
/****** Object:  Table [dbo].[permission]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permission]') AND type in (N'U'))
DROP TABLE [dbo].[permission]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[menu]') AND type in (N'U'))
DROP TABLE [dbo].[menu]
GO
/****** Object:  Table [dbo].[log]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[log]') AND type in (N'U'))
DROP TABLE [dbo].[log]
GO
/****** Object:  Table [dbo].[local_storage]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[local_storage]') AND type in (N'U'))
DROP TABLE [dbo].[local_storage]
GO
/****** Object:  Table [dbo].[job]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[job]') AND type in (N'U'))
DROP TABLE [dbo].[job]
GO
/****** Object:  Table [dbo].[gen_config]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gen_config]') AND type in (N'U'))
DROP TABLE [dbo].[gen_config]
GO
/****** Object:  Table [dbo].[email_config]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[email_config]') AND type in (N'U'))
DROP TABLE [dbo].[email_config]
GO
/****** Object:  Table [dbo].[dict_detail]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dict_detail]') AND type in (N'U'))
DROP TABLE [dbo].[dict_detail]
GO
/****** Object:  Table [dbo].[dict]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dict]') AND type in (N'U'))
DROP TABLE [dbo].[dict]
GO
/****** Object:  Table [dbo].[dept]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dept]') AND type in (N'U'))
DROP TABLE [dbo].[dept]
GO
/****** Object:  Table [dbo].[alipay_config]    Script Date: 2021/8/5 10:00:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[alipay_config]') AND type in (N'U'))
DROP TABLE [dbo].[alipay_config]
GO
/****** Object:  Table [dbo].[alipay_config]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alipay_config](
	[id] [bigint]  NOT NULL,
	[app_id] [nvarchar](255) NULL,
	[charset] [nvarchar](255) NULL,
	[format] [nvarchar](255) NULL,
	[gateway_url] [nvarchar](255) NULL,
	[notify_url] [nvarchar](255) NULL,
	[private_key] [nvarchar](max) NULL,
	[public_key] [nvarchar](max) NULL,
	[return_url] [nvarchar](255) NULL,
	[sign_type] [nvarchar](255) NULL,
	[sys_service_provider_id] [nvarchar](255) NULL,
 CONSTRAINT [PK_alipay_config_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[dept]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dept](
	[id] [bigint]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[pid] [bigint] NOT NULL,
	[create_time] [datetime2](0) NULL,
	[enabled] [bit] NULL,
 CONSTRAINT [PK_dept_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dict]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dict](
	[id] [bigint]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[remark] [nvarchar](255) NULL,
 CONSTRAINT [PK_dict_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dict_detail]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dict_detail](
	[id] [bigint]  NOT NULL,
	[label] [nvarchar](255) NOT NULL,
	[value] [nvarchar](255) NOT NULL,
	[sort] [nvarchar](255) NULL,
	[dict_id] [bigint] NULL,
 CONSTRAINT [PK_dict_detail_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[email_config]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_config](
	[id] [bigint]  NOT NULL,
	[from_user] [nvarchar](255) NULL,
	[host] [nvarchar](255) NULL,
	[pass] [nvarchar](255) NULL,
	[port] [nvarchar](255) NULL,
	[user] [nvarchar](255) NULL,
 CONSTRAINT [PK_email_config_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gen_config]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gen_config](
	[id] [bigint]  NOT NULL,
	[author] [nvarchar](255) NULL,
	[cover] [bit] NULL,
	[module_name] [nvarchar](255) NULL,
	[pack] [nvarchar](255) NULL,
	[path] [nvarchar](255) NULL,
	[api_path] [nvarchar](255) NULL,
	[prefix] [nvarchar](255) NULL,
 CONSTRAINT [PK_gen_config_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[job]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[job](
	[id] [bigint]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[enabled] [bit] NOT NULL,
	[create_time] [datetime2](0) NULL,
	[sort] [bigint] NOT NULL,
	[dept_id] [bigint] NULL,
 CONSTRAINT [PK_job_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[local_storage]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[local_storage](
	[id] [bigint]  NOT NULL,
	[real_name] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[suffix] [nvarchar](255) NULL,
	[path] [nvarchar](255) NULL,
	[type] [nvarchar](255) NULL,
	[size] [nvarchar](100) NULL,
	[operate] [nvarchar](255) NULL,
	[create_time] [datetime2](0) NULL,
	[update_time] [datetime2](0) NULL,
 CONSTRAINT [PK_local_storage_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[log]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[log](
	[id] [bigint]  NOT NULL,
	[create_time] [datetime2](0) NULL,
	[description] [nvarchar](255) NULL,
	[exception_detail] [nvarchar](max) NULL,
	[log_type] [nvarchar](255) NULL,
	[method] [nvarchar](255) NULL,
	[params] [nvarchar](max) NULL,
	[request_ip] [nvarchar](255) NULL,
	[time] [bigint] NULL,
	[username] [nvarchar](255) NULL,
	[address] [nvarchar](255) NULL,
 CONSTRAINT [PK_log_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[menu]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [bigint]  NOT NULL,
	[create_time] [datetime2](0) NULL,
	[i_frame] [bit] NULL,
	[name] [nvarchar](255) NULL,
	[component] [nvarchar](255) NULL,
	[pid] [bigint] NOT NULL,
	[sort] [bigint] NOT NULL,
	[icon] [nvarchar](255) NULL,
	[path] [nvarchar](255) NULL,
	[cache] [bit] NULL,
	[hidden] [bit] NULL,
	[component_name] [nvarchar](20) NULL,
 CONSTRAINT [PK_menu_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permission]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permission](
	[id] [bigint]  NOT NULL,
	[alias] [nvarchar](255) NULL,
	[create_time] [datetime2](0) NULL,
	[name] [nvarchar](255) NULL,
	[pid] [int] NOT NULL,
 CONSTRAINT [PK_permission_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[picture]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[picture](
	[id] [bigint]  NOT NULL,
	[create_time] [datetime2](0) NULL,
	[delete_url] [nvarchar](255) NULL,
	[filename] [nvarchar](255) NULL,
	[height] [nvarchar](255) NULL,
	[size] [nvarchar](255) NULL,
	[url] [nvarchar](255) NULL,
	[username] [nvarchar](255) NULL,
	[width] [nvarchar](255) NULL,
 CONSTRAINT [PK_picture_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[qiniu_config]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qiniu_config](
	[id] [bigint]  NOT NULL,
	[access_key] [nvarchar](max) NULL,
	[bucket] [nvarchar](255) NULL,
	[host] [nvarchar](255) NOT NULL,
	[secret_key] [nvarchar](max) NULL,
	[type] [nvarchar](255) NULL,
	[zone] [nvarchar](255) NULL,
 CONSTRAINT [PK_qiniu_config_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[qiniu_content]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[qiniu_content](
	[id] [bigint]  NOT NULL,
	[bucket] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[size] [nvarchar](255) NULL,
	[type] [nvarchar](255) NULL,
	[update_time] [datetime2](0) NULL,
	[url] [nvarchar](255) NULL,
	[suffix] [nvarchar](255) NULL,
 CONSTRAINT [PK_qiniu_content_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quartz_job]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quartz_job](
	[id] [bigint]  NOT NULL,
	[bean_name] [nvarchar](255) NULL,
	[cron_expression] [nvarchar](255) NULL,
	[is_pause] [bit] NULL,
	[job_name] [nvarchar](255) NULL,
	[method_name] [nvarchar](255) NULL,
	[params] [nvarchar](255) NULL,
	[remark] [nvarchar](255) NULL,
	[update_time] [datetime2](0) NULL,
 CONSTRAINT [PK_quartz_job_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quartz_log]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quartz_log](
	[id] [bigint]  NOT NULL,
	[baen_name] [nvarchar](255) NULL,
	[create_time] [datetime2](0) NULL,
	[cron_expression] [nvarchar](255) NULL,
	[exception_detail] [nvarchar](max) NULL,
	[is_success] [bit] NULL,
	[job_name] [nvarchar](255) NULL,
	[method_name] [nvarchar](255) NULL,
	[params] [nvarchar](255) NULL,
	[time] [bigint] NULL,
 CONSTRAINT [PK_quartz_log_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[role]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[id] [bigint]  NOT NULL,
	[create_time] [datetime2](0) NULL,
	[name] [nvarchar](255) NOT NULL,
	[remark] [nvarchar](255) NULL,
	[data_scope] [nvarchar](255) NULL,
	[level] [int] NULL,
 CONSTRAINT [PK_role_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles_depts]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles_depts](
	[role_id] [bigint] NOT NULL,
	[dept_id] [bigint] NOT NULL,
 CONSTRAINT [PK_roles_depts_role_id] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[dept_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles_menus]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles_menus](
	[menu_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL,
 CONSTRAINT [PK_roles_menus_menu_id] PRIMARY KEY CLUSTERED 
(
	[menu_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[roles_permissions]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles_permissions](
	[role_id] [bigint] NOT NULL,
	[permission_id] [bigint] NOT NULL,
 CONSTRAINT [PK_roles_permissions_role_id] PRIMARY KEY CLUSTERED 
(
	[role_id] ASC,
	[permission_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [bigint]  NOT NULL,
	[avatar_id] [bigint] NULL,
	[create_time] [datetime2](0) NULL,
	[email] [nvarchar](255) NULL,
	[enabled] [bigint] NULL,
	[password] [nvarchar](255) NULL,
	[username] [nvarchar](255) NULL,
	[last_password_reset_time] [datetime2](0) NULL,
	[dept_id] [bigint] NULL,
	[phone] [nvarchar](255) NULL,
	[job_id] [bigint] NULL,
 CONSTRAINT [PK_user_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [user$UK_kpubos9gc2cvtkb0thktkbkes] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [user$username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_avatar]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_avatar](
	[id] [bigint]  NOT NULL,
	[real_name] [nvarchar](255) NULL,
	[path] [nvarchar](255) NULL,
	[size] [nvarchar](255) NULL,
 CONSTRAINT [PK_user_avatar_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_roles]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_roles](
	[user_id] [bigint] NOT NULL,
	[role_id] [bigint] NOT NULL,
 CONSTRAINT [PK_users_roles_user_id] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[verification_code]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[verification_code](
	[id] [bigint]  NOT NULL,
	[code] [nvarchar](255) NULL,
	[create_time] [datetime2](0) NULL,
	[status] [bit] NULL,
	[type] [nvarchar](255) NULL,
	[value] [nvarchar](255) NULL,
	[scenes] [nvarchar](255) NULL,
 CONSTRAINT [PK_verification_code_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[visits]    Script Date: 2021/8/5 10:00:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[visits](
	[id] [bigint]  NOT NULL,
	[create_time] [datetime2](0) NULL,
	[date] [nvarchar](255) NULL,
	[ip_counts] [bigint] NULL,
	[pv_counts] [bigint] NULL,
	[week_day] [nvarchar](255) NULL,
 CONSTRAINT [PK_visits_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [visits$UK_11aksgq87euk9bcyeesfs4vtp] UNIQUE NONCLUSTERED 
(
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[alipay_config] ADD  DEFAULT (NULL) FOR [app_id]
GO
ALTER TABLE [dbo].[alipay_config] ADD  DEFAULT (NULL) FOR [charset]
GO
ALTER TABLE [dbo].[alipay_config] ADD  DEFAULT (NULL) FOR [format]
GO
ALTER TABLE [dbo].[alipay_config] ADD  DEFAULT (NULL) FOR [gateway_url]
GO
ALTER TABLE [dbo].[alipay_config] ADD  DEFAULT (NULL) FOR [notify_url]
GO
ALTER TABLE [dbo].[alipay_config] ADD  DEFAULT (NULL) FOR [return_url]
GO
ALTER TABLE [dbo].[alipay_config] ADD  DEFAULT (NULL) FOR [sign_type]
GO
ALTER TABLE [dbo].[alipay_config] ADD  DEFAULT (NULL) FOR [sys_service_provider_id]
GO
ALTER TABLE [dbo].[dept] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[dict] ADD  DEFAULT (NULL) FOR [remark]
GO
ALTER TABLE [dbo].[dict_detail] ADD  DEFAULT (NULL) FOR [sort]
GO
ALTER TABLE [dbo].[dict_detail] ADD  DEFAULT (NULL) FOR [dict_id]
GO
ALTER TABLE [dbo].[email_config] ADD  DEFAULT (NULL) FOR [from_user]
GO
ALTER TABLE [dbo].[email_config] ADD  DEFAULT (NULL) FOR [host]
GO
ALTER TABLE [dbo].[email_config] ADD  DEFAULT (NULL) FOR [pass]
GO
ALTER TABLE [dbo].[email_config] ADD  DEFAULT (NULL) FOR [port]
GO
ALTER TABLE [dbo].[email_config] ADD  DEFAULT (NULL) FOR [user]
GO
ALTER TABLE [dbo].[gen_config] ADD  DEFAULT (NULL) FOR [author]
GO
ALTER TABLE [dbo].[gen_config] ADD  DEFAULT (NULL) FOR [cover]
GO
ALTER TABLE [dbo].[gen_config] ADD  DEFAULT (NULL) FOR [module_name]
GO
ALTER TABLE [dbo].[gen_config] ADD  DEFAULT (NULL) FOR [pack]
GO
ALTER TABLE [dbo].[gen_config] ADD  DEFAULT (NULL) FOR [path]
GO
ALTER TABLE [dbo].[gen_config] ADD  DEFAULT (NULL) FOR [api_path]
GO
ALTER TABLE [dbo].[gen_config] ADD  DEFAULT (NULL) FOR [prefix]
GO
ALTER TABLE [dbo].[job] ADD  CONSTRAINT [DF__job__create_time__787EE5A0]  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[job] ADD  CONSTRAINT [DF__job__dept_id__797309D9]  DEFAULT (NULL) FOR [dept_id]
GO
ALTER TABLE [dbo].[local_storage] ADD  DEFAULT (NULL) FOR [real_name]
GO
ALTER TABLE [dbo].[local_storage] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[local_storage] ADD  DEFAULT (NULL) FOR [suffix]
GO
ALTER TABLE [dbo].[local_storage] ADD  DEFAULT (NULL) FOR [path]
GO
ALTER TABLE [dbo].[local_storage] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[local_storage] ADD  DEFAULT (NULL) FOR [size]
GO
ALTER TABLE [dbo].[local_storage] ADD  DEFAULT (NULL) FOR [operate]
GO
ALTER TABLE [dbo].[local_storage] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[local_storage] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [dbo].[log] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[log] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[log] ADD  DEFAULT (NULL) FOR [log_type]
GO
ALTER TABLE [dbo].[log] ADD  DEFAULT (NULL) FOR [method]
GO
ALTER TABLE [dbo].[log] ADD  DEFAULT (NULL) FOR [request_ip]
GO
ALTER TABLE [dbo].[log] ADD  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [dbo].[log] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [dbo].[log] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [i_frame]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [component]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [icon]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (NULL) FOR [path]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (0x00) FOR [cache]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (0x00) FOR [hidden]
GO
ALTER TABLE [dbo].[menu] ADD  DEFAULT (N'-') FOR [component_name]
GO
ALTER TABLE [dbo].[permission] ADD  DEFAULT (NULL) FOR [alias]
GO
ALTER TABLE [dbo].[permission] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[permission] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[picture] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[picture] ADD  DEFAULT (NULL) FOR [delete_url]
GO
ALTER TABLE [dbo].[picture] ADD  DEFAULT (NULL) FOR [filename]
GO
ALTER TABLE [dbo].[picture] ADD  DEFAULT (NULL) FOR [height]
GO
ALTER TABLE [dbo].[picture] ADD  DEFAULT (NULL) FOR [size]
GO
ALTER TABLE [dbo].[picture] ADD  DEFAULT (NULL) FOR [url]
GO
ALTER TABLE [dbo].[picture] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [dbo].[picture] ADD  DEFAULT (NULL) FOR [width]
GO
ALTER TABLE [dbo].[qiniu_config] ADD  DEFAULT (NULL) FOR [bucket]
GO
ALTER TABLE [dbo].[qiniu_config] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[qiniu_config] ADD  DEFAULT (NULL) FOR [zone]
GO
ALTER TABLE [dbo].[qiniu_content] ADD  DEFAULT (NULL) FOR [bucket]
GO
ALTER TABLE [dbo].[qiniu_content] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[qiniu_content] ADD  DEFAULT (NULL) FOR [size]
GO
ALTER TABLE [dbo].[qiniu_content] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[qiniu_content] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [dbo].[qiniu_content] ADD  DEFAULT (NULL) FOR [url]
GO
ALTER TABLE [dbo].[qiniu_content] ADD  DEFAULT (NULL) FOR [suffix]
GO
ALTER TABLE [dbo].[quartz_job] ADD  DEFAULT (NULL) FOR [bean_name]
GO
ALTER TABLE [dbo].[quartz_job] ADD  DEFAULT (NULL) FOR [cron_expression]
GO
ALTER TABLE [dbo].[quartz_job] ADD  DEFAULT (NULL) FOR [is_pause]
GO
ALTER TABLE [dbo].[quartz_job] ADD  DEFAULT (NULL) FOR [job_name]
GO
ALTER TABLE [dbo].[quartz_job] ADD  DEFAULT (NULL) FOR [method_name]
GO
ALTER TABLE [dbo].[quartz_job] ADD  DEFAULT (NULL) FOR [params]
GO
ALTER TABLE [dbo].[quartz_job] ADD  DEFAULT (NULL) FOR [remark]
GO
ALTER TABLE [dbo].[quartz_job] ADD  DEFAULT (NULL) FOR [update_time]
GO
ALTER TABLE [dbo].[quartz_log] ADD  DEFAULT (NULL) FOR [baen_name]
GO
ALTER TABLE [dbo].[quartz_log] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[quartz_log] ADD  DEFAULT (NULL) FOR [cron_expression]
GO
ALTER TABLE [dbo].[quartz_log] ADD  DEFAULT (NULL) FOR [is_success]
GO
ALTER TABLE [dbo].[quartz_log] ADD  DEFAULT (NULL) FOR [job_name]
GO
ALTER TABLE [dbo].[quartz_log] ADD  DEFAULT (NULL) FOR [method_name]
GO
ALTER TABLE [dbo].[quartz_log] ADD  DEFAULT (NULL) FOR [params]
GO
ALTER TABLE [dbo].[quartz_log] ADD  DEFAULT (NULL) FOR [time]
GO
ALTER TABLE [dbo].[role] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[role] ADD  DEFAULT (NULL) FOR [remark]
GO
ALTER TABLE [dbo].[role] ADD  DEFAULT (NULL) FOR [data_scope]
GO
ALTER TABLE [dbo].[role] ADD  DEFAULT (NULL) FOR [level]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [avatar_id]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [enabled]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [password]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [username]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [last_password_reset_time]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [dept_id]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[user] ADD  DEFAULT (NULL) FOR [job_id]
GO
ALTER TABLE [dbo].[user_avatar] ADD  DEFAULT (NULL) FOR [real_name]
GO
ALTER TABLE [dbo].[user_avatar] ADD  DEFAULT (NULL) FOR [path]
GO
ALTER TABLE [dbo].[user_avatar] ADD  DEFAULT (NULL) FOR [size]
GO
ALTER TABLE [dbo].[verification_code] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[verification_code] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[verification_code] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[verification_code] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[verification_code] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[verification_code] ADD  DEFAULT (NULL) FOR [scenes]
GO
ALTER TABLE [dbo].[visits] ADD  DEFAULT (NULL) FOR [create_time]
GO
ALTER TABLE [dbo].[visits] ADD  DEFAULT (NULL) FOR [date]
GO
ALTER TABLE [dbo].[visits] ADD  DEFAULT (NULL) FOR [ip_counts]
GO
ALTER TABLE [dbo].[visits] ADD  DEFAULT (NULL) FOR [pv_counts]
GO
ALTER TABLE [dbo].[visits] ADD  DEFAULT (NULL) FOR [week_day]
GO
ALTER TABLE [dbo].[dict_detail]  WITH NOCHECK ADD  CONSTRAINT [dict_detail$FK5tpkputc6d9nboxojdbgnpmyb] FOREIGN KEY([dict_id])
REFERENCES [dbo].[dict] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[dict_detail] CHECK CONSTRAINT [dict_detail$FK5tpkputc6d9nboxojdbgnpmyb]
GO
ALTER TABLE [dbo].[job]  WITH NOCHECK ADD  CONSTRAINT [job$FKmvhj0rogastlctflsxf1d6k3i] FOREIGN KEY([dept_id])
REFERENCES [dbo].[dept] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[job] CHECK CONSTRAINT [job$FKmvhj0rogastlctflsxf1d6k3i]
GO
ALTER TABLE [dbo].[roles_depts]  WITH NOCHECK ADD  CONSTRAINT [roles_depts$FK7qg6itn5ajdoa9h9o78v9ksur] FOREIGN KEY([dept_id])
REFERENCES [dbo].[dept] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[roles_depts] CHECK CONSTRAINT [roles_depts$FK7qg6itn5ajdoa9h9o78v9ksur]
GO
ALTER TABLE [dbo].[roles_depts]  WITH NOCHECK ADD  CONSTRAINT [roles_depts$FKrg1ci4cxxfbja0sb0pddju7k] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[roles_depts] CHECK CONSTRAINT [roles_depts$FKrg1ci4cxxfbja0sb0pddju7k]
GO
ALTER TABLE [dbo].[roles_menus]  WITH NOCHECK ADD  CONSTRAINT [roles_menus$FKo7wsmlrrxb2osfaoavp46rv2r] FOREIGN KEY([menu_id])
REFERENCES [dbo].[menu] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[roles_menus] CHECK CONSTRAINT [roles_menus$FKo7wsmlrrxb2osfaoavp46rv2r]
GO
ALTER TABLE [dbo].[roles_menus]  WITH NOCHECK ADD  CONSTRAINT [roles_menus$FKtag324maketmxffly3pdyh193] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[roles_menus] CHECK CONSTRAINT [roles_menus$FKtag324maketmxffly3pdyh193]
GO
ALTER TABLE [dbo].[roles_permissions]  WITH NOCHECK ADD  CONSTRAINT [roles_permissions$FK4hrolwj4ned5i7qe8kyiaak6m] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[roles_permissions] CHECK CONSTRAINT [roles_permissions$FK4hrolwj4ned5i7qe8kyiaak6m]
GO
ALTER TABLE [dbo].[roles_permissions]  WITH NOCHECK ADD  CONSTRAINT [roles_permissions$FKboeuhl31go7wer3bpy6so7exi] FOREIGN KEY([permission_id])
REFERENCES [dbo].[permission] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[roles_permissions] CHECK CONSTRAINT [roles_permissions$FKboeuhl31go7wer3bpy6so7exi]
GO
ALTER TABLE [dbo].[user]  WITH NOCHECK ADD  CONSTRAINT [user$FK5rwmryny6jthaaxkogownknqp] FOREIGN KEY([dept_id])
REFERENCES [dbo].[dept] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [user$FK5rwmryny6jthaaxkogownknqp]
GO
ALTER TABLE [dbo].[user]  WITH NOCHECK ADD  CONSTRAINT [user$FKfftoc2abhot8f2wu6cl9a5iky] FOREIGN KEY([job_id])
REFERENCES [dbo].[job] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [user$FKfftoc2abhot8f2wu6cl9a5iky]
GO
ALTER TABLE [dbo].[user]  WITH NOCHECK ADD  CONSTRAINT [user$FKpq2dhypk2qgt68nauh2by22jb] FOREIGN KEY([avatar_id])
REFERENCES [dbo].[user_avatar] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [user$FKpq2dhypk2qgt68nauh2by22jb]
GO
ALTER TABLE [dbo].[users_roles]  WITH NOCHECK ADD  CONSTRAINT [users_roles$FKgd3iendaoyh04b95ykqise6qh] FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users_roles] CHECK CONSTRAINT [users_roles$FKgd3iendaoyh04b95ykqise6qh]
GO
ALTER TABLE [dbo].[users_roles]  WITH NOCHECK ADD  CONSTRAINT [users_roles$FKt4v0rrweyk393bdgt107vdx0x] FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users_roles] CHECK CONSTRAINT [users_roles$FKt4v0rrweyk393bdgt107vdx0x]
GO
