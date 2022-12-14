-- USE [diaspora_base]
GO
ALTER TABLE [dbo].[share_visibilities] DROP CONSTRAINT [share_visibilities$share_visibilities_user_id_fk]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [services$services_user_id_fk]
GO
ALTER TABLE [dbo].[roles] DROP CONSTRAINT [roles_people_id_fk]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [profiles$profiles_person_id_fk]
GO
ALTER TABLE [dbo].[ppid] DROP CONSTRAINT [ppid$fk_rails_e6b8e5264f]
GO
ALTER TABLE [dbo].[ppid] DROP CONSTRAINT [ppid$fk_rails_150457f962]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [posts$posts_author_id_fk]
GO
ALTER TABLE [dbo].[poll_participation_signatures] DROP CONSTRAINT [poll_participation_signatures$poll_participation_signatures_signature_orders_id_fk]
GO
ALTER TABLE [dbo].[poll_participation_signatures] DROP CONSTRAINT [poll_participation_signatures$poll_participation_signatures_poll_participation_id_fk]
GO
ALTER TABLE [dbo].[people] DROP CONSTRAINT [people_users_id_fk]
GO
ALTER TABLE [dbo].[people] DROP CONSTRAINT [people$people_pod_id_fk]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [o_auth_applications$fk_rails_ad75323da2]
GO
ALTER TABLE [dbo].[o_auth_access_tokens] DROP CONSTRAINT [o_auth_access_tokens$fk_rails_5debabcff3]
GO
ALTER TABLE [dbo].[notification_actors] DROP CONSTRAINT [notification_actors_people_id_fk]
GO
ALTER TABLE [dbo].[notification_actors] DROP CONSTRAINT [notification_actors$notification_actors_notification_id_fk]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [messages$messages_conversation_id_fk]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [messages$messages_author_id_fk]
GO
ALTER TABLE [dbo].[likes] DROP CONSTRAINT [likes$likes_author_id_fk]
GO
ALTER TABLE [dbo].[like_signatures] DROP CONSTRAINT [like_signatures$like_signatures_signature_orders_id_fk]
GO
ALTER TABLE [dbo].[like_signatures] DROP CONSTRAINT [like_signatures$like_signatures_like_id_fk]
GO
ALTER TABLE [dbo].[conversations] DROP CONSTRAINT [conversations$conversations_author_id_fk]
GO
ALTER TABLE [dbo].[conversation_visibilities] DROP CONSTRAINT [conversation_visibilities$conversation_visibilities_person_id_fk]
GO
ALTER TABLE [dbo].[conversation_visibilities] DROP CONSTRAINT [conversation_visibilities$conversation_visibilities_conversation_id_fk]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [contacts$contacts_person_id_fk]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [comments$comments_author_id_fk]
GO
ALTER TABLE [dbo].[comment_signatures] DROP CONSTRAINT [comment_signatures$comment_signatures_signature_orders_id_fk]
GO
ALTER TABLE [dbo].[comment_signatures] DROP CONSTRAINT [comment_signatures$comment_signatures_comment_id_fk]
GO
ALTER TABLE [dbo].[blocks] DROP CONSTRAINT [blocks_people_id_fk]
GO
ALTER TABLE [dbo].[authorizations] DROP CONSTRAINT [authorizations$fk_rails_e166644de5]
GO
ALTER TABLE [dbo].[authorizations] DROP CONSTRAINT [authorizations$fk_rails_4ecef5b8c5]
GO
ALTER TABLE [dbo].[aspect_visibilities] DROP CONSTRAINT [aspect_visibilities$aspect_visibilities_aspect_id_fk]
GO
ALTER TABLE [dbo].[aspect_memberships] DROP CONSTRAINT [aspect_memberships$aspect_memberships_contact_id_fk]
GO
ALTER TABLE [dbo].[aspect_memberships] DROP CONSTRAINT [aspect_memberships$aspect_memberships_aspect_id_fk]
GO
ALTER TABLE [dbo].[account_migrations] DROP CONSTRAINT [account_migrations$fk_rails_ddbe553eee]
GO
ALTER TABLE [dbo].[account_migrations] DROP CONSTRAINT [account_migrations$fk_rails_610fe19943]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__plain_otp__21D600EE]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__otp_requi__20E1DCB5]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__consumed___1FEDB87C]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__post_defa__1EF99443]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__color_the__1E05700A]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__exporting__1D114BD1]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__exported___1C1D2798]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__exported___1B29035F]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__strip_exi__1A34DF26]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__exporting__1940BAED]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__exported___184C96B4]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__export__1758727B]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__remove_af__16644E42]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__last_seen__15702A09]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__reset_pas__147C05D0]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__auto_foll__1387E197]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__auto_foll__1293BD5E]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__show_comm__119F9925]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__locked_at__10AB74EC]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__confirm_e__0FB750B3]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__unconfirm__0EC32C7A]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__authentic__0DCF0841]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__invited_b__0CDAE408]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__last_sign__0BE6BFCF]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__current_s__0AF29B96]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__last_sign__09FE775D]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__current_s__090A5324]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__sign_in_c__08162EEB]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__remember___07220AB2]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__reset_pas__062DE679]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__encrypted__0539C240]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__email__04459E07]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__language__035179CE]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__disable_m__025D5595]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__getting_s__0169315C]
GO
ALTER TABLE [dbo].[user_preferences] DROP CONSTRAINT [DF__user_pref__user___54CB950F]
GO
ALTER TABLE [dbo].[user_preferences] DROP CONSTRAINT [DF__user_pref__email__53D770D6]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__taggings_c__00750D23]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__name__7F80E8EA]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__create__50FB042B]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__contex__5006DFF2]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__tagger__4F12BBB9]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__tagger__4E1E9780]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__taggab__4D2A7347]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__taggab__4C364F0E]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__tag_id__4B422AD5]
GO
ALTER TABLE [dbo].[simple_captcha_data] DROP CONSTRAINT [DF__simple_ca__updat__4A4E069C]
GO
ALTER TABLE [dbo].[simple_captcha_data] DROP CONSTRAINT [DF__simple_ca__creat__4959E263]
GO
ALTER TABLE [dbo].[simple_captcha_data] DROP CONSTRAINT [DF__simple_ca__value__4865BE2A]
GO
ALTER TABLE [dbo].[simple_captcha_data] DROP CONSTRAINT [DF__simple_capt__key__477199F1]
GO
ALTER TABLE [dbo].[share_visibilities] DROP CONSTRAINT [DF__share_vis__share__7E8CC4B1]
GO
ALTER TABLE [dbo].[share_visibilities] DROP CONSTRAINT [DF__share_vis__hidde__7D98A078]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__nickna__44952D46]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__access__43A1090D]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__access__42ACE4D4]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__uid__41B8C09B]
GO
ALTER TABLE [dbo].[roles] DROP CONSTRAINT [DF__roles__name__7CA47C3F]
GO
ALTER TABLE [dbo].[roles] DROP CONSTRAINT [DF__roles__person_id__7BB05806]
GO
ALTER TABLE [dbo].[reports] DROP CONSTRAINT [DF__reports__updated__3EDC53F0]
GO
ALTER TABLE [dbo].[reports] DROP CONSTRAINT [DF__reports__created__3DE82FB7]
GO
ALTER TABLE [dbo].[reports] DROP CONSTRAINT [DF__reports__reviewe__3CF40B7E]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__public__7ABC33CD]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__nsfw__79C80F94]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__full_n__78D3EB5B]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__locati__77DFC722]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__search__76EBA2E9]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__gender__75F77EB0]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__birthd__75035A77]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__image___740F363E]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__image___731B1205]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__image___7226EDCC]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__last_n__7132C993]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__first___703EA55A]
GO
ALTER TABLE [dbo].[profiles] DROP CONSTRAINT [DF__profiles__diaspo__6F4A8121]
GO
ALTER TABLE [dbo].[ppid] DROP CONSTRAINT [DF__ppid__identifier__2F9A1060]
GO
ALTER TABLE [dbo].[ppid] DROP CONSTRAINT [DF__ppid__guid__2EA5EC27]
GO
ALTER TABLE [dbo].[ppid] DROP CONSTRAINT [DF__ppid__user_id__2DB1C7EE]
GO
ALTER TABLE [dbo].[ppid] DROP CONSTRAINT [DF__ppid__o_auth_app__2CBDA3B5]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__open_grap__2BC97F7C]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__tweet_id__2AD55B43]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__interacte__29E1370A]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__reshares___28ED12D1]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__o_embed_c__27F8EE98]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__comments___2704CA5F]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__likes_cou__2610A626]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__root_guid__251C81ED]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__provider___24285DB4]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__public__2334397B]
GO
ALTER TABLE [dbo].[polls] DROP CONSTRAINT [DF__polls__updated_a__22401542]
GO
ALTER TABLE [dbo].[polls] DROP CONSTRAINT [DF__polls__created_a__214BF109]
GO
ALTER TABLE [dbo].[polls] DROP CONSTRAINT [DF__polls__guid__2057CCD0]
GO
ALTER TABLE [dbo].[polls] DROP CONSTRAINT [DF__polls__status__1F63A897]
GO
ALTER TABLE [dbo].[poll_participations] DROP CONSTRAINT [DF__poll_part__updat__1E6F845E]
GO
ALTER TABLE [dbo].[poll_participations] DROP CONSTRAINT [DF__poll_part__creat__1D7B6025]
GO
ALTER TABLE [dbo].[poll_participations] DROP CONSTRAINT [DF__poll_parti__guid__1C873BEC]
GO
ALTER TABLE [dbo].[poll_answers] DROP CONSTRAINT [DF__poll_answ__vote___1B9317B3]
GO
ALTER TABLE [dbo].[poll_answers] DROP CONSTRAINT [DF__poll_answe__guid__1A9EF37A]
GO
ALTER TABLE [dbo].[pods] DROP CONSTRAINT [DF__pods__scheduled___19AACF41]
GO
ALTER TABLE [dbo].[pods] DROP CONSTRAINT [DF__pods__blocked__18B6AB08]
GO
ALTER TABLE [dbo].[pods] DROP CONSTRAINT [DF__pods__port__17C286CF]
GO
ALTER TABLE [dbo].[pods] DROP CONSTRAINT [DF__pods__error__16CE6296]
GO
ALTER TABLE [dbo].[pods] DROP CONSTRAINT [DF__pods__software__15DA3E5D]
GO
ALTER TABLE [dbo].[pods] DROP CONSTRAINT [DF__pods__response_t__14E61A24]
GO
ALTER TABLE [dbo].[pods] DROP CONSTRAINT [DF__pods__offline_si__13F1F5EB]
GO
ALTER TABLE [dbo].[pods] DROP CONSTRAINT [DF__pods__checked_at__12FDD1B2]
GO
ALTER TABLE [dbo].[pods] DROP CONSTRAINT [DF__pods__status__1209AD79]
GO
ALTER TABLE [dbo].[pods] DROP CONSTRAINT [DF__pods__ssl__11158940]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__width__6E565CE8]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__height__6D6238AF]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__status_m__6C6E1476]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__unproces__6B79F03D]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__updated___6A85CC04]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__created___6991A7CB]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__processe__689D8392]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__random_s__67A95F59]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__remote_p__66B53B20]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__pending__65C116E7]
GO
ALTER TABLE [dbo].[photos] DROP CONSTRAINT [DF__photos__public__64CCF2AE]
GO
ALTER TABLE [dbo].[people] DROP CONSTRAINT [DF__people__pod_id__63D8CE75]
GO
ALTER TABLE [dbo].[people] DROP CONSTRAINT [DF__people__fetch_st__62E4AA3C]
GO
ALTER TABLE [dbo].[people] DROP CONSTRAINT [DF__people__closed_a__61F08603]
GO
ALTER TABLE [dbo].[people] DROP CONSTRAINT [DF__people__owner_id__60FC61CA]
GO
ALTER TABLE [dbo].[participations] DROP CONSTRAINT [DF__participa__count__01D345B0]
GO
ALTER TABLE [dbo].[participations] DROP CONSTRAINT [DF__participa__autho__00DF2177]
GO
ALTER TABLE [dbo].[participations] DROP CONSTRAINT [DF__participa__targe__7FEAFD3E]
GO
ALTER TABLE [dbo].[participations] DROP CONSTRAINT [DF__participat__guid__7EF6D905]
GO
ALTER TABLE [dbo].[open_graph_caches] DROP CONSTRAINT [DF__open_grap__ob_ty__7E02B4CC]
GO
ALTER TABLE [dbo].[open_graph_caches] DROP CONSTRAINT [DF__open_grap__title__7D0E9093]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_app__ppid__7C1A6C5A]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__jwks___7B264821]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__token__7A3223E8]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__secto__793DFFAF]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__tos_u__7849DB76]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__polic__7755B73D]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__clien__76619304]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__logo___756D6ECB]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__conta__74794A92]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__appli__73852659]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__grant__72910220]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__respo__719CDDE7]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__clien__70A8B9AE]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__clien__6FB49575]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__clien__6EC0713C]
GO
ALTER TABLE [dbo].[o_auth_applications] DROP CONSTRAINT [DF__o_auth_ap__user___6DCC4D03]
GO
ALTER TABLE [dbo].[o_auth_access_tokens] DROP CONSTRAINT [DF__o_auth_ac__expir__6CD828CA]
GO
ALTER TABLE [dbo].[o_auth_access_tokens] DROP CONSTRAINT [DF__o_auth_ac__token__6BE40491]
GO
ALTER TABLE [dbo].[o_auth_access_tokens] DROP CONSTRAINT [DF__o_auth_ac__autho__6AEFE058]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [DF__notificati__guid__69FBBC1F]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [DF__notificati__type__690797E6]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [DF__notificat__unrea__681373AD]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [DF__notificat__targe__671F4F74]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [DF__notificat__targe__662B2B3B]
GO
ALTER TABLE [dbo].[notification_actors] DROP CONSTRAINT [DF__notificat__perso__60083D91]
GO
ALTER TABLE [dbo].[notification_actors] DROP CONSTRAINT [DF__notificat__notif__5F141958]
GO
ALTER TABLE [dbo].[locations] DROP CONSTRAINT [DF__locations__statu__634EBE90]
GO
ALTER TABLE [dbo].[locations] DROP CONSTRAINT [DF__locations__lng__625A9A57]
GO
ALTER TABLE [dbo].[locations] DROP CONSTRAINT [DF__locations__lat__6166761E]
GO
ALTER TABLE [dbo].[locations] DROP CONSTRAINT [DF__locations__addre__607251E5]
GO
ALTER TABLE [dbo].[likes] DROP CONSTRAINT [DF__likes__guid__5F7E2DAC]
GO
ALTER TABLE [dbo].[likes] DROP CONSTRAINT [DF__likes__author_id__5E8A0973]
GO
ALTER TABLE [dbo].[likes] DROP CONSTRAINT [DF__likes__target_id__5D95E53A]
GO
ALTER TABLE [dbo].[likes] DROP CONSTRAINT [DF__likes__positive__5CA1C101]
GO
ALTER TABLE [dbo].[invitation_codes] DROP CONSTRAINT [DF__invitatio__count__5BAD9CC8]
GO
ALTER TABLE [dbo].[invitation_codes] DROP CONSTRAINT [DF__invitatio__user___5AB9788F]
GO
ALTER TABLE [dbo].[invitation_codes] DROP CONSTRAINT [DF__invitatio__token__59C55456]
GO
ALTER TABLE [dbo].[conversations] DROP CONSTRAINT [DF__conversat__subje__5E1FF51F]
GO
ALTER TABLE [dbo].[conversation_visibilities] DROP CONSTRAINT [DF__conversat__unrea__5D2BD0E6]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__receiv__5C37ACAD]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__sharin__5B438874]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__commen__55009F39]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__likes___540C7B00]
GO
ALTER TABLE [dbo].[blocks] DROP CONSTRAINT [DF__blocks__person_i__5A4F643B]
GO
ALTER TABLE [dbo].[blocks] DROP CONSTRAINT [DF__blocks__user_id__595B4002]
GO
ALTER TABLE [dbo].[authorizations] DROP CONSTRAINT [DF__authoriza__code___51300E55]
GO
ALTER TABLE [dbo].[authorizations] DROP CONSTRAINT [DF__authoriza__nonce__503BEA1C]
GO
ALTER TABLE [dbo].[authorizations] DROP CONSTRAINT [DF__authoriza__redir__4F47C5E3]
GO
ALTER TABLE [dbo].[authorizations] DROP CONSTRAINT [DF__authorizat__code__4E53A1AA]
GO
ALTER TABLE [dbo].[authorizations] DROP CONSTRAINT [DF__authoriza__refre__4D5F7D71]
GO
ALTER TABLE [dbo].[authorizations] DROP CONSTRAINT [DF__authoriza__o_aut__4C6B5938]
GO
ALTER TABLE [dbo].[authorizations] DROP CONSTRAINT [DF__authoriza__user___4B7734FF]
GO
ALTER TABLE [dbo].[aspects] DROP CONSTRAINT [DF__aspects__post_de__58671BC9]
GO
ALTER TABLE [dbo].[aspects] DROP CONSTRAINT [DF__aspects__order_i__5772F790]
GO
ALTER TABLE [dbo].[aspect_visibilities] DROP CONSTRAINT [DF__aspect_vi__share__567ED357]
GO
ALTER TABLE [dbo].[ar_internal_metadata] DROP CONSTRAINT [DF__ar_intern__value__47A6A41B]
GO
ALTER TABLE [dbo].[account_migrations] DROP CONSTRAINT [DF__account_m__compl__46B27FE2]
GO
ALTER TABLE [dbo].[account_deletions] DROP CONSTRAINT [DF__account_d__compl__45BE5BA9]
GO
ALTER TABLE [dbo].[account_deletions] DROP CONSTRAINT [DF__account_d__perso__44CA3770]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[user_preferences]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_preferences]') AND type in (N'U'))
DROP TABLE [dbo].[user_preferences]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tags]') AND type in (N'U'))
DROP TABLE [dbo].[tags]
GO
/****** Object:  Table [dbo].[taggings]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[taggings]') AND type in (N'U'))
DROP TABLE [dbo].[taggings]
GO
/****** Object:  Table [dbo].[tag_followings]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tag_followings]') AND type in (N'U'))
DROP TABLE [dbo].[tag_followings]
GO
/****** Object:  Table [dbo].[simple_captcha_data]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[simple_captcha_data]') AND type in (N'U'))
DROP TABLE [dbo].[simple_captcha_data]
GO
/****** Object:  Table [dbo].[signature_orders]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[signature_orders]') AND type in (N'U'))
DROP TABLE [dbo].[signature_orders]
GO
/****** Object:  Table [dbo].[share_visibilities]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[share_visibilities]') AND type in (N'U'))
DROP TABLE [dbo].[share_visibilities]
GO
/****** Object:  Table [dbo].[services]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[services]') AND type in (N'U'))
DROP TABLE [dbo].[services]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schema_migrations]') AND type in (N'U'))
DROP TABLE [dbo].[schema_migrations]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roles]') AND type in (N'U'))
DROP TABLE [dbo].[roles]
GO
/****** Object:  Table [dbo].[reports]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reports]') AND type in (N'U'))
DROP TABLE [dbo].[reports]
GO
/****** Object:  Table [dbo].[references]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[references]') AND type in (N'U'))
DROP TABLE [dbo].[references]
GO
/****** Object:  Table [dbo].[profiles]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[profiles]') AND type in (N'U'))
DROP TABLE [dbo].[profiles]
GO
/****** Object:  Table [dbo].[ppid]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ppid]') AND type in (N'U'))
DROP TABLE [dbo].[ppid]
GO
/****** Object:  Table [dbo].[posts]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[posts]') AND type in (N'U'))
DROP TABLE [dbo].[posts]
GO
/****** Object:  Table [dbo].[polls]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[polls]') AND type in (N'U'))
DROP TABLE [dbo].[polls]
GO
/****** Object:  Table [dbo].[poll_participations]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[poll_participations]') AND type in (N'U'))
DROP TABLE [dbo].[poll_participations]
GO
/****** Object:  Table [dbo].[poll_participation_signatures]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[poll_participation_signatures]') AND type in (N'U'))
DROP TABLE [dbo].[poll_participation_signatures]
GO
/****** Object:  Table [dbo].[poll_answers]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[poll_answers]') AND type in (N'U'))
DROP TABLE [dbo].[poll_answers]
GO
/****** Object:  Table [dbo].[pods]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pods]') AND type in (N'U'))
DROP TABLE [dbo].[pods]
GO
/****** Object:  Table [dbo].[photos]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[photos]') AND type in (N'U'))
DROP TABLE [dbo].[photos]
GO
/****** Object:  Table [dbo].[people]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[people]') AND type in (N'U'))
DROP TABLE [dbo].[people]
GO
/****** Object:  Table [dbo].[participations]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[participations]') AND type in (N'U'))
DROP TABLE [dbo].[participations]
GO
/****** Object:  Table [dbo].[open_graph_caches]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[open_graph_caches]') AND type in (N'U'))
DROP TABLE [dbo].[open_graph_caches]
GO
/****** Object:  Table [dbo].[o_embed_caches]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[o_embed_caches]') AND type in (N'U'))
DROP TABLE [dbo].[o_embed_caches]
GO
/****** Object:  Table [dbo].[o_auth_applications]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[o_auth_applications]') AND type in (N'U'))
DROP TABLE [dbo].[o_auth_applications]
GO
/****** Object:  Table [dbo].[o_auth_access_tokens]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[o_auth_access_tokens]') AND type in (N'U'))
DROP TABLE [dbo].[o_auth_access_tokens]
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notifications]') AND type in (N'U'))
DROP TABLE [dbo].[notifications]
GO
/****** Object:  Table [dbo].[notification_actors]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notification_actors]') AND type in (N'U'))
DROP TABLE [dbo].[notification_actors]
GO
/****** Object:  Table [dbo].[messages]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[messages]') AND type in (N'U'))
DROP TABLE [dbo].[messages]
GO
/****** Object:  Table [dbo].[mentions]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[mentions]') AND type in (N'U'))
DROP TABLE [dbo].[mentions]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[locations]') AND type in (N'U'))
DROP TABLE [dbo].[locations]
GO
/****** Object:  Table [dbo].[likes]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[likes]') AND type in (N'U'))
DROP TABLE [dbo].[likes]
GO
/****** Object:  Table [dbo].[like_signatures]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[like_signatures]') AND type in (N'U'))
DROP TABLE [dbo].[like_signatures]
GO
/****** Object:  Table [dbo].[invitation_codes]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[invitation_codes]') AND type in (N'U'))
DROP TABLE [dbo].[invitation_codes]
GO
/****** Object:  Table [dbo].[conversations]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[conversations]') AND type in (N'U'))
DROP TABLE [dbo].[conversations]
GO
/****** Object:  Table [dbo].[conversation_visibilities]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[conversation_visibilities]') AND type in (N'U'))
DROP TABLE [dbo].[conversation_visibilities]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contacts]') AND type in (N'U'))
DROP TABLE [dbo].[contacts]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
DROP TABLE [dbo].[comments]
GO
/****** Object:  Table [dbo].[comment_signatures]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comment_signatures]') AND type in (N'U'))
DROP TABLE [dbo].[comment_signatures]
GO
/****** Object:  Table [dbo].[blocks]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[blocks]') AND type in (N'U'))
DROP TABLE [dbo].[blocks]
GO
/****** Object:  Table [dbo].[authorizations]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[authorizations]') AND type in (N'U'))
DROP TABLE [dbo].[authorizations]
GO
/****** Object:  Table [dbo].[aspects]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspects]') AND type in (N'U'))
DROP TABLE [dbo].[aspects]
GO
/****** Object:  Table [dbo].[aspect_visibilities]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspect_visibilities]') AND type in (N'U'))
DROP TABLE [dbo].[aspect_visibilities]
GO
/****** Object:  Table [dbo].[aspect_memberships]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aspect_memberships]') AND type in (N'U'))
DROP TABLE [dbo].[aspect_memberships]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ar_internal_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[ar_internal_metadata]
GO
/****** Object:  Table [dbo].[account_migrations]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[account_migrations]') AND type in (N'U'))
DROP TABLE [dbo].[account_migrations]
GO
/****** Object:  Table [dbo].[account_deletions]    Script Date: 2021/8/5 9:36:31 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[account_deletions]') AND type in (N'U'))
DROP TABLE [dbo].[account_deletions]
GO
/****** Object:  Table [dbo].[account_deletions]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_deletions](
	[id] [int]  NOT NULL,
	[person_id] [int] NULL,
	[completed_at] [datetime2](0) NULL,
 CONSTRAINT [PK_account_deletions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [account_deletions$index_account_deletions_on_person_id] UNIQUE NONCLUSTERED 
(
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[account_migrations]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_migrations](
	[id] [bigint]  NOT NULL,
	[old_person_id] [int] NOT NULL,
	[new_person_id] [int] NOT NULL,
	[completed_at] [datetime2](0) NULL,
 CONSTRAINT [PK_account_migrations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [account_migrations$index_account_migrations_on_old_person_id] UNIQUE NONCLUSTERED 
(
	[old_person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [account_migrations$index_account_migrations_on_old_person_id_and_new_person_id] UNIQUE NONCLUSTERED 
(
	[old_person_id] ASC,
	[new_person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 9:36:31 ******/
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
/****** Object:  Table [dbo].[aspect_memberships]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspect_memberships](
	[id] [int] NOT NULL,
	[aspect_id] [int] NOT NULL,
	[contact_id] [int] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_aspect_memberships_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [aspect_memberships$index_aspect_memberships_on_aspect_id_and_contact_id] UNIQUE NONCLUSTERED 
(
	[aspect_id] ASC,
	[contact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspect_visibilities]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspect_visibilities](
	[id] [int] NOT NULL,
	[shareable_id] [int] NOT NULL,
	[aspect_id] [int] NOT NULL,
	[shareable_type] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_aspect_visibilities_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [aspect_visibilities$index_aspect_visibilities_on_shareable_and_aspect_id] UNIQUE NONCLUSTERED 
(
	[shareable_id] ASC,
	[shareable_type] ASC,
	[aspect_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspects]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspects](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[order_id] [int] NULL,
	[post_default] [smallint] NULL,
 CONSTRAINT [PK_aspects_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [aspects$index_aspects_on_user_id_and_name] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[authorizations]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[authorizations](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[o_auth_application_id] [int] NULL,
	[refresh_token] [nvarchar](255) NULL,
	[code] [nvarchar](255) NULL,
	[redirect_uri] [nvarchar](255) NULL,
	[nonce] [nvarchar](255) NULL,
	[scopes] [nvarchar](max) NULL,
	[code_used] [smallint] NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_authorizations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[blocks]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blocks](
	[id] [int] NOT NULL,
	[user_id] [int] NULL,
	[person_id] [int] NOT NULL,
 CONSTRAINT [PK_blocks_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comment_signatures]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comment_signatures](
	[comment_id] [int] NOT NULL,
	[author_signature] [nvarchar](max) NOT NULL,
	[signature_order_id] [int] NOT NULL,
	[additional_data] [nvarchar](max) NULL,
 CONSTRAINT [comment_signatures$index_comment_signatures_on_comment_id] UNIQUE CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int]  NOT NULL,
	[text] [nvarchar](max) NOT NULL,
	[commentable_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[guid] [nvarchar](255) NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[likes_count] [int] NOT NULL,
	[commentable_type] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_comments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [comments$index_comments_on_guid] UNIQUE NONCLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[person_id] [int] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[sharing] [smallint] NOT NULL,
	[receiving] [smallint] NOT NULL,
 CONSTRAINT [PK_contacts_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [contacts$index_contacts_on_user_id_and_person_id] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[conversation_visibilities]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conversation_visibilities](
	[id] [int] NOT NULL,
	[conversation_id] [int] NOT NULL,
	[person_id] [int] NOT NULL,
	[unread] [int] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_conversation_visibilities_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [conversation_visibilities$index_conversation_visibilities_usefully] UNIQUE NONCLUSTERED 
(
	[conversation_id] ASC,
	[person_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[conversations]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conversations](
	[id] [int]  NOT NULL,
	[subject] [nvarchar](255) NULL,
	[guid] [nvarchar](255) NOT NULL,
	[author_id] [int] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_conversations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [conversations$index_conversations_on_guid] UNIQUE NONCLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invitation_codes]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invitation_codes](
	[id] [int]  NOT NULL,
	[token] [nvarchar](255) NULL,
	[user_id] [int] NULL,
	[count] [int] NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_invitation_codes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[like_signatures]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[like_signatures](
	[like_id] [int] NOT NULL,
	[author_signature] [nvarchar](max) NOT NULL,
	[signature_order_id] [int] NOT NULL,
	[additional_data] [nvarchar](max) NULL,
 CONSTRAINT [like_signatures$index_like_signatures_on_like_id] UNIQUE CLUSTERED 
(
	[like_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[likes]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[likes](
	[id] [int]  NOT NULL,
	[positive] [smallint] NULL,
	[target_id] [int] NULL,
	[author_id] [int] NULL,
	[guid] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[target_type] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_likes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [likes$index_likes_on_guid] UNIQUE NONCLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [likes$index_likes_on_target_id_and_author_id_and_target_type] UNIQUE NONCLUSTERED 
(
	[target_id] ASC,
	[author_id] ASC,
	[target_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[locations]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[locations](
	[id] [int]  NOT NULL,
	[address] [nvarchar](255) NULL,
	[lat] [nvarchar](255) NULL,
	[lng] [nvarchar](255) NULL,
	[status_message_id] [int] NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_locations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[mentions]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mentions](
	[id] [int]  NOT NULL,
	[mentions_container_id] [int] NOT NULL,
	[person_id] [int] NOT NULL,
	[mentions_container_type] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_mentions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [mentions$index_mentions_on_person_and_mc_id_and_mc_type] UNIQUE NONCLUSTERED 
(
	[person_id] ASC,
	[mentions_container_id] ASC,
	[mentions_container_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[messages]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[messages](
	[id] [int]  NOT NULL,
	[conversation_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[guid] [nvarchar](255) NOT NULL,
	[text] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_messages_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [messages$index_messages_on_guid] UNIQUE NONCLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[notification_actors]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification_actors](
	[id] [int] NOT NULL,
	[notification_id] [int] NULL,
	[person_id] [int] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_notification_actors_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notifications](
	[id] [int]  NOT NULL,
	[target_type] [nvarchar](255) NULL,
	[target_id] [int] NULL,
	[recipient_id] [int] NOT NULL,
	[unread] [smallint] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[type] [nvarchar](255) NULL,
	[guid] [nvarchar](255) NULL,
 CONSTRAINT [PK_notifications_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [notifications$index_notifications_on_guid] UNIQUE NONCLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[o_auth_access_tokens]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[o_auth_access_tokens](
	[id] [int]  NOT NULL,
	[authorization_id] [int] NULL,
	[token] [nvarchar](255) NULL,
	[expires_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_o_auth_access_tokens_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [o_auth_access_tokens$index_o_auth_access_tokens_on_token] UNIQUE NONCLUSTERED 
(
	[token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[o_auth_applications]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[o_auth_applications](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[client_id] [nvarchar](255) NULL,
	[client_secret] [nvarchar](255) NULL,
	[client_name] [nvarchar](255) NULL,
	[redirect_uris] [nvarchar](max) NULL,
	[response_types] [nvarchar](255) NULL,
	[grant_types] [nvarchar](255) NULL,
	[application_type] [nvarchar](255) NULL,
	[contacts] [nvarchar](255) NULL,
	[logo_uri] [nvarchar](255) NULL,
	[client_uri] [nvarchar](255) NULL,
	[policy_uri] [nvarchar](255) NULL,
	[tos_uri] [nvarchar](255) NULL,
	[sector_identifier_uri] [nvarchar](255) NULL,
	[token_endpoint_auth_method] [nvarchar](255) NULL,
	[jwks] [nvarchar](max) NULL,
	[jwks_uri] [nvarchar](255) NULL,
	[ppid] [smallint] NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_o_auth_applications_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [o_auth_applications$index_o_auth_applications_on_client_id] UNIQUE NONCLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[o_embed_caches]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[o_embed_caches](
	[id] [int]  NOT NULL,
	[url] [nvarchar](1024) NOT NULL,
	[data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_o_embed_caches_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[open_graph_caches]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[open_graph_caches](
	[id] [int]  NOT NULL,
	[title] [nvarchar](255) NULL,
	[ob_type] [nvarchar](255) NULL,
	[image] [nvarchar](max) NULL,
	[url] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[video_url] [nvarchar](max) NULL,
 CONSTRAINT [PK_open_graph_caches_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[participations]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[participations](
	[id] [int]  NOT NULL,
	[guid] [nvarchar](255) NULL,
	[target_id] [int] NULL,
	[target_type] [nvarchar](60) NOT NULL,
	[author_id] [int] NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [PK_participations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [participations$index_participations_on_target_id_and_target_type_and_author_id] UNIQUE NONCLUSTERED 
(
	[target_id] ASC,
	[target_type] ASC,
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[people]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[people](
	[id] [int]  NOT NULL,
	[guid] [nvarchar](255) NOT NULL,
	[diaspora_handle] [nvarchar](255) NOT NULL,
	[serialized_public_key] [nvarchar](max) NOT NULL,
	[owner_id] [int] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[closed_account] [smallint] NULL,
	[fetch_status] [int] NULL,
	[pod_id] [int] NULL,
 CONSTRAINT [PK_people_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [people$index_people_on_diaspora_handle] UNIQUE NONCLUSTERED 
(
	[diaspora_handle] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [people$index_people_on_guid] UNIQUE NONCLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[photos]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[photos](
	[id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[public] [smallint] NOT NULL,
	[guid] [nvarchar](255) NOT NULL,
	[pending] [smallint] NOT NULL,
	[text] [nvarchar](max) NULL,
	[remote_photo_path] [nvarchar](max) NULL,
	[remote_photo_name] [nvarchar](255) NULL,
	[random_string] [nvarchar](255) NULL,
	[processed_image] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[unprocessed_image] [nvarchar](255) NULL,
	[status_message_guid] [nvarchar](255) NULL,
	[height] [int] NULL,
	[width] [int] NULL,
 CONSTRAINT [PK_photos_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [photos$index_photos_on_guid] UNIQUE NONCLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[pods]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pods](
	[id] [int]  NOT NULL,
	[host] [nvarchar](255) NOT NULL,
	[ssl] [smallint] NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[status] [int] NULL,
	[checked_at] [datetime2](0) NULL,
	[offline_since] [datetime2](0) NULL,
	[response_time] [int] NULL,
	[software] [nvarchar](255) NULL,
	[error] [nvarchar](255) NULL,
	[port] [int] NULL,
	[blocked] [smallint] NULL,
	[scheduled_check] [smallint] NOT NULL,
 CONSTRAINT [PK_pods_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [pods$index_pods_on_host_and_port] UNIQUE NONCLUSTERED 
(
	[host] ASC,
	[port] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[poll_answers]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poll_answers](
	[id] [int]  NOT NULL,
	[answer] [nvarchar](255) NOT NULL,
	[poll_id] [int] NOT NULL,
	[guid] [nvarchar](255) NULL,
	[vote_count] [int] NULL,
 CONSTRAINT [PK_poll_answers_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [poll_answers$index_poll_answers_on_guid] UNIQUE NONCLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[poll_participation_signatures]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poll_participation_signatures](
	[poll_participation_id] [int] NOT NULL,
	[author_signature] [nvarchar](max) NOT NULL,
	[signature_order_id] [int] NOT NULL,
	[additional_data] [nvarchar](max) NULL,
 CONSTRAINT [poll_participation_signatures$index_poll_participation_signatures_on_poll_participation_id] UNIQUE CLUSTERED 
(
	[poll_participation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[poll_participations]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poll_participations](
	[id] [int]  NOT NULL,
	[poll_answer_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[poll_id] [int] NOT NULL,
	[guid] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_poll_participations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [poll_participations$index_poll_participations_on_guid] UNIQUE NONCLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [poll_participations$index_poll_participations_on_poll_id_and_author_id] UNIQUE NONCLUSTERED 
(
	[poll_id] ASC,
	[author_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[polls]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[polls](
	[id] [int]  NOT NULL,
	[question] [nvarchar](255) NOT NULL,
	[status_message_id] [int] NOT NULL,
	[status] [smallint] NULL,
	[guid] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_polls_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [polls$index_polls_on_guid] UNIQUE NONCLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[posts]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[posts](
	[id] [int]  NOT NULL,
	[author_id] [int] NOT NULL,
	[public] [smallint] NOT NULL,
	[guid] [nvarchar](255) NOT NULL,
	[type] [nvarchar](40) NOT NULL,
	[text] [nvarchar](max) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[provider_display_name] [nvarchar](255) NULL,
	[root_guid] [nvarchar](255) NULL,
	[likes_count] [int] NULL,
	[comments_count] [int] NULL,
	[o_embed_cache_id] [int] NULL,
	[reshares_count] [int] NULL,
	[interacted_at] [datetime2](0) NULL,
	[tweet_id] [nvarchar](255) NULL,
	[open_graph_cache_id] [int] NULL,
	[tumblr_ids] [nvarchar](max) NULL,
 CONSTRAINT [PK_posts_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [posts$index_posts_on_author_id_and_root_guid] UNIQUE NONCLUSTERED 
(
	[author_id] ASC,
	[root_guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [posts$index_posts_on_guid] UNIQUE NONCLUSTERED 
(
	[guid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ppid]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ppid](
	[id] [int]  NOT NULL,
	[o_auth_application_id] [int] NULL,
	[user_id] [int] NULL,
	[guid] [nvarchar](32) NULL,
	[identifier] [nvarchar](255) NULL,
 CONSTRAINT [PK_ppid_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[profiles]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[profiles](
	[id] [int] NOT NULL,
	[diaspora_handle] [nvarchar](255) NULL,
	[first_name] [nvarchar](127) NULL,
	[last_name] [nvarchar](127) NULL,
	[image_url] [nvarchar](255) NULL,
	[image_url_small] [nvarchar](255) NULL,
	[image_url_medium] [nvarchar](255) NULL,
	[birthday] [date] NULL,
	[gender] [nvarchar](255) NULL,
	[bio] [nvarchar](max) NULL,
	[searchable] [smallint] NOT NULL,
	[person_id] [int] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[location] [nvarchar](255) NULL,
	[full_name] [nvarchar](70) NULL,
	[nsfw] [smallint] NULL,
	[public_details] [smallint] NULL,
 CONSTRAINT [PK_profiles_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[references]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[references](
	[id] [bigint]  NOT NULL,
	[source_id] [int] NOT NULL,
	[source_type] [nvarchar](60) NOT NULL,
	[target_id] [int] NOT NULL,
	[target_type] [nvarchar](60) NOT NULL,
 CONSTRAINT [PK_references_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [references$index_references_on_source_and_target] UNIQUE NONCLUSTERED 
(
	[source_id] ASC,
	[source_type] ASC,
	[target_id] ASC,
	[target_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reports]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reports](
	[id] [int]  NOT NULL,
	[item_id] [int] NOT NULL,
	[item_type] [nvarchar](255) NOT NULL,
	[reviewed] [smallint] NULL,
	[text] [nvarchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_reports_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[roles]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int] NOT NULL,
	[person_id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_roles_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 9:36:31 ******/
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
/****** Object:  Table [dbo].[services]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[id] [int]  NOT NULL,
	[type] [nvarchar](127) NOT NULL,
	[user_id] [int] NOT NULL,
	[uid] [nvarchar](127) NULL,
	[access_token] [nvarchar](255) NULL,
	[access_secret] [nvarchar](255) NULL,
	[nickname] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_services_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[share_visibilities]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[share_visibilities](
	[id] [int] NOT NULL,
	[shareable_id] [int] NOT NULL,
	[hidden] [smallint] NOT NULL,
	[shareable_type] [nvarchar](60) NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_share_visibilities_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [share_visibilities$shareable_and_user_id] UNIQUE NONCLUSTERED 
(
	[shareable_id] ASC,
	[shareable_type] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[signature_orders]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[signature_orders](
	[id] [int]  NOT NULL,
	[order] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_signature_orders_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [signature_orders$index_signature_orders_on_order] UNIQUE NONCLUSTERED 
(
	[order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[simple_captcha_data]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[simple_captcha_data](
	[id] [int]  NOT NULL,
	[key] [nvarchar](40) NULL,
	[value] [nvarchar](12) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_simple_captcha_data_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag_followings]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag_followings](
	[id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_tag_followings_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [tag_followings$index_tag_followings_on_tag_id_and_user_id] UNIQUE NONCLUSTERED 
(
	[tag_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[taggings]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taggings](
	[id] [int]  NOT NULL,
	[tag_id] [int] NULL,
	[taggable_id] [int] NULL,
	[taggable_type] [nvarchar](127) NULL,
	[tagger_id] [int] NULL,
	[tagger_type] [nvarchar](127) NULL,
	[context] [nvarchar](127) NULL,
	[created_at] [datetime2](0) NULL,
 CONSTRAINT [PK_taggings_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [taggings$index_taggings_uniquely] UNIQUE NONCLUSTERED 
(
	[taggable_id] ASC,
	[taggable_type] ASC,
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tags](
	[id] [int] NOT NULL,
	[name] [nvarchar](255) NULL,
	[taggings_count] [int] NULL,
 CONSTRAINT [PK_tags_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [tags$index_tags_on_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_preferences]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_preferences](
	[id] [int]  NOT NULL,
	[email_type] [nvarchar](255) NULL,
	[user_id] [int] NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_user_preferences_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/8/5 9:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int]  NOT NULL,
	[username] [nvarchar](255) NOT NULL,
	[serialized_private_key] [nvarchar](max) NULL,
	[getting_started] [smallint] NOT NULL,
	[disable_mail] [smallint] NOT NULL,
	[language] [nvarchar](255) NULL,
	[email] [nvarchar](255) NOT NULL,
	[encrypted_password] [nvarchar](255) NOT NULL,
	[reset_password_token] [nvarchar](255) NULL,
	[remember_created_at] [datetime2](0) NULL,
	[sign_in_count] [int] NULL,
	[current_sign_in_at] [datetime2](0) NULL,
	[last_sign_in_at] [datetime2](0) NULL,
	[current_sign_in_ip] [nvarchar](255) NULL,
	[last_sign_in_ip] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[invited_by_id] [int] NULL,
	[authentication_token] [nvarchar](30) NULL,
	[unconfirmed_email] [nvarchar](255) NULL,
	[confirm_email_token] [nvarchar](30) NULL,
	[locked_at] [datetime2](0) NULL,
	[show_community_spotlight_in_stream] [smallint] NOT NULL,
	[auto_follow_back] [smallint] NULL,
	[auto_follow_back_aspect_id] [int] NULL,
	[hidden_shareables] [nvarchar](max) NULL,
	[reset_password_sent_at] [datetime2](0) NULL,
	[last_seen] [datetime2](0) NULL,
	[remove_after] [datetime2](0) NULL,
	[export] [nvarchar](255) NULL,
	[exported_at] [datetime2](0) NULL,
	[exporting] [smallint] NULL,
	[strip_exif] [smallint] NULL,
	[exported_photos_file] [nvarchar](255) NULL,
	[exported_photos_at] [datetime2](0) NULL,
	[exporting_photos] [smallint] NULL,
	[color_theme] [nvarchar](255) NULL,
	[post_default_public] [smallint] NULL,
	[consumed_timestep] [int] NULL,
	[otp_required_for_login] [smallint] NULL,
	[otp_backup_codes] [nvarchar](max) NULL,
	[plain_otp_secret] [nvarchar](255) NULL,
 CONSTRAINT [PK_users_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$index_users_on_authentication_token] UNIQUE NONCLUSTERED 
(
	[authentication_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$index_users_on_email] UNIQUE NONCLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$index_users_on_username] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
ALTER TABLE [dbo].[account_deletions] ADD  DEFAULT (NULL) FOR [person_id]
GO
ALTER TABLE [dbo].[account_deletions] ADD  DEFAULT (NULL) FOR [completed_at]
GO
ALTER TABLE [dbo].[account_migrations] ADD  DEFAULT (NULL) FOR [completed_at]
GO
ALTER TABLE [dbo].[ar_internal_metadata] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[aspect_visibilities] ADD  DEFAULT (N'Post') FOR [shareable_type]
GO
ALTER TABLE [dbo].[aspects] ADD  DEFAULT (NULL) FOR [order_id]
GO
ALTER TABLE [dbo].[aspects] ADD  DEFAULT ((1)) FOR [post_default]
GO
ALTER TABLE [dbo].[authorizations] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[authorizations] ADD  DEFAULT (NULL) FOR [o_auth_application_id]
GO
ALTER TABLE [dbo].[authorizations] ADD  DEFAULT (NULL) FOR [refresh_token]
GO
ALTER TABLE [dbo].[authorizations] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[authorizations] ADD  DEFAULT (NULL) FOR [redirect_uri]
GO
ALTER TABLE [dbo].[authorizations] ADD  DEFAULT (NULL) FOR [nonce]
GO
ALTER TABLE [dbo].[authorizations] ADD  DEFAULT ((0)) FOR [code_used]
GO
ALTER TABLE [dbo].[blocks] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[blocks] ADD  DEFAULT (NULL) FOR [person_id]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [likes_count]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (N'Post') FOR [commentable_type]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT ((0)) FOR [sharing]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT ((0)) FOR [receiving]
GO
ALTER TABLE [dbo].[conversation_visibilities] ADD  DEFAULT ((0)) FOR [unread]
GO
ALTER TABLE [dbo].[conversations] ADD  DEFAULT (NULL) FOR [subject]
GO
ALTER TABLE [dbo].[invitation_codes] ADD  DEFAULT (NULL) FOR [token]
GO
ALTER TABLE [dbo].[invitation_codes] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[invitation_codes] ADD  DEFAULT (NULL) FOR [count]
GO
ALTER TABLE [dbo].[likes] ADD  DEFAULT ((1)) FOR [positive]
GO
ALTER TABLE [dbo].[likes] ADD  DEFAULT (NULL) FOR [target_id]
GO
ALTER TABLE [dbo].[likes] ADD  DEFAULT (NULL) FOR [author_id]
GO
ALTER TABLE [dbo].[likes] ADD  DEFAULT (NULL) FOR [guid]
GO
ALTER TABLE [dbo].[locations] ADD  DEFAULT (NULL) FOR [address]
GO
ALTER TABLE [dbo].[locations] ADD  DEFAULT (NULL) FOR [lat]
GO
ALTER TABLE [dbo].[locations] ADD  DEFAULT (NULL) FOR [lng]
GO
ALTER TABLE [dbo].[locations] ADD  DEFAULT (NULL) FOR [status_message_id]
GO
ALTER TABLE [dbo].[notification_actors] ADD  DEFAULT (NULL) FOR [notification_id]
GO
ALTER TABLE [dbo].[notification_actors] ADD  DEFAULT (NULL) FOR [person_id]
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT (NULL) FOR [target_type]
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT (NULL) FOR [target_id]
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT ((1)) FOR [unread]
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT (NULL) FOR [guid]
GO
ALTER TABLE [dbo].[o_auth_access_tokens] ADD  DEFAULT (NULL) FOR [authorization_id]
GO
ALTER TABLE [dbo].[o_auth_access_tokens] ADD  DEFAULT (NULL) FOR [token]
GO
ALTER TABLE [dbo].[o_auth_access_tokens] ADD  DEFAULT (NULL) FOR [expires_at]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [client_id]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [client_secret]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [client_name]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [response_types]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [grant_types]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (N'web') FOR [application_type]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [contacts]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [logo_uri]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [client_uri]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [policy_uri]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [tos_uri]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [sector_identifier_uri]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [token_endpoint_auth_method]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT (NULL) FOR [jwks_uri]
GO
ALTER TABLE [dbo].[o_auth_applications] ADD  DEFAULT ((0)) FOR [ppid]
GO
ALTER TABLE [dbo].[open_graph_caches] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[open_graph_caches] ADD  DEFAULT (NULL) FOR [ob_type]
GO
ALTER TABLE [dbo].[participations] ADD  DEFAULT (NULL) FOR [guid]
GO
ALTER TABLE [dbo].[participations] ADD  DEFAULT (NULL) FOR [target_id]
GO
ALTER TABLE [dbo].[participations] ADD  DEFAULT (NULL) FOR [author_id]
GO
ALTER TABLE [dbo].[participations] ADD  DEFAULT ((1)) FOR [count]
GO
ALTER TABLE [dbo].[people] ADD  DEFAULT (NULL) FOR [owner_id]
GO
ALTER TABLE [dbo].[people] ADD  DEFAULT ((0)) FOR [closed_account]
GO
ALTER TABLE [dbo].[people] ADD  DEFAULT ((0)) FOR [fetch_status]
GO
ALTER TABLE [dbo].[people] ADD  DEFAULT (NULL) FOR [pod_id]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT ((0)) FOR [public]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT ((0)) FOR [pending]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [remote_photo_name]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [random_string]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [processed_image]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [unprocessed_image]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [status_message_guid]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [height]
GO
ALTER TABLE [dbo].[photos] ADD  DEFAULT (NULL) FOR [width]
GO
ALTER TABLE [dbo].[pods] ADD  DEFAULT (NULL) FOR [ssl]
GO
ALTER TABLE [dbo].[pods] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[pods] ADD  DEFAULT ('1970-01-01 00:00:00') FOR [checked_at]
GO
ALTER TABLE [dbo].[pods] ADD  DEFAULT (NULL) FOR [offline_since]
GO
ALTER TABLE [dbo].[pods] ADD  DEFAULT ((-1)) FOR [response_time]
GO
ALTER TABLE [dbo].[pods] ADD  DEFAULT (NULL) FOR [software]
GO
ALTER TABLE [dbo].[pods] ADD  DEFAULT (NULL) FOR [error]
GO
ALTER TABLE [dbo].[pods] ADD  DEFAULT (NULL) FOR [port]
GO
ALTER TABLE [dbo].[pods] ADD  DEFAULT ((0)) FOR [blocked]
GO
ALTER TABLE [dbo].[pods] ADD  DEFAULT ((0)) FOR [scheduled_check]
GO
ALTER TABLE [dbo].[poll_answers] ADD  DEFAULT (NULL) FOR [guid]
GO
ALTER TABLE [dbo].[poll_answers] ADD  DEFAULT ((0)) FOR [vote_count]
GO
ALTER TABLE [dbo].[poll_participations] ADD  DEFAULT (NULL) FOR [guid]
GO
ALTER TABLE [dbo].[poll_participations] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[poll_participations] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[polls] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[polls] ADD  DEFAULT (NULL) FOR [guid]
GO
ALTER TABLE [dbo].[polls] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[polls] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [public]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT (NULL) FOR [provider_display_name]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT (NULL) FOR [root_guid]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [likes_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [comments_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT (NULL) FOR [o_embed_cache_id]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [reshares_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT (NULL) FOR [interacted_at]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT (NULL) FOR [tweet_id]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT (NULL) FOR [open_graph_cache_id]
GO
ALTER TABLE [dbo].[ppid] ADD  DEFAULT (NULL) FOR [o_auth_application_id]
GO
ALTER TABLE [dbo].[ppid] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[ppid] ADD  DEFAULT (NULL) FOR [guid]
GO
ALTER TABLE [dbo].[ppid] ADD  DEFAULT (NULL) FOR [identifier]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT (NULL) FOR [diaspora_handle]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT (NULL) FOR [first_name]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT (NULL) FOR [last_name]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT (NULL) FOR [image_url]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT (NULL) FOR [image_url_small]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT (NULL) FOR [image_url_medium]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT (NULL) FOR [birthday]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT (NULL) FOR [gender]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT ((1)) FOR [searchable]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT (NULL) FOR [location]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT (NULL) FOR [full_name]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT ((0)) FOR [nsfw]
GO
ALTER TABLE [dbo].[profiles] ADD  DEFAULT ((0)) FOR [public_details]
GO
ALTER TABLE [dbo].[reports] ADD  DEFAULT ((0)) FOR [reviewed]
GO
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[reports] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (NULL) FOR [person_id]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT (NULL) FOR [uid]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT (NULL) FOR [access_token]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT (NULL) FOR [access_secret]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT (NULL) FOR [nickname]
GO
ALTER TABLE [dbo].[share_visibilities] ADD  DEFAULT ((0)) FOR [hidden]
GO
ALTER TABLE [dbo].[share_visibilities] ADD  DEFAULT (N'Post') FOR [shareable_type]
GO
ALTER TABLE [dbo].[simple_captcha_data] ADD  DEFAULT (NULL) FOR [key]
GO
ALTER TABLE [dbo].[simple_captcha_data] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[simple_captcha_data] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[simple_captcha_data] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [tag_id]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [taggable_id]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [taggable_type]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [tagger_id]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [tagger_type]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [context]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT ((0)) FOR [taggings_count]
GO
ALTER TABLE [dbo].[user_preferences] ADD  DEFAULT (NULL) FOR [email_type]
GO
ALTER TABLE [dbo].[user_preferences] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [getting_started]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [disable_mail]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [language]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [email]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [encrypted_password]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [reset_password_token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [remember_created_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [sign_in_count]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [current_sign_in_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [last_sign_in_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [current_sign_in_ip]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [last_sign_in_ip]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [invited_by_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [authentication_token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [unconfirmed_email]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [confirm_email_token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [locked_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [show_community_spotlight_in_stream]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [auto_follow_back]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [auto_follow_back_aspect_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [reset_password_sent_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [last_seen]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [remove_after]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [export]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [exported_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [exporting]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [strip_exif]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [exported_photos_file]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [exported_photos_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [exporting_photos]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [color_theme]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [post_default_public]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [consumed_timestep]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [otp_required_for_login]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [plain_otp_secret]
GO
ALTER TABLE [dbo].[account_migrations]  WITH NOCHECK ADD  CONSTRAINT [account_migrations$fk_rails_610fe19943] FOREIGN KEY([new_person_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[account_migrations] CHECK CONSTRAINT [account_migrations$fk_rails_610fe19943]
GO
ALTER TABLE [dbo].[account_migrations]  WITH NOCHECK ADD  CONSTRAINT [account_migrations$fk_rails_ddbe553eee] FOREIGN KEY([old_person_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[account_migrations] CHECK CONSTRAINT [account_migrations$fk_rails_ddbe553eee]
GO
ALTER TABLE [dbo].[aspect_memberships]  WITH NOCHECK ADD  CONSTRAINT [aspect_memberships$aspect_memberships_aspect_id_fk] FOREIGN KEY([aspect_id])
REFERENCES [dbo].[aspects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[aspect_memberships] CHECK CONSTRAINT [aspect_memberships$aspect_memberships_aspect_id_fk]
GO
ALTER TABLE [dbo].[aspect_memberships]  WITH NOCHECK ADD  CONSTRAINT [aspect_memberships$aspect_memberships_contact_id_fk] FOREIGN KEY([contact_id])
REFERENCES [dbo].[contacts] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[aspect_memberships] CHECK CONSTRAINT [aspect_memberships$aspect_memberships_contact_id_fk]
GO
ALTER TABLE [dbo].[aspect_visibilities]  WITH NOCHECK ADD  CONSTRAINT [aspect_visibilities$aspect_visibilities_aspect_id_fk] FOREIGN KEY([aspect_id])
REFERENCES [dbo].[aspects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[aspect_visibilities] CHECK CONSTRAINT [aspect_visibilities$aspect_visibilities_aspect_id_fk]
GO
ALTER TABLE [dbo].[authorizations]  WITH NOCHECK ADD  CONSTRAINT [authorizations$fk_rails_4ecef5b8c5] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[authorizations] CHECK CONSTRAINT [authorizations$fk_rails_4ecef5b8c5]
GO
ALTER TABLE [dbo].[authorizations]  WITH NOCHECK ADD  CONSTRAINT [authorizations$fk_rails_e166644de5] FOREIGN KEY([o_auth_application_id])
REFERENCES [dbo].[o_auth_applications] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[authorizations] CHECK CONSTRAINT [authorizations$fk_rails_e166644de5]
GO
ALTER TABLE [dbo].[blocks]  WITH NOCHECK ADD  CONSTRAINT [blocks_people_id_fk] FOREIGN KEY([person_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[blocks] CHECK CONSTRAINT [blocks_people_id_fk]
GO
ALTER TABLE [dbo].[comment_signatures]  WITH NOCHECK ADD  CONSTRAINT [comment_signatures$comment_signatures_comment_id_fk] FOREIGN KEY([comment_id])
REFERENCES [dbo].[comments] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comment_signatures] CHECK CONSTRAINT [comment_signatures$comment_signatures_comment_id_fk]
GO
ALTER TABLE [dbo].[comment_signatures]  WITH NOCHECK ADD  CONSTRAINT [comment_signatures$comment_signatures_signature_orders_id_fk] FOREIGN KEY([signature_order_id])
REFERENCES [dbo].[signature_orders] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comment_signatures] CHECK CONSTRAINT [comment_signatures$comment_signatures_signature_orders_id_fk]
GO
ALTER TABLE [dbo].[comments]  WITH NOCHECK ADD  CONSTRAINT [comments$comments_author_id_fk] FOREIGN KEY([author_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[comments] CHECK CONSTRAINT [comments$comments_author_id_fk]
GO
ALTER TABLE [dbo].[contacts]  WITH NOCHECK ADD  CONSTRAINT [contacts$contacts_person_id_fk] FOREIGN KEY([person_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[contacts] CHECK CONSTRAINT [contacts$contacts_person_id_fk]
GO
ALTER TABLE [dbo].[conversation_visibilities]  WITH NOCHECK ADD  CONSTRAINT [conversation_visibilities$conversation_visibilities_conversation_id_fk] FOREIGN KEY([conversation_id])
REFERENCES [dbo].[conversations] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[conversation_visibilities] CHECK CONSTRAINT [conversation_visibilities$conversation_visibilities_conversation_id_fk]
GO
ALTER TABLE [dbo].[conversation_visibilities]  WITH NOCHECK ADD  CONSTRAINT [conversation_visibilities$conversation_visibilities_person_id_fk] FOREIGN KEY([person_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[conversation_visibilities] CHECK CONSTRAINT [conversation_visibilities$conversation_visibilities_person_id_fk]
GO
ALTER TABLE [dbo].[conversations]  WITH NOCHECK ADD  CONSTRAINT [conversations$conversations_author_id_fk] FOREIGN KEY([author_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[conversations] CHECK CONSTRAINT [conversations$conversations_author_id_fk]
GO
ALTER TABLE [dbo].[like_signatures]  WITH NOCHECK ADD  CONSTRAINT [like_signatures$like_signatures_like_id_fk] FOREIGN KEY([like_id])
REFERENCES [dbo].[likes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[like_signatures] CHECK CONSTRAINT [like_signatures$like_signatures_like_id_fk]
GO
ALTER TABLE [dbo].[like_signatures]  WITH NOCHECK ADD  CONSTRAINT [like_signatures$like_signatures_signature_orders_id_fk] FOREIGN KEY([signature_order_id])
REFERENCES [dbo].[signature_orders] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[like_signatures] CHECK CONSTRAINT [like_signatures$like_signatures_signature_orders_id_fk]
GO
ALTER TABLE [dbo].[likes]  WITH NOCHECK ADD  CONSTRAINT [likes$likes_author_id_fk] FOREIGN KEY([author_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[likes] CHECK CONSTRAINT [likes$likes_author_id_fk]
GO
ALTER TABLE [dbo].[messages]  WITH NOCHECK ADD  CONSTRAINT [messages$messages_author_id_fk] FOREIGN KEY([author_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[messages] CHECK CONSTRAINT [messages$messages_author_id_fk]
GO
ALTER TABLE [dbo].[messages]  WITH NOCHECK ADD  CONSTRAINT [messages$messages_conversation_id_fk] FOREIGN KEY([conversation_id])
REFERENCES [dbo].[conversations] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[messages] CHECK CONSTRAINT [messages$messages_conversation_id_fk]
GO
ALTER TABLE [dbo].[notification_actors]  WITH NOCHECK ADD  CONSTRAINT [notification_actors$notification_actors_notification_id_fk] FOREIGN KEY([notification_id])
REFERENCES [dbo].[notifications] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[notification_actors] CHECK CONSTRAINT [notification_actors$notification_actors_notification_id_fk]
GO
ALTER TABLE [dbo].[notification_actors]  WITH NOCHECK ADD  CONSTRAINT [notification_actors_people_id_fk] FOREIGN KEY([person_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[notification_actors] CHECK CONSTRAINT [notification_actors_people_id_fk]
GO
ALTER TABLE [dbo].[o_auth_access_tokens]  WITH NOCHECK ADD  CONSTRAINT [o_auth_access_tokens$fk_rails_5debabcff3] FOREIGN KEY([authorization_id])
REFERENCES [dbo].[authorizations] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[o_auth_access_tokens] CHECK CONSTRAINT [o_auth_access_tokens$fk_rails_5debabcff3]
GO
ALTER TABLE [dbo].[o_auth_applications]  WITH NOCHECK ADD  CONSTRAINT [o_auth_applications$fk_rails_ad75323da2] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[o_auth_applications] CHECK CONSTRAINT [o_auth_applications$fk_rails_ad75323da2]
GO
ALTER TABLE [dbo].[people]  WITH NOCHECK ADD  CONSTRAINT [people$people_pod_id_fk] FOREIGN KEY([pod_id])
REFERENCES [dbo].[pods] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[people] CHECK CONSTRAINT [people$people_pod_id_fk]
GO
ALTER TABLE [dbo].[people]  WITH NOCHECK ADD  CONSTRAINT [people_users_id_fk] FOREIGN KEY([owner_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[people] CHECK CONSTRAINT [people_users_id_fk]
GO
ALTER TABLE [dbo].[poll_participation_signatures]  WITH NOCHECK ADD  CONSTRAINT [poll_participation_signatures$poll_participation_signatures_poll_participation_id_fk] FOREIGN KEY([poll_participation_id])
REFERENCES [dbo].[poll_participations] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poll_participation_signatures] CHECK CONSTRAINT [poll_participation_signatures$poll_participation_signatures_poll_participation_id_fk]
GO
ALTER TABLE [dbo].[poll_participation_signatures]  WITH NOCHECK ADD  CONSTRAINT [poll_participation_signatures$poll_participation_signatures_signature_orders_id_fk] FOREIGN KEY([signature_order_id])
REFERENCES [dbo].[signature_orders] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poll_participation_signatures] CHECK CONSTRAINT [poll_participation_signatures$poll_participation_signatures_signature_orders_id_fk]
GO
ALTER TABLE [dbo].[posts]  WITH NOCHECK ADD  CONSTRAINT [posts$posts_author_id_fk] FOREIGN KEY([author_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[posts] CHECK CONSTRAINT [posts$posts_author_id_fk]
GO
ALTER TABLE [dbo].[ppid]  WITH NOCHECK ADD  CONSTRAINT [ppid$fk_rails_150457f962] FOREIGN KEY([o_auth_application_id])
REFERENCES [dbo].[o_auth_applications] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ppid] CHECK CONSTRAINT [ppid$fk_rails_150457f962]
GO
ALTER TABLE [dbo].[ppid]  WITH NOCHECK ADD  CONSTRAINT [ppid$fk_rails_e6b8e5264f] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ppid] CHECK CONSTRAINT [ppid$fk_rails_e6b8e5264f]
GO
ALTER TABLE [dbo].[profiles]  WITH NOCHECK ADD  CONSTRAINT [profiles$profiles_person_id_fk] FOREIGN KEY([person_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[profiles] CHECK CONSTRAINT [profiles$profiles_person_id_fk]
GO
ALTER TABLE [dbo].[roles]  WITH NOCHECK ADD  CONSTRAINT [roles_people_id_fk] FOREIGN KEY([person_id])
REFERENCES [dbo].[people] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[roles] CHECK CONSTRAINT [roles_people_id_fk]
GO
ALTER TABLE [dbo].[services]  WITH NOCHECK ADD  CONSTRAINT [services$services_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[services] CHECK CONSTRAINT [services$services_user_id_fk]
GO
ALTER TABLE [dbo].[share_visibilities]  WITH NOCHECK ADD  CONSTRAINT [share_visibilities$share_visibilities_user_id_fk] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[share_visibilities] CHECK CONSTRAINT [share_visibilities$share_visibilities_user_id_fk]
GO
