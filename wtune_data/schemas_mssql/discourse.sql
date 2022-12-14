-- USE [discourse_base]
GO
ALTER TABLE [dbo].[user_profiles] DROP CONSTRAINT [fk_rails_ca64aa462b]
GO
ALTER TABLE [dbo].[user_profiles] DROP CONSTRAINT [fk_rails_1d362f2e97]
GO
ALTER TABLE [dbo].[poll_votes] DROP CONSTRAINT [fk_rails_a6e6974b7e]
GO
ALTER TABLE [dbo].[poll_votes] DROP CONSTRAINT [fk_rails_848ece0184]
GO
ALTER TABLE [dbo].[poll_options] DROP CONSTRAINT [fk_rails_aa85becb42]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__activ__30792600]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__verif__2F8501C7]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__wildc__2E90DD8E]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__statu__2D9CB955]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__last___2CA8951C]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__conte__2BB470E3]
GO
ALTER TABLE [dbo].[web_hook_events] DROP CONSTRAINT [DF__web_hook___durat__28D80438]
GO
ALTER TABLE [dbo].[web_hook_events] DROP CONSTRAINT [DF__web_hook___statu__27E3DFFF]
GO
ALTER TABLE [dbo].[web_crawler_requests] DROP CONSTRAINT [DF__web_crawl__count__1E5A75C5]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__staged__11F49EE0]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__moderator__11007AA7]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__flag_leve__100C566E]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__views__0F183235]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__approved__0E240DFC]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__admin__0D2FE9C3]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__active__0C3BC58A]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__seen_noti__0B47A151]
GO
ALTER TABLE [dbo].[user_visits] DROP CONSTRAINT [DF__user_visi__time___0682EC34]
GO
ALTER TABLE [dbo].[user_visits] DROP CONSTRAINT [DF__user_visi__mobil__058EC7FB]
GO
ALTER TABLE [dbo].[user_visits] DROP CONSTRAINT [DF__user_visi__posts__049AA3C2]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__disti__7FD5EEA5]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__flags__7EE1CA6C]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__flags__7DEDA633]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__flags__7CF981FA]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__bounc__7C055DC1]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__topic__7B113988]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__post___7A1D154F]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__topic__7928F116]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__likes__7834CCDD]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__likes__7740A8A4]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__posts__764C846B]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__days___75586032]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__time___74643BF9]
GO
ALTER TABLE [dbo].[user_stats] DROP CONSTRAINT [DF__user_stat__topic__737017C0]
GO
ALTER TABLE [dbo].[user_security_keys] DROP CONSTRAINT [DF__user_secu__enabl__68F2894D]
GO
ALTER TABLE [dbo].[user_security_keys] DROP CONSTRAINT [DF__user_secu__facto__67FE6514]
GO
ALTER TABLE [dbo].[user_second_factors] DROP CONSTRAINT [DF__user_seco__enabl__6521F869]
GO
ALTER TABLE [dbo].[user_search_data] DROP CONSTRAINT [DF__user_sear__versi__5E74FADA]
GO
ALTER TABLE [dbo].[user_profiles] DROP CONSTRAINT [DF__user_prof__views__5B988E2F]
GO
ALTER TABLE [dbo].[user_profiles] DROP CONSTRAINT [DF__user_prof__badge__5AA469F6]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__enabl__5303482E]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__title__520F23F5]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__email__511AFFBC]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__email__5026DB83]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__text___4F32B74A]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__text___4E3E9311]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__hide___4D4A6ED8]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__allow__4C564A9F]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__theme__4B622666]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__inclu__4A6E022D]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__maili__4979DDF4]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__like___4885B9BB]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__email__47919582]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__email__469D7149]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__autom__45A94D10]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__disab__44B528D7]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__dynam__43C1049E]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__enabl__42CCE065]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__exter__41D8BC2C]
GO
ALTER TABLE [dbo].[user_options] DROP CONSTRAINT [DF__user_opti__maili__40E497F3]
GO
ALTER TABLE [dbo].[user_histories] DROP CONSTRAINT [DF__user_hist__admin__347EC10E]
GO
ALTER TABLE [dbo].[user_fields] DROP CONSTRAINT [DF__user_fiel__show___31A25463]
GO
ALTER TABLE [dbo].[user_fields] DROP CONSTRAINT [DF__user_fiel__posit__30AE302A]
GO
ALTER TABLE [dbo].[user_fields] DROP CONSTRAINT [DF__user_fiel__show___2FBA0BF1]
GO
ALTER TABLE [dbo].[user_fields] DROP CONSTRAINT [DF__user_fiel__requi__2EC5E7B8]
GO
ALTER TABLE [dbo].[user_fields] DROP CONSTRAINT [DF__user_fiel__edita__2DD1C37F]
GO
ALTER TABLE [dbo].[user_emails] DROP CONSTRAINT [DF__user_emai__prima__2724C5F0]
GO
ALTER TABLE [dbo].[user_badges] DROP CONSTRAINT [DF__user_badges__seq__226010D3]
GO
ALTER TABLE [dbo].[user_auth_tokens] DROP CONSTRAINT [DF__user_auth__auth___15FA39EE]
GO
ALTER TABLE [dbo].[uploads] DROP CONSTRAINT [DF__uploads__secure__6B0FDBE9]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__reviewab__58F12BAE]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__highest___57FD0775]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__pinned_g__5708E33C]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__particip__5614BF03]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__percent___55209ACA]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__spam_cou__542C7691]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__notify_m__53385258]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__has_summ__52442E1F]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__archived__515009E6]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__closed__505BE5AD]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__moderato__4F67C174]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__visible__4E739D3B]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__incoming__4D7F7902]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__like_cou__4C8B54C9]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__highest___4B973090]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__reply_co__4AA30C57]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__posts_co__49AEE81E]
GO
ALTER TABLE [dbo].[topics] DROP CONSTRAINT [DF__topics__views__48BAC3E5]
GO
ALTER TABLE [dbo].[topic_users] DROP CONSTRAINT [DF__topic_use__bookm__44EA3301]
GO
ALTER TABLE [dbo].[topic_users] DROP CONSTRAINT [DF__topic_use__liked__43F60EC8]
GO
ALTER TABLE [dbo].[topic_users] DROP CONSTRAINT [DF__topic_use__total__4301EA8F]
GO
ALTER TABLE [dbo].[topic_users] DROP CONSTRAINT [DF__topic_use__notif__420DC656]
GO
ALTER TABLE [dbo].[topic_users] DROP CONSTRAINT [DF__topic_use__poste__4119A21D]
GO
ALTER TABLE [dbo].[topic_timers] DROP CONSTRAINT [DF__topic_tim__publi__3E3D3572]
GO
ALTER TABLE [dbo].[topic_timers] DROP CONSTRAINT [DF__topic_tim__based__3D491139]
GO
ALTER TABLE [dbo].[topic_search_data] DROP CONSTRAINT [DF__topic_sea__versi__30E33A54]
GO
ALTER TABLE [dbo].[topic_links] DROP CONSTRAINT [DF__topic_lin__quote__2E06CDA9]
GO
ALTER TABLE [dbo].[topic_links] DROP CONSTRAINT [DF__topic_lin__click__2D12A970]
GO
ALTER TABLE [dbo].[topic_links] DROP CONSTRAINT [DF__topic_lin__refle__2C1E8537]
GO
ALTER TABLE [dbo].[topic_links] DROP CONSTRAINT [DF__topic_lin__inter__2B2A60FE]
GO
ALTER TABLE [dbo].[topic_groups] DROP CONSTRAINT [DF__topic_gro__last___247D636F]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__quart__162F4418]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__quart__153B1FDF]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__quart__1446FBA6]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__quart__1352D76D]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__quart__125EB334]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__yearl__116A8EFB]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__month__10766AC2]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__weekl__0F824689]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__daily__0E8E2250]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__all_s__0D99FE17]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__yearl__0CA5D9DE]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__month__0BB1B5A5]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__weekl__0ABD916C]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__daily__09C96D33]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__daily__08D548FA]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__daily__07E124C1]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__daily__06ED0088]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__weekl__05F8DC4F]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__weekl__0504B816]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__weekl__041093DD]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__month__031C6FA4]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__month__02284B6B]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__month__01342732]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__yearl__004002F9]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__yearl__7F4BDEC0]
GO
ALTER TABLE [dbo].[top_topics] DROP CONSTRAINT [DF__top_topic__yearl__7E57BA87]
GO
ALTER TABLE [dbo].[themes] DROP CONSTRAINT [DF__themes__enabled__7B7B4DDC]
GO
ALTER TABLE [dbo].[themes] DROP CONSTRAINT [DF__themes__componen__7A8729A3]
GO
ALTER TABLE [dbo].[themes] DROP CONSTRAINT [DF__themes__hidden__7993056A]
GO
ALTER TABLE [dbo].[themes] DROP CONSTRAINT [DF__themes__user_sel__789EE131]
GO
ALTER TABLE [dbo].[themes] DROP CONSTRAINT [DF__themes__compiler__77AABCF8]
GO
ALTER TABLE [dbo].[theme_fields] DROP CONSTRAINT [DF__theme_fie__type___6B44E613]
GO
ALTER TABLE [dbo].[theme_fields] DROP CONSTRAINT [DF__theme_fie__compi__6A50C1DA]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__pm_topic_c__62AFA012]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__topic_coun__61BB7BD9]
GO
ALTER TABLE [dbo].[tag_search_data] DROP CONSTRAINT [DF__tag_searc__versi__592635D8]
GO
ALTER TABLE [dbo].[tag_groups] DROP CONSTRAINT [DF__tag_group__one_p__5649C92D]
GO
ALTER TABLE [dbo].[tag_group_permissions] DROP CONSTRAINT [DF__tag_group__permi__536D5C82]
GO
ALTER TABLE [dbo].[stylesheet_cache] DROP CONSTRAINT [DF__styleshee__theme__4AD81681]
GO
ALTER TABLE [dbo].[screened_urls] DROP CONSTRAINT [DF__screened___match__33008CF0]
GO
ALTER TABLE [dbo].[screened_ip_addresses] DROP CONSTRAINT [DF__screened___match__2C538F61]
GO
ALTER TABLE [dbo].[screened_emails] DROP CONSTRAINT [DF__screened___match__25A691D2]
GO
ALTER TABLE [dbo].[reviewables] DROP CONSTRAINT [DF__reviewabl__versi__1293BD5E]
GO
ALTER TABLE [dbo].[reviewables] DROP CONSTRAINT [DF__reviewabl__poten__119F9925]
GO
ALTER TABLE [dbo].[reviewables] DROP CONSTRAINT [DF__reviewabl__score__10AB74EC]
GO
ALTER TABLE [dbo].[reviewables] DROP CONSTRAINT [DF__reviewabl__revie__0FB750B3]
GO
ALTER TABLE [dbo].[reviewables] DROP CONSTRAINT [DF__reviewabl__statu__0EC32C7A]
GO
ALTER TABLE [dbo].[reviewable_scores] DROP CONSTRAINT [DF__reviewabl__user___0BE6BFCF]
GO
ALTER TABLE [dbo].[reviewable_scores] DROP CONSTRAINT [DF__reviewabl__take___0AF29B96]
GO
ALTER TABLE [dbo].[reviewable_scores] DROP CONSTRAINT [DF__reviewabl__score__09FE775D]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__public_ve__7D98A078]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__via_email__7CA47C3F]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__reply_quo__7BB05806]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__self_edit__7ABC33CD]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__wiki__79C80F94]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__cook_meth__78D3EB5B]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__version__77DFC722]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__like_scor__76EBA2E9]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__notify_us__75F77EB0]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__percent_r__75035A77]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__user_dele__740F363E]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__inappropr__731B1205]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__illegal_c__7226EDCC]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__spam_coun__7132C993]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__notify_mo__703EA55A]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__hidden__6F4A8121]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__post_type__6E565CE8]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__reads__6D6238AF]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__bookmark___6C6E1476]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__incoming___6B79F03D]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__like_coun__6A85CC04]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__off_topic__6991A7CB]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__quote_cou__689D8392]
GO
ALTER TABLE [dbo].[posts] DROP CONSTRAINT [DF__posts__reply_cou__67A95F59]
GO
ALTER TABLE [dbo].[post_search_data] DROP CONSTRAINT [DF__post_sear__versi__58671BC9]
GO
ALTER TABLE [dbo].[post_revisions] DROP CONSTRAINT [DF__post_revi__hidde__558AAF1E]
GO
ALTER TABLE [dbo].[post_actions] DROP CONSTRAINT [DF__post_acti__targe__4830B400]
GO
ALTER TABLE [dbo].[post_actions] DROP CONSTRAINT [DF__post_acti__staff__473C8FC7]
GO
ALTER TABLE [dbo].[post_action_types] DROP CONSTRAINT [DF__post_acti__revie__4460231C]
GO
ALTER TABLE [dbo].[post_action_types] DROP CONSTRAINT [DF__post_acti__score__436BFEE3]
GO
ALTER TABLE [dbo].[post_action_types] DROP CONSTRAINT [DF__post_acti__posit__4277DAAA]
GO
ALTER TABLE [dbo].[post_action_types] DROP CONSTRAINT [DF__post_acti__is_fl__4183B671]
GO
ALTER TABLE [dbo].[polls] DROP CONSTRAINT [DF__polls__chart_typ__3AD6B8E2]
GO
ALTER TABLE [dbo].[polls] DROP CONSTRAINT [DF__polls__visibilit__39E294A9]
GO
ALTER TABLE [dbo].[polls] DROP CONSTRAINT [DF__polls__results__38EE7070]
GO
ALTER TABLE [dbo].[polls] DROP CONSTRAINT [DF__polls__status__37FA4C37]
GO
ALTER TABLE [dbo].[polls] DROP CONSTRAINT [DF__polls__type__370627FE]
GO
ALTER TABLE [dbo].[notifications] DROP CONSTRAINT [DF__notificati__read__10E07F16]
GO
ALTER TABLE [dbo].[invites] DROP CONSTRAINT [DF__invites__moderat__00AA174D]
GO
ALTER TABLE [dbo].[incoming_emails] DROP CONSTRAINT [DF__incoming___is_bo__7073AF84]
GO
ALTER TABLE [dbo].[incoming_emails] DROP CONSTRAINT [DF__incoming___is_au__6F7F8B4B]
GO
ALTER TABLE [dbo].[incoming_domains] DROP CONSTRAINT [DF__incoming___https__6CA31EA0]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__members___5F492382]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__publish___5E54FF49]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__mentiona__5D60DB10]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__messagea__5C6CB6D7]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__public_a__5B78929E]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__public_e__5A846E65]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__visibili__59904A2C]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__default___589C25F3]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__allow_me__57A801BA]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__has_mess__56B3DD81]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__primary___55BFB948]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__automati__54CB950F]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__user_cou__53D770D6]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__automati__52E34C9D]
GO
ALTER TABLE [dbo].[group_users] DROP CONSTRAINT [DF__group_use__notif__5006DFF2]
GO
ALTER TABLE [dbo].[group_users] DROP CONSTRAINT [DF__group_use__owner__4F12BBB9]
GO
ALTER TABLE [dbo].[given_daily_likes] DROP CONSTRAINT [DF__given_dai__limit__43A1090D]
GO
ALTER TABLE [dbo].[email_tokens] DROP CONSTRAINT [DF__email_tok__expir__39237A9A]
GO
ALTER TABLE [dbo].[email_tokens] DROP CONSTRAINT [DF__email_tok__confi__382F5661]
GO
ALTER TABLE [dbo].[email_logs] DROP CONSTRAINT [DF__email_log__bounc__318258D2]
GO
ALTER TABLE [dbo].[drafts] DROP CONSTRAINT [DF__drafts__revision__28ED12D1]
GO
ALTER TABLE [dbo].[drafts] DROP CONSTRAINT [DF__drafts__sequence__27F8EE98]
GO
ALTER TABLE [dbo].[directory_items] DROP CONSTRAINT [DF__directory__posts__1F63A897]
GO
ALTER TABLE [dbo].[directory_items] DROP CONSTRAINT [DF__directory__days___1E6F845E]
GO
ALTER TABLE [dbo].[color_schemes] DROP CONSTRAINT [DF__color_sch__via_w__13F1F5EB]
GO
ALTER TABLE [dbo].[color_schemes] DROP CONSTRAINT [DF__color_sch__versi__12FDD1B2]
GO
ALTER TABLE [dbo].[category_tag_stats] DROP CONSTRAINT [DF__category___topic__0880433F]
GO
ALTER TABLE [dbo].[category_search_data] DROP CONSTRAINT [DF__category___versi__7FEAFD3E]
GO
ALTER TABLE [dbo].[category_groups] DROP CONSTRAINT [DF__category___permi__7D0E9093]
GO
ALTER TABLE [dbo].[category_featured_topics] DROP CONSTRAINT [DF__category_f__rank__7A3223E8]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__min_t__70A8B9AE]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__allow__6FB49575]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__searc__6EC0713C]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__navig__6DCC4D03]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__minim__6CD828CA]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__maili__6BE40491]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__defau__6AEFE058]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__subca__69FBBC1F]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__num_f__690797E6]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__show___681373AD]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__all_t__671F4F74]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__topic__662B2B3B]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__auto___65370702]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__allow__6442E2C9]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__posts__634EBE90]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__topic__625A9A57]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__email__6166761E]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__posts__607251E5]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__posts__5F7E2DAC]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__posts__5E8A0973]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__post___5D95E53A]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__read___5CA1C101]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__text___5BAD9CC8]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__topic__5AB9788F]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__topic__59C55456]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__topic__58D1301D]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__topic__57DD0BE4]
GO
ALTER TABLE [dbo].[categories] DROP CONSTRAINT [DF__categorie__color__56E8E7AB]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [DF__badges__system__4E53A1AA]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [DF__badges__show_pos__4D5F7D71]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [DF__badges__badge_gr__4C6B5938]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [DF__badges__auto_rev__4B7734FF]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [DF__badges__enabled__4A8310C6]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [DF__badges__target_p__498EEC8D]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [DF__badges__listable__489AC854]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [DF__badges__multiple__47A6A41B]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [DF__badges__allow_ti__46B27FE2]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [DF__badges__grant_co__45BE5BA9]
GO
ALTER TABLE [dbo].[application_requests] DROP CONSTRAINT [DF__applicati__count__30C33EC3]
GO
ALTER TABLE [dbo].[api_keys] DROP CONSTRAINT [DF__api_keys__hidden__2A164134]
GO
/****** Object:  Table [dbo].[web_hooks]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_hooks]') AND type in (N'U'))
DROP TABLE [dbo].[web_hooks]
GO
/****** Object:  Table [dbo].[web_hook_events]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_hook_events]') AND type in (N'U'))
DROP TABLE [dbo].[web_hook_events]
GO
/****** Object:  Table [dbo].[web_hook_event_types_hooks]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_hook_event_types_hooks]') AND type in (N'U'))
DROP TABLE [dbo].[web_hook_event_types_hooks]
GO
/****** Object:  Table [dbo].[web_hook_event_types]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_hook_event_types]') AND type in (N'U'))
DROP TABLE [dbo].[web_hook_event_types]
GO
/****** Object:  Table [dbo].[web_crawler_requests]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_crawler_requests]') AND type in (N'U'))
DROP TABLE [dbo].[web_crawler_requests]
GO
/****** Object:  Table [dbo].[watched_words]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[watched_words]') AND type in (N'U'))
DROP TABLE [dbo].[watched_words]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[user_warnings]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_warnings]') AND type in (N'U'))
DROP TABLE [dbo].[user_warnings]
GO
/****** Object:  Table [dbo].[user_visits]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_visits]') AND type in (N'U'))
DROP TABLE [dbo].[user_visits]
GO
/****** Object:  Table [dbo].[user_uploads]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_uploads]') AND type in (N'U'))
DROP TABLE [dbo].[user_uploads]
GO
/****** Object:  Table [dbo].[user_stats]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_stats]') AND type in (N'U'))
DROP TABLE [dbo].[user_stats]
GO
/****** Object:  Table [dbo].[user_security_keys]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_security_keys]') AND type in (N'U'))
DROP TABLE [dbo].[user_security_keys]
GO
/****** Object:  Table [dbo].[user_second_factors]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_second_factors]') AND type in (N'U'))
DROP TABLE [dbo].[user_second_factors]
GO
/****** Object:  Table [dbo].[user_search_data]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_search_data]') AND type in (N'U'))
DROP TABLE [dbo].[user_search_data]
GO
/****** Object:  Table [dbo].[user_profiles]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_profiles]') AND type in (N'U'))
DROP TABLE [dbo].[user_profiles]
GO
/****** Object:  Table [dbo].[user_profile_views]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_profile_views]') AND type in (N'U'))
DROP TABLE [dbo].[user_profile_views]
GO
/****** Object:  Table [dbo].[user_options]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_options]') AND type in (N'U'))
DROP TABLE [dbo].[user_options]
GO
/****** Object:  Table [dbo].[user_open_ids]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_open_ids]') AND type in (N'U'))
DROP TABLE [dbo].[user_open_ids]
GO
/****** Object:  Table [dbo].[user_histories]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_histories]') AND type in (N'U'))
DROP TABLE [dbo].[user_histories]
GO
/****** Object:  Table [dbo].[user_fields]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_fields]') AND type in (N'U'))
DROP TABLE [dbo].[user_fields]
GO
/****** Object:  Table [dbo].[user_field_options]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_field_options]') AND type in (N'U'))
DROP TABLE [dbo].[user_field_options]
GO
/****** Object:  Table [dbo].[user_exports]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_exports]') AND type in (N'U'))
DROP TABLE [dbo].[user_exports]
GO
/****** Object:  Table [dbo].[user_emails]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_emails]') AND type in (N'U'))
DROP TABLE [dbo].[user_emails]
GO
/****** Object:  Table [dbo].[user_custom_fields]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_custom_fields]') AND type in (N'U'))
DROP TABLE [dbo].[user_custom_fields]
GO
/****** Object:  Table [dbo].[user_badges]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_badges]') AND type in (N'U'))
DROP TABLE [dbo].[user_badges]
GO
/****** Object:  Table [dbo].[user_avatars]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_avatars]') AND type in (N'U'))
DROP TABLE [dbo].[user_avatars]
GO
/****** Object:  Table [dbo].[user_auth_tokens]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_auth_tokens]') AND type in (N'U'))
DROP TABLE [dbo].[user_auth_tokens]
GO
/****** Object:  Table [dbo].[user_auth_token_logs]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_auth_token_logs]') AND type in (N'U'))
DROP TABLE [dbo].[user_auth_token_logs]
GO
/****** Object:  Table [dbo].[user_associated_accounts]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_associated_accounts]') AND type in (N'U'))
DROP TABLE [dbo].[user_associated_accounts]
GO
/****** Object:  Table [dbo].[user_archived_messages]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_archived_messages]') AND type in (N'U'))
DROP TABLE [dbo].[user_archived_messages]
GO
/****** Object:  Table [dbo].[user_api_keys]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_api_keys]') AND type in (N'U'))
DROP TABLE [dbo].[user_api_keys]
GO
/****** Object:  Table [dbo].[user_actions]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_actions]') AND type in (N'U'))
DROP TABLE [dbo].[user_actions]
GO
/****** Object:  Table [dbo].[uploads]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uploads]') AND type in (N'U'))
DROP TABLE [dbo].[uploads]
GO
/****** Object:  Table [dbo].[unsubscribe_keys]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[unsubscribe_keys]') AND type in (N'U'))
DROP TABLE [dbo].[unsubscribe_keys]
GO
/****** Object:  Table [dbo].[translation_overrides]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[translation_overrides]') AND type in (N'U'))
DROP TABLE [dbo].[translation_overrides]
GO
/****** Object:  Table [dbo].[topics]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topics]') AND type in (N'U'))
DROP TABLE [dbo].[topics]
GO
/****** Object:  Table [dbo].[topic_views]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_views]') AND type in (N'U'))
DROP TABLE [dbo].[topic_views]
GO
/****** Object:  Table [dbo].[topic_users]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_users]') AND type in (N'U'))
DROP TABLE [dbo].[topic_users]
GO
/****** Object:  Table [dbo].[topic_timers]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_timers]') AND type in (N'U'))
DROP TABLE [dbo].[topic_timers]
GO
/****** Object:  Table [dbo].[topic_tags]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_tags]') AND type in (N'U'))
DROP TABLE [dbo].[topic_tags]
GO
/****** Object:  Table [dbo].[topic_search_data]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_search_data]') AND type in (N'U'))
DROP TABLE [dbo].[topic_search_data]
GO
/****** Object:  Table [dbo].[topic_links]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_links]') AND type in (N'U'))
DROP TABLE [dbo].[topic_links]
GO
/****** Object:  Table [dbo].[topic_link_clicks]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_link_clicks]') AND type in (N'U'))
DROP TABLE [dbo].[topic_link_clicks]
GO
/****** Object:  Table [dbo].[topic_invites]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_invites]') AND type in (N'U'))
DROP TABLE [dbo].[topic_invites]
GO
/****** Object:  Table [dbo].[topic_groups]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_groups]') AND type in (N'U'))
DROP TABLE [dbo].[topic_groups]
GO
/****** Object:  Table [dbo].[topic_embeds]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_embeds]') AND type in (N'U'))
DROP TABLE [dbo].[topic_embeds]
GO
/****** Object:  Table [dbo].[topic_custom_fields]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_custom_fields]') AND type in (N'U'))
DROP TABLE [dbo].[topic_custom_fields]
GO
/****** Object:  Table [dbo].[topic_allowed_users]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_allowed_users]') AND type in (N'U'))
DROP TABLE [dbo].[topic_allowed_users]
GO
/****** Object:  Table [dbo].[topic_allowed_groups]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[topic_allowed_groups]') AND type in (N'U'))
DROP TABLE [dbo].[topic_allowed_groups]
GO
/****** Object:  Table [dbo].[top_topics]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[top_topics]') AND type in (N'U'))
DROP TABLE [dbo].[top_topics]
GO
/****** Object:  Table [dbo].[themes]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[themes]') AND type in (N'U'))
DROP TABLE [dbo].[themes]
GO
/****** Object:  Table [dbo].[theme_translation_overrides]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[theme_translation_overrides]') AND type in (N'U'))
DROP TABLE [dbo].[theme_translation_overrides]
GO
/****** Object:  Table [dbo].[theme_settings]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[theme_settings]') AND type in (N'U'))
DROP TABLE [dbo].[theme_settings]
GO
/****** Object:  Table [dbo].[theme_modifier_sets]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[theme_modifier_sets]') AND type in (N'U'))
DROP TABLE [dbo].[theme_modifier_sets]
GO
/****** Object:  Table [dbo].[theme_fields]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[theme_fields]') AND type in (N'U'))
DROP TABLE [dbo].[theme_fields]
GO
/****** Object:  Table [dbo].[tags_web_hooks]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tags_web_hooks]') AND type in (N'U'))
DROP TABLE [dbo].[tags_web_hooks]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tags]') AND type in (N'U'))
DROP TABLE [dbo].[tags]
GO
/****** Object:  Table [dbo].[tag_users]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tag_users]') AND type in (N'U'))
DROP TABLE [dbo].[tag_users]
GO
/****** Object:  Table [dbo].[tag_search_data]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tag_search_data]') AND type in (N'U'))
DROP TABLE [dbo].[tag_search_data]
GO
/****** Object:  Table [dbo].[tag_groups]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tag_groups]') AND type in (N'U'))
DROP TABLE [dbo].[tag_groups]
GO
/****** Object:  Table [dbo].[tag_group_permissions]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tag_group_permissions]') AND type in (N'U'))
DROP TABLE [dbo].[tag_group_permissions]
GO
/****** Object:  Table [dbo].[tag_group_memberships]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tag_group_memberships]') AND type in (N'U'))
DROP TABLE [dbo].[tag_group_memberships]
GO
/****** Object:  Table [dbo].[stylesheet_cache]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[stylesheet_cache]') AND type in (N'U'))
DROP TABLE [dbo].[stylesheet_cache]
GO
/****** Object:  Table [dbo].[skipped_email_logs]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[skipped_email_logs]') AND type in (N'U'))
DROP TABLE [dbo].[skipped_email_logs]
GO
/****** Object:  Table [dbo].[site_settings]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[site_settings]') AND type in (N'U'))
DROP TABLE [dbo].[site_settings]
GO
/****** Object:  Table [dbo].[single_sign_on_records]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[single_sign_on_records]') AND type in (N'U'))
DROP TABLE [dbo].[single_sign_on_records]
GO
/****** Object:  Table [dbo].[shared_drafts]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shared_drafts]') AND type in (N'U'))
DROP TABLE [dbo].[shared_drafts]
GO
/****** Object:  Table [dbo].[search_logs]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[search_logs]') AND type in (N'U'))
DROP TABLE [dbo].[search_logs]
GO
/****** Object:  Table [dbo].[screened_urls]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[screened_urls]') AND type in (N'U'))
DROP TABLE [dbo].[screened_urls]
GO
/****** Object:  Table [dbo].[screened_ip_addresses]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[screened_ip_addresses]') AND type in (N'U'))
DROP TABLE [dbo].[screened_ip_addresses]
GO
/****** Object:  Table [dbo].[screened_emails]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[screened_emails]') AND type in (N'U'))
DROP TABLE [dbo].[screened_emails]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schema_migrations]') AND type in (N'U'))
DROP TABLE [dbo].[schema_migrations]
GO
/****** Object:  Table [dbo].[schema_migration_details]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schema_migration_details]') AND type in (N'U'))
DROP TABLE [dbo].[schema_migration_details]
GO
/****** Object:  Table [dbo].[scheduler_stats]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scheduler_stats]') AND type in (N'U'))
DROP TABLE [dbo].[scheduler_stats]
GO
/****** Object:  Table [dbo].[reviewables]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reviewables]') AND type in (N'U'))
DROP TABLE [dbo].[reviewables]
GO
/****** Object:  Table [dbo].[reviewable_scores]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reviewable_scores]') AND type in (N'U'))
DROP TABLE [dbo].[reviewable_scores]
GO
/****** Object:  Table [dbo].[reviewable_histories]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reviewable_histories]') AND type in (N'U'))
DROP TABLE [dbo].[reviewable_histories]
GO
/****** Object:  Table [dbo].[reviewable_claimed_topics]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reviewable_claimed_topics]') AND type in (N'U'))
DROP TABLE [dbo].[reviewable_claimed_topics]
GO
/****** Object:  Table [dbo].[remote_themes]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[remote_themes]') AND type in (N'U'))
DROP TABLE [dbo].[remote_themes]
GO
/****** Object:  Table [dbo].[quoted_posts]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[quoted_posts]') AND type in (N'U'))
DROP TABLE [dbo].[quoted_posts]
GO
/****** Object:  Table [dbo].[push_subscriptions]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[push_subscriptions]') AND type in (N'U'))
DROP TABLE [dbo].[push_subscriptions]
GO
/****** Object:  Table [dbo].[posts]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[posts]') AND type in (N'U'))
DROP TABLE [dbo].[posts]
GO
/****** Object:  Table [dbo].[post_uploads]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_uploads]') AND type in (N'U'))
DROP TABLE [dbo].[post_uploads]
GO
/****** Object:  Table [dbo].[post_timings]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_timings]') AND type in (N'U'))
DROP TABLE [dbo].[post_timings]
GO
/****** Object:  Table [dbo].[post_stats]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_stats]') AND type in (N'U'))
DROP TABLE [dbo].[post_stats]
GO
/****** Object:  Table [dbo].[post_search_data]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_search_data]') AND type in (N'U'))
DROP TABLE [dbo].[post_search_data]
GO
/****** Object:  Table [dbo].[post_revisions]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_revisions]') AND type in (N'U'))
DROP TABLE [dbo].[post_revisions]
GO
/****** Object:  Table [dbo].[post_reply_keys]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_reply_keys]') AND type in (N'U'))
DROP TABLE [dbo].[post_reply_keys]
GO
/****** Object:  Table [dbo].[post_replies]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_replies]') AND type in (N'U'))
DROP TABLE [dbo].[post_replies]
GO
/****** Object:  Table [dbo].[post_details]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_details]') AND type in (N'U'))
DROP TABLE [dbo].[post_details]
GO
/****** Object:  Table [dbo].[post_custom_fields]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_custom_fields]') AND type in (N'U'))
DROP TABLE [dbo].[post_custom_fields]
GO
/****** Object:  Table [dbo].[post_actions]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_actions]') AND type in (N'U'))
DROP TABLE [dbo].[post_actions]
GO
/****** Object:  Table [dbo].[post_action_types]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[post_action_types]') AND type in (N'U'))
DROP TABLE [dbo].[post_action_types]
GO
/****** Object:  Table [dbo].[polls]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[polls]') AND type in (N'U'))
DROP TABLE [dbo].[polls]
GO
/****** Object:  Table [dbo].[poll_votes]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[poll_votes]') AND type in (N'U'))
DROP TABLE [dbo].[poll_votes]
GO
/****** Object:  Table [dbo].[poll_options]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[poll_options]') AND type in (N'U'))
DROP TABLE [dbo].[poll_options]
GO
/****** Object:  Table [dbo].[plugin_store_rows]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plugin_store_rows]') AND type in (N'U'))
DROP TABLE [dbo].[plugin_store_rows]
GO
/****** Object:  Table [dbo].[permalinks]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permalinks]') AND type in (N'U'))
DROP TABLE [dbo].[permalinks]
GO
/****** Object:  Table [dbo].[optimized_images]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[optimized_images]') AND type in (N'U'))
DROP TABLE [dbo].[optimized_images]
GO
/****** Object:  Table [dbo].[onceoff_logs]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[onceoff_logs]') AND type in (N'U'))
DROP TABLE [dbo].[onceoff_logs]
GO
/****** Object:  Table [dbo].[oauth2_user_infos]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth2_user_infos]') AND type in (N'U'))
DROP TABLE [dbo].[oauth2_user_infos]
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notifications]') AND type in (N'U'))
DROP TABLE [dbo].[notifications]
GO
/****** Object:  Table [dbo].[muted_users]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[muted_users]') AND type in (N'U'))
DROP TABLE [dbo].[muted_users]
GO
/****** Object:  Table [dbo].[message_bus]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[message_bus]') AND type in (N'U'))
DROP TABLE [dbo].[message_bus]
GO
/****** Object:  Table [dbo].[javascript_caches]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[javascript_caches]') AND type in (N'U'))
DROP TABLE [dbo].[javascript_caches]
GO
/****** Object:  Table [dbo].[invites]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[invites]') AND type in (N'U'))
DROP TABLE [dbo].[invites]
GO
/****** Object:  Table [dbo].[invited_groups]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[invited_groups]') AND type in (N'U'))
DROP TABLE [dbo].[invited_groups]
GO
/****** Object:  Table [dbo].[incoming_referers]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incoming_referers]') AND type in (N'U'))
DROP TABLE [dbo].[incoming_referers]
GO
/****** Object:  Table [dbo].[incoming_links]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incoming_links]') AND type in (N'U'))
DROP TABLE [dbo].[incoming_links]
GO
/****** Object:  Table [dbo].[incoming_emails]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incoming_emails]') AND type in (N'U'))
DROP TABLE [dbo].[incoming_emails]
GO
/****** Object:  Table [dbo].[incoming_domains]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[incoming_domains]') AND type in (N'U'))
DROP TABLE [dbo].[incoming_domains]
GO
/****** Object:  Table [dbo].[ignored_users]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ignored_users]') AND type in (N'U'))
DROP TABLE [dbo].[ignored_users]
GO
/****** Object:  Table [dbo].[groups_web_hooks]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[groups_web_hooks]') AND type in (N'U'))
DROP TABLE [dbo].[groups_web_hooks]
GO
/****** Object:  Table [dbo].[groups]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[groups]') AND type in (N'U'))
DROP TABLE [dbo].[groups]
GO
/****** Object:  Table [dbo].[group_users]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[group_users]') AND type in (N'U'))
DROP TABLE [dbo].[group_users]
GO
/****** Object:  Table [dbo].[group_requests]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[group_requests]') AND type in (N'U'))
DROP TABLE [dbo].[group_requests]
GO
/****** Object:  Table [dbo].[group_mentions]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[group_mentions]') AND type in (N'U'))
DROP TABLE [dbo].[group_mentions]
GO
/****** Object:  Table [dbo].[group_histories]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[group_histories]') AND type in (N'U'))
DROP TABLE [dbo].[group_histories]
GO
/****** Object:  Table [dbo].[group_custom_fields]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[group_custom_fields]') AND type in (N'U'))
DROP TABLE [dbo].[group_custom_fields]
GO
/****** Object:  Table [dbo].[group_archived_messages]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[group_archived_messages]') AND type in (N'U'))
DROP TABLE [dbo].[group_archived_messages]
GO
/****** Object:  Table [dbo].[given_daily_likes]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[given_daily_likes]') AND type in (N'U'))
DROP TABLE [dbo].[given_daily_likes]
GO
/****** Object:  Table [dbo].[github_user_infos]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[github_user_infos]') AND type in (N'U'))
DROP TABLE [dbo].[github_user_infos]
GO
/****** Object:  Table [dbo].[embeddable_hosts]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[embeddable_hosts]') AND type in (N'U'))
DROP TABLE [dbo].[embeddable_hosts]
GO
/****** Object:  Table [dbo].[email_tokens]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[email_tokens]') AND type in (N'U'))
DROP TABLE [dbo].[email_tokens]
GO
/****** Object:  Table [dbo].[email_logs]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[email_logs]') AND type in (N'U'))
DROP TABLE [dbo].[email_logs]
GO
/****** Object:  Table [dbo].[email_change_requests]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[email_change_requests]') AND type in (N'U'))
DROP TABLE [dbo].[email_change_requests]
GO
/****** Object:  Table [dbo].[drafts]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[drafts]') AND type in (N'U'))
DROP TABLE [dbo].[drafts]
GO
/****** Object:  Table [dbo].[draft_sequences]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[draft_sequences]') AND type in (N'U'))
DROP TABLE [dbo].[draft_sequences]
GO
/****** Object:  Table [dbo].[directory_items]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[directory_items]') AND type in (N'U'))
DROP TABLE [dbo].[directory_items]
GO
/****** Object:  Table [dbo].[developers]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[developers]') AND type in (N'U'))
DROP TABLE [dbo].[developers]
GO
/****** Object:  Table [dbo].[custom_emojis]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[custom_emojis]') AND type in (N'U'))
DROP TABLE [dbo].[custom_emojis]
GO
/****** Object:  Table [dbo].[color_schemes]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[color_schemes]') AND type in (N'U'))
DROP TABLE [dbo].[color_schemes]
GO
/****** Object:  Table [dbo].[color_scheme_colors]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[color_scheme_colors]') AND type in (N'U'))
DROP TABLE [dbo].[color_scheme_colors]
GO
/****** Object:  Table [dbo].[child_themes]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[child_themes]') AND type in (N'U'))
DROP TABLE [dbo].[child_themes]
GO
/****** Object:  Table [dbo].[category_users]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_users]') AND type in (N'U'))
DROP TABLE [dbo].[category_users]
GO
/****** Object:  Table [dbo].[category_tags]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_tags]') AND type in (N'U'))
DROP TABLE [dbo].[category_tags]
GO
/****** Object:  Table [dbo].[category_tag_stats]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_tag_stats]') AND type in (N'U'))
DROP TABLE [dbo].[category_tag_stats]
GO
/****** Object:  Table [dbo].[category_tag_groups]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_tag_groups]') AND type in (N'U'))
DROP TABLE [dbo].[category_tag_groups]
GO
/****** Object:  Table [dbo].[category_search_data]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_search_data]') AND type in (N'U'))
DROP TABLE [dbo].[category_search_data]
GO
/****** Object:  Table [dbo].[category_groups]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_groups]') AND type in (N'U'))
DROP TABLE [dbo].[category_groups]
GO
/****** Object:  Table [dbo].[category_featured_topics]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_featured_topics]') AND type in (N'U'))
DROP TABLE [dbo].[category_featured_topics]
GO
/****** Object:  Table [dbo].[category_custom_fields]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_custom_fields]') AND type in (N'U'))
DROP TABLE [dbo].[category_custom_fields]
GO
/****** Object:  Table [dbo].[categories_web_hooks]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categories_web_hooks]') AND type in (N'U'))
DROP TABLE [dbo].[categories_web_hooks]
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[categories]') AND type in (N'U'))
DROP TABLE [dbo].[categories]
GO
/****** Object:  Table [dbo].[bookmarks]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[bookmarks]') AND type in (N'U'))
DROP TABLE [dbo].[bookmarks]
GO
/****** Object:  Table [dbo].[badges]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[badges]') AND type in (N'U'))
DROP TABLE [dbo].[badges]
GO
/****** Object:  Table [dbo].[badge_types]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[badge_types]') AND type in (N'U'))
DROP TABLE [dbo].[badge_types]
GO
/****** Object:  Table [dbo].[badge_groupings]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[badge_groupings]') AND type in (N'U'))
DROP TABLE [dbo].[badge_groupings]
GO
/****** Object:  Table [dbo].[backup_metadata]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[backup_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[backup_metadata]
GO
/****** Object:  Table [dbo].[backup_draft_topics]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[backup_draft_topics]') AND type in (N'U'))
DROP TABLE [dbo].[backup_draft_topics]
GO
/****** Object:  Table [dbo].[backup_draft_posts]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[backup_draft_posts]') AND type in (N'U'))
DROP TABLE [dbo].[backup_draft_posts]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ar_internal_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[ar_internal_metadata]
GO
/****** Object:  Table [dbo].[application_requests]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[application_requests]') AND type in (N'U'))
DROP TABLE [dbo].[application_requests]
GO
/****** Object:  Table [dbo].[api_keys]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[api_keys]') AND type in (N'U'))
DROP TABLE [dbo].[api_keys]
GO
/****** Object:  Table [dbo].[anonymous_users]    Script Date: 2021/9/6 18:02:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[anonymous_users]') AND type in (N'U'))
DROP TABLE [dbo].[anonymous_users]
GO
/****** Object:  Table [dbo].[anonymous_users]    Script Date: 2021/9/6 18:02:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[anonymous_users](
	[id] [bigint]  NOT NULL,
	[user_id] [int] NOT NULL,
	[master_user_id] [int] NOT NULL,
	[active] [bit] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [anonymous_users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[api_keys]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[api_keys](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[created_by_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[allowed_ips] [varchar](max) NULL,
	[hidden] [bit] NOT NULL,
	[last_used_at] [datetime] NULL,
	[revoked_at] [datetime] NULL,
	[description] [varchar](max) NULL,
	[key_hash] [varchar](max) NOT NULL,
	[truncated_key] [varchar](max) NOT NULL,
 CONSTRAINT [api_keys_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[application_requests]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_requests](
	[id] [int]  NOT NULL,
	[date] [date] NOT NULL,
	[req_type] [int] NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [application_requests_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ar_internal_metadata](
	[key] [varchar](max) NOT NULL,
	[value] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[backup_draft_posts]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[backup_draft_posts](
	[id] [bigint]  NOT NULL,
	[user_id] [int] NOT NULL,
	[post_id] [int] NOT NULL,
	[key] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [backup_draft_posts_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[backup_draft_topics]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[backup_draft_topics](
	[id] [bigint]  NOT NULL,
	[user_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [backup_draft_topics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[backup_metadata]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[backup_metadata](
	[id] [bigint]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[value] [varchar](max) NULL,
 CONSTRAINT [backup_metadata_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[badge_groupings]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[badge_groupings](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[description] [varchar](max) NULL,
	[position] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [badge_groupings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[badge_types]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[badge_types](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [badge_types_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[badges]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[badges](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[description] [varchar](max) NULL,
	[badge_type_id] [int] NOT NULL,
	[grant_count] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[allow_title] [bit] NOT NULL,
	[multiple_grant] [bit] NOT NULL,
	[icon] [varchar](max) NULL,
	[listable] [bit] NULL,
	[target_posts] [bit] NULL,
	[query] [varchar](max) NULL,
	[enabled] [bit] NOT NULL,
	[auto_revoke] [bit] NOT NULL,
	[badge_grouping_id] [int] NOT NULL,
	[trigger] [int] NULL,
	[show_posts] [bit] NOT NULL,
	[system] [bit] NOT NULL,
	[image] [varchar](255) NULL,
	[long_description] [varchar](max) NULL,
 CONSTRAINT [badges_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[bookmarks]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bookmarks](
	[id] [bigint]  NOT NULL,
	[user_id] [bigint] NOT NULL,
	[topic_id] [bigint] NOT NULL,
	[post_id] [bigint] NOT NULL,
	[name] [varchar](max) NULL,
	[reminder_type] [int] NULL,
	[reminder_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[reminder_last_sent_at] [datetime] NULL,
	[reminder_set_at] [datetime] NULL,
 CONSTRAINT [bookmarks_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[categories]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories](
	[id] [int]  NOT NULL,
	[name] [varchar](50) NOT NULL,
	[color] [varchar](6) NOT NULL,
	[topic_id] [int] NULL,
	[topic_count] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[user_id] [int] NOT NULL,
	[topics_year] [int] NULL,
	[topics_month] [int] NULL,
	[topics_week] [int] NULL,
	[slug] [varchar](max) NOT NULL,
	[description] [varchar](max) NULL,
	[text_color] [varchar](6) NOT NULL,
	[read_restricted] [bit] NOT NULL,
	[auto_close_hours] [float] NULL,
	[post_count] [int] NOT NULL,
	[latest_post_id] [int] NULL,
	[latest_topic_id] [int] NULL,
	[position] [int] NULL,
	[parent_category_id] [int] NULL,
	[posts_year] [int] NULL,
	[posts_month] [int] NULL,
	[posts_week] [int] NULL,
	[email_in] [varchar](max) NULL,
	[email_in_allow_strangers] [bit] NULL,
	[topics_day] [int] NULL,
	[posts_day] [int] NULL,
	[allow_badges] [bit] NOT NULL,
	[name_lower] [varchar](50) NOT NULL,
	[auto_close_based_on_last_post] [bit] NULL,
	[topic_template] [varchar](max) NULL,
	[contains_messages] [bit] NULL,
	[sort_order] [varchar](max) NULL,
	[sort_ascending] [bit] NULL,
	[uploaded_logo_id] [int] NULL,
	[uploaded_background_id] [int] NULL,
	[topic_featured_link_allowed] [bit] NULL,
	[all_topics_wiki] [bit] NOT NULL,
	[show_subcategory_list] [bit] NULL,
	[num_featured_topics] [int] NULL,
	[default_view] [varchar](50) NULL,
	[subcategory_list_style] [varchar](50) NULL,
	[default_top_period] [varchar](20) NULL,
	[mailinglist_mirror] [bit] NOT NULL,
	[minimum_required_tags] [int] NOT NULL,
	[navigate_to_first_post_after_read] [bit] NOT NULL,
	[search_priority] [int] NULL,
	[allow_global_tags] [bit] NOT NULL,
	[reviewable_by_group_id] [int] NULL,
	[required_tag_group_id] [int] NULL,
	[min_tags_from_required_group] [int] NOT NULL,
 CONSTRAINT [categories_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[categories_web_hooks]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categories_web_hooks](
	[web_hook_id] [int] NOT NULL,
	[category_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_custom_fields]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_custom_fields](
	[id] [int]  NOT NULL,
	[category_id] [int] NOT NULL,
	[name] [varchar](256) NOT NULL,
	[value] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [category_custom_fields_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[category_featured_topics]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_featured_topics](
	[category_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[rank] [int] NOT NULL,
	[id] [int]  NOT NULL,
 CONSTRAINT [category_featured_topics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_groups]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_groups](
	[id] [int]  NOT NULL,
	[category_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[permission_type] [int] NULL,
 CONSTRAINT [category_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_search_data]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_search_data](
	[category_id] [int] NOT NULL,
	[search_data] [varchar](max) NULL,
	[raw_data] [varchar](max) NULL,
	[locale] [varchar](max) NULL,
	[version] [int] NULL,
 CONSTRAINT [categories_search_pkey] PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[category_tag_groups]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_tag_groups](
	[id] [int]  NOT NULL,
	[category_id] [int] NOT NULL,
	[tag_group_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [category_tag_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_tag_stats]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_tag_stats](
	[id] [bigint]  NOT NULL,
	[category_id] [bigint] NOT NULL,
	[tag_id] [bigint] NOT NULL,
	[topic_count] [int] NOT NULL,
 CONSTRAINT [category_tag_stats_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_tags]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_tags](
	[id] [int]  NOT NULL,
	[category_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [category_tags_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_users]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_users](
	[id] [int]  NOT NULL,
	[category_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[notification_level] [int] NULL,
	[last_seen_at] [datetime] NULL,
 CONSTRAINT [category_users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[child_themes]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[child_themes](
	[id] [int]  NOT NULL,
	[parent_theme_id] [int] NULL,
	[child_theme_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [child_themes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[color_scheme_colors]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color_scheme_colors](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[hex] [varchar](max) NOT NULL,
	[color_scheme_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [color_scheme_colors_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[color_schemes]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[color_schemes](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[version] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[via_wizard] [bit] NOT NULL,
	[base_scheme_id] [varchar](max) NULL,
	[theme_id] [int] NULL,
 CONSTRAINT [color_schemes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[custom_emojis]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[custom_emojis](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[upload_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [custom_emojis_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[developers]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[developers](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [developers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[directory_items]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[directory_items](
	[id] [int]  NOT NULL,
	[period_type] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[likes_received] [int] NOT NULL,
	[likes_given] [int] NOT NULL,
	[topics_entered] [int] NOT NULL,
	[topic_count] [int] NOT NULL,
	[post_count] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[days_visited] [int] NOT NULL,
	[posts_read] [int] NOT NULL,
 CONSTRAINT [directory_items_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[draft_sequences]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[draft_sequences](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[draft_key] [varchar](max) NOT NULL,
	[sequence] [int] NOT NULL,
 CONSTRAINT [draft_sequences_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[drafts]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[drafts](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[draft_key] [varchar](max) NOT NULL,
	[data] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[sequence] [int] NOT NULL,
	[revisions] [int] NOT NULL,
	[owner] [varchar](max) NULL,
 CONSTRAINT [drafts_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[email_change_requests]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_change_requests](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[old_email] [varchar](max) NOT NULL,
	[new_email] [varchar](max) NOT NULL,
	[old_email_token_id] [int] NULL,
	[new_email_token_id] [int] NULL,
	[change_state] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [email_change_requests_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[email_logs]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_logs](
	[id] [int]  NOT NULL,
	[to_address] [varchar](max) NOT NULL,
	[email_type] [varchar](max) NOT NULL,
	[user_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[post_id] [int] NULL,
	[bounce_key] [uniqueidentifier] NULL,
	[bounced] [bit] NOT NULL,
	[message_id] [varchar](max) NULL,
 CONSTRAINT [email_logs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[email_tokens]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_tokens](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[email] [varchar](max) NOT NULL,
	[token] [varchar](max) NOT NULL,
	[confirmed] [bit] NOT NULL,
	[expired] [bit] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [email_tokens_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[embeddable_hosts]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[embeddable_hosts](
	[id] [int]  NOT NULL,
	[host] [varchar](max) NOT NULL,
	[category_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[path_whitelist] [varchar](max) NULL,
	[class_name] [varchar](max) NULL,
 CONSTRAINT [embeddable_hosts_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[github_user_infos]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[github_user_infos](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[screen_name] [varchar](max) NOT NULL,
	[github_user_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [github_user_infos_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[given_daily_likes]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[given_daily_likes](
	[user_id] [int] NOT NULL,
	[likes_given] [int] NOT NULL,
	[given_date] [date] NOT NULL,
	[limit_reached] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_archived_messages]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_archived_messages](
	[id] [int]  NOT NULL,
	[group_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [group_archived_messages_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_custom_fields]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_custom_fields](
	[id] [int]  NOT NULL,
	[group_id] [int] NOT NULL,
	[name] [varchar](256) NOT NULL,
	[value] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [group_custom_fields_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[group_histories]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_histories](
	[id] [int]  NOT NULL,
	[group_id] [int] NOT NULL,
	[acting_user_id] [int] NOT NULL,
	[target_user_id] [int] NULL,
	[action] [int] NOT NULL,
	[subject] [varchar](max) NULL,
	[prev_value] [varchar](max) NULL,
	[new_value] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [group_histories_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[group_mentions]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_mentions](
	[id] [int]  NOT NULL,
	[post_id] [int] NULL,
	[group_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [group_mentions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_requests]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_requests](
	[id] [bigint]  NOT NULL,
	[group_id] [int] NULL,
	[user_id] [int] NULL,
	[reason] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [group_requests_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[group_users]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_users](
	[id] [int]  NOT NULL,
	[group_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[owner] [bit] NOT NULL,
	[notification_level] [int] NOT NULL,
 CONSTRAINT [group_users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groups]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groups](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[automatic] [bit] NOT NULL,
	[user_count] [int] NOT NULL,
	[automatic_membership_email_domains] [varchar](max) NULL,
	[automatic_membership_retroactive] [bit] NULL,
	[primary_group] [bit] NOT NULL,
	[title] [varchar](max) NULL,
	[grant_trust_level] [int] NULL,
	[incoming_email] [varchar](max) NULL,
	[has_messages] [bit] NOT NULL,
	[flair_url] [varchar](max) NULL,
	[flair_bg_color] [varchar](max) NULL,
	[flair_color] [varchar](max) NULL,
	[bio_raw] [varchar](max) NULL,
	[bio_cooked] [varchar](max) NULL,
	[allow_membership_requests] [bit] NOT NULL,
	[full_name] [varchar](max) NULL,
	[default_notification_level] [int] NOT NULL,
	[visibility_level] [int] NOT NULL,
	[public_exit] [bit] NOT NULL,
	[public_admission] [bit] NOT NULL,
	[membership_request_template] [varchar](max) NULL,
	[messageable_level] [int] NULL,
	[mentionable_level] [int] NULL,
	[publish_read_state] [bit] NOT NULL,
	[members_visibility_level] [int] NOT NULL,
 CONSTRAINT [groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[groups_web_hooks]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groups_web_hooks](
	[web_hook_id] [int] NOT NULL,
	[group_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ignored_users]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ignored_users](
	[id] [bigint]  NOT NULL,
	[user_id] [int] NOT NULL,
	[ignored_user_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[summarized_at] [datetime] NULL,
	[expiring_at] [datetime] NULL,
 CONSTRAINT [ignored_users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[incoming_domains]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[incoming_domains](
	[id] [int]  NOT NULL,
	[name] [varchar](100) NOT NULL,
	[https] [bit] NOT NULL,
	[port] [int] NOT NULL,
 CONSTRAINT [incoming_domains_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[incoming_emails]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[incoming_emails](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[topic_id] [int] NULL,
	[post_id] [int] NULL,
	[raw] [varchar](max) NULL,
	[error] [varchar](max) NULL,
	[message_id] [varchar](max) NULL,
	[from_address] [varchar](max) NULL,
	[to_addresses] [varchar](max) NULL,
	[cc_addresses] [varchar](max) NULL,
	[subject] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[rejection_message] [varchar](max) NULL,
	[is_auto_generated] [bit] NULL,
	[is_bounce] [bit] NOT NULL,
 CONSTRAINT [incoming_emails_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[incoming_links]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[incoming_links](
	[id] [int]  NOT NULL,
	[created_at] [datetime] NOT NULL,
	[user_id] [int] NULL,
	[ip_address] [varchar](max) NULL,
	[current_user_id] [int] NULL,
	[post_id] [int] NOT NULL,
	[incoming_referer_id] [int] NULL,
 CONSTRAINT [incoming_links_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[incoming_referers]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[incoming_referers](
	[id] [int]  NOT NULL,
	[path] [varchar](1000) NOT NULL,
	[incoming_domain_id] [int] NOT NULL,
 CONSTRAINT [incoming_referers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invited_groups]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invited_groups](
	[id] [int]  NOT NULL,
	[group_id] [int] NULL,
	[invite_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [invited_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[invites]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[invites](
	[id] [int]  NOT NULL,
	[invite_key] [varchar](32) NOT NULL,
	[email] [varchar](max) NULL,
	[invited_by_id] [int] NOT NULL,
	[user_id] [int] NULL,
	[redeemed_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by_id] [int] NULL,
	[invalidated_at] [datetime] NULL,
	[moderator] [bit] NOT NULL,
	[custom_message] [varchar](max) NULL,
	[emailed_status] [int] NULL,
 CONSTRAINT [invites_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[javascript_caches]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[javascript_caches](
	[id] [bigint]  NOT NULL,
	[theme_field_id] [bigint] NULL,
	[digest] [varchar](max) NULL,
	[content] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[theme_id] [bigint] NULL,
 CONSTRAINT [javascript_caches_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[message_bus]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[message_bus](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NULL,
	[context] [varchar](max) NULL,
	[data] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [message_bus_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[muted_users]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[muted_users](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[muted_user_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [muted_users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[notifications]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notifications](
	[id] [int]  NOT NULL,
	[notification_type] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[data] [varchar](1000) NOT NULL,
	[read] [bit] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[topic_id] [int] NULL,
	[post_number] [int] NULL,
	[post_action_id] [int] NULL,
 CONSTRAINT [notifications_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[oauth2_user_infos]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oauth2_user_infos](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[uid] [varchar](max) NOT NULL,
	[provider] [varchar](max) NOT NULL,
	[email] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [oauth2_user_infos_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[onceoff_logs]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[onceoff_logs](
	[id] [int]  NOT NULL,
	[job_name] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [onceoff_logs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[optimized_images]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[optimized_images](
	[id] [int]  NOT NULL,
	[sha1] [varchar](40) NOT NULL,
	[extension] [varchar](10) NOT NULL,
	[width] [int] NOT NULL,
	[height] [int] NOT NULL,
	[upload_id] [int] NOT NULL,
	[url] [varchar](max) NOT NULL,
	[filesize] [int] NULL,
	[etag] [varchar](max) NULL,
	[version] [int] NULL,
 CONSTRAINT [optimized_images_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[permalinks]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permalinks](
	[id] [int]  NOT NULL,
	[url] [varchar](1000) NOT NULL,
	[topic_id] [int] NULL,
	[post_id] [int] NULL,
	[category_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[external_url] [varchar](1000) NULL,
 CONSTRAINT [permalinks_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[plugin_store_rows]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[plugin_store_rows](
	[id] [int]  NOT NULL,
	[plugin_name] [varchar](max) NOT NULL,
	[key] [varchar](max) NOT NULL,
	[type_name] [varchar](max) NOT NULL,
	[value] [varchar](max) NULL,
 CONSTRAINT [plugin_store_rows_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[poll_options]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poll_options](
	[id] [bigint]  NOT NULL,
	[poll_id] [bigint] NULL,
	[digest] [varchar](max) NOT NULL,
	[html] [varchar](max) NOT NULL,
	[anonymous_votes] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [poll_options_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[poll_votes]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[poll_votes](
	[poll_id] [bigint] NULL,
	[poll_option_id] [bigint] NULL,
	[user_id] [bigint] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[polls]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[polls](
	[id] [bigint]  NOT NULL,
	[post_id] [bigint] NULL,
	[name] [varchar](max) NOT NULL,
	[close_at] [datetime] NULL,
	[type] [int] NOT NULL,
	[status] [int] NOT NULL,
	[results] [int] NOT NULL,
	[visibility] [int] NOT NULL,
	[min] [int] NULL,
	[max] [int] NULL,
	[step] [int] NULL,
	[anonymous_voters] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[chart_type] [int] NOT NULL,
	[groups] [varchar](max) NULL,
 CONSTRAINT [polls_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[post_action_types]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_action_types](
	[name_key] [varchar](50) NOT NULL,
	[is_flag] [bit] NOT NULL,
	[icon] [varchar](20) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[id] [int]  NOT NULL,
	[position] [int] NOT NULL,
	[score_bonus] [float] NOT NULL,
	[reviewable_priority] [int] NOT NULL,
 CONSTRAINT [post_action_types_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_actions]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_actions](
	[id] [int]  NOT NULL,
	[post_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[post_action_type_id] [int] NOT NULL,
	[deleted_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[deleted_by_id] [int] NULL,
	[related_post_id] [int] NULL,
	[staff_took_action] [bit] NOT NULL,
	[deferred_by_id] [int] NULL,
	[targets_topic] [bit] NOT NULL,
	[agreed_at] [datetime] NULL,
	[agreed_by_id] [int] NULL,
	[deferred_at] [datetime] NULL,
	[disagreed_at] [datetime] NULL,
	[disagreed_by_id] [int] NULL,
 CONSTRAINT [post_actions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_custom_fields]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_custom_fields](
	[id] [int]  NOT NULL,
	[post_id] [int] NOT NULL,
	[name] [varchar](256) NOT NULL,
	[value] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [post_custom_fields_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[post_details]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_details](
	[id] [int]  NOT NULL,
	[post_id] [int] NULL,
	[key] [varchar](max) NULL,
	[value] [varchar](max) NULL,
	[extra] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [post_details_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[post_replies]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_replies](
	[post_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[reply_post_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_reply_keys]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_reply_keys](
	[id] [bigint]  NOT NULL,
	[user_id] [int] NOT NULL,
	[post_id] [int] NOT NULL,
	[reply_key] [uniqueidentifier] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [post_reply_keys_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_revisions]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_revisions](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[post_id] [int] NULL,
	[modifications] [varchar](max) NULL,
	[number] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[hidden] [bit] NOT NULL,
 CONSTRAINT [post_revisions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[post_search_data]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_search_data](
	[post_id] [int] NOT NULL,
	[search_data] [varchar](max) NULL,
	[raw_data] [varchar](max) NULL,
	[locale] [varchar](max) NULL,
	[version] [int] NULL,
 CONSTRAINT [posts_search_pkey] PRIMARY KEY CLUSTERED 
(
	[post_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[post_stats]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_stats](
	[id] [int]  NOT NULL,
	[post_id] [int] NULL,
	[drafts_saved] [int] NULL,
	[typing_duration_msecs] [int] NULL,
	[composer_open_duration_msecs] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [post_stats_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_timings]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_timings](
	[topic_id] [int] NOT NULL,
	[post_number] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[msecs] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[post_uploads]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[post_uploads](
	[id] [int]  NOT NULL,
	[post_id] [int] NOT NULL,
	[upload_id] [int] NOT NULL,
 CONSTRAINT [post_uploads_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[posts]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[posts](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[topic_id] [int] NOT NULL,
	[post_number] [int] NOT NULL,
	[raw] [varchar](max) NOT NULL,
	[cooked] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[reply_to_post_number] [int] NULL,
	[reply_count] [int] NOT NULL,
	[quote_count] [int] NOT NULL,
	[deleted_at] [datetime] NULL,
	[off_topic_count] [int] NOT NULL,
	[like_count] [int] NOT NULL,
	[incoming_link_count] [int] NOT NULL,
	[bookmark_count] [int] NOT NULL,
	[avg_time] [int] NULL,
	[score] [float] NULL,
	[reads] [int] NOT NULL,
	[post_type] [int] NOT NULL,
	[sort_order] [int] NULL,
	[last_editor_id] [int] NULL,
	[hidden] [bit] NOT NULL,
	[hidden_reason_id] [int] NULL,
	[notify_moderators_count] [int] NOT NULL,
	[spam_count] [int] NOT NULL,
	[illegal_count] [int] NOT NULL,
	[inappropriate_count] [int] NOT NULL,
	[last_version_at] [datetime] NOT NULL,
	[user_deleted] [bit] NOT NULL,
	[reply_to_user_id] [int] NULL,
	[percent_rank] [float] NULL,
	[notify_user_count] [int] NOT NULL,
	[like_score] [int] NOT NULL,
	[deleted_by_id] [int] NULL,
	[edit_reason] [varchar](max) NULL,
	[word_count] [int] NULL,
	[version] [int] NOT NULL,
	[cook_method] [int] NOT NULL,
	[wiki] [bit] NOT NULL,
	[baked_at] [datetime] NULL,
	[baked_version] [int] NULL,
	[hidden_at] [datetime] NULL,
	[self_edits] [int] NOT NULL,
	[reply_quoted] [bit] NOT NULL,
	[via_email] [bit] NOT NULL,
	[raw_email] [varchar](max) NULL,
	[public_version] [int] NOT NULL,
	[action_code] [varchar](max) NULL,
	[image_url] [varchar](max) NULL,
	[locked_by_id] [int] NULL,
 CONSTRAINT [posts_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[push_subscriptions]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[push_subscriptions](
	[id] [bigint]  NOT NULL,
	[user_id] [int] NOT NULL,
	[data] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [push_subscriptions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[quoted_posts]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quoted_posts](
	[id] [int]  NOT NULL,
	[post_id] [int] NOT NULL,
	[quoted_post_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [quoted_posts_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[remote_themes]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[remote_themes](
	[id] [int]  NOT NULL,
	[remote_url] [varchar](max) NOT NULL,
	[remote_version] [varchar](max) NULL,
	[local_version] [varchar](max) NULL,
	[about_url] [varchar](max) NULL,
	[license_url] [varchar](max) NULL,
	[commits_behind] [int] NULL,
	[remote_updated_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[private_key] [varchar](max) NULL,
	[branch] [varchar](max) NULL,
	[last_error_text] [varchar](max) NULL,
	[authors] [varchar](max) NULL,
	[theme_version] [varchar](max) NULL,
	[minimum_discourse_version] [varchar](max) NULL,
	[maximum_discourse_version] [varchar](max) NULL,
 CONSTRAINT [remote_themes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[reviewable_claimed_topics]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviewable_claimed_topics](
	[id] [bigint]  NOT NULL,
	[user_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [reviewable_claimed_topics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviewable_histories]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviewable_histories](
	[id] [bigint]  NOT NULL,
	[reviewable_id] [int] NOT NULL,
	[reviewable_history_type] [int] NOT NULL,
	[status] [int] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[edited] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [reviewable_histories_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[reviewable_scores]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviewable_scores](
	[id] [bigint]  NOT NULL,
	[reviewable_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[reviewable_score_type] [int] NOT NULL,
	[status] [int] NOT NULL,
	[score] [float] NOT NULL,
	[take_action_bonus] [float] NOT NULL,
	[reviewed_by_id] [int] NULL,
	[reviewed_at] [datetime] NULL,
	[meta_topic_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[reason] [varchar](max) NULL,
	[user_accuracy_bonus] [float] NOT NULL,
 CONSTRAINT [reviewable_scores_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[reviewables]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviewables](
	[id] [bigint]  NOT NULL,
	[type] [varchar](max) NOT NULL,
	[status] [int] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[reviewable_by_moderator] [bit] NOT NULL,
	[reviewable_by_group_id] [int] NULL,
	[category_id] [int] NULL,
	[topic_id] [int] NULL,
	[score] [float] NOT NULL,
	[potential_spam] [bit] NOT NULL,
	[target_id] [int] NULL,
	[target_type] [varchar](max) NULL,
	[target_created_by_id] [int] NULL,
	[payload] [varchar](max) NULL,
	[version] [int] NOT NULL,
	[latest_score] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [reviewables_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[scheduler_stats]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scheduler_stats](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[hostname] [varchar](max) NOT NULL,
	[pid] [int] NOT NULL,
	[duration_ms] [int] NULL,
	[live_slots_start] [int] NULL,
	[live_slots_finish] [int] NULL,
	[started_at] [datetime] NOT NULL,
	[success] [bit] NULL,
	[error] [varchar](max) NULL,
 CONSTRAINT [scheduler_stats_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[schema_migration_details]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schema_migration_details](
	[id] [int]  NOT NULL,
	[version] [varchar](max) NOT NULL,
	[name] [varchar](max) NULL,
	[hostname] [varchar](max) NULL,
	[git_version] [varchar](max) NULL,
	[rails_version] [varchar](max) NULL,
	[duration] [int] NULL,
	[direction] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [schema_migration_details_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schema_migrations](
	[version] [varchar](max) NOT NULL
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[screened_emails]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[screened_emails](
	[id] [int]  NOT NULL,
	[email] [varchar](max) NOT NULL,
	[action_type] [int] NOT NULL,
	[match_count] [int] NOT NULL,
	[last_match_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[ip_address] [varchar](max) NULL,
 CONSTRAINT [screened_emails_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[screened_ip_addresses]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[screened_ip_addresses](
	[id] [int]  NOT NULL,
	[ip_address] [varchar](max) NOT NULL,
	[action_type] [int] NOT NULL,
	[match_count] [int] NOT NULL,
	[last_match_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [screened_ip_addresses_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[screened_urls]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[screened_urls](
	[id] [int]  NOT NULL,
	[url] [varchar](max) NOT NULL,
	[domain] [varchar](max) NOT NULL,
	[action_type] [int] NOT NULL,
	[match_count] [int] NOT NULL,
	[last_match_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[ip_address] [varchar](max) NULL,
 CONSTRAINT [screened_urls_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[search_logs]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[search_logs](
	[id] [int]  NOT NULL,
	[term] [varchar](max) NOT NULL,
	[user_id] [int] NULL,
	[ip_address] [varchar](max) NULL,
	[search_result_id] [int] NULL,
	[search_type] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[search_result_type] [int] NULL,
 CONSTRAINT [search_logs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[shared_drafts]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shared_drafts](
	[topic_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[id] [bigint]  NOT NULL,
 CONSTRAINT [shared_drafts_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[single_sign_on_records]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[single_sign_on_records](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[external_id] [varchar](max) NOT NULL,
	[last_payload] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[external_username] [varchar](max) NULL,
	[external_email] [varchar](max) NULL,
	[external_name] [varchar](max) NULL,
	[external_avatar_url] [varchar](1000) NULL,
	[external_profile_background_url] [varchar](max) NULL,
	[external_card_background_url] [varchar](max) NULL,
 CONSTRAINT [single_sign_on_records_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[site_settings]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[site_settings](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[data_type] [int] NOT NULL,
	[value] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [site_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[skipped_email_logs]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[skipped_email_logs](
	[id] [bigint]  NOT NULL,
	[email_type] [varchar](max) NOT NULL,
	[to_address] [varchar](max) NOT NULL,
	[user_id] [int] NULL,
	[post_id] [int] NULL,
	[reason_type] [int] NOT NULL,
	[custom_reason] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [skipped_email_logs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[stylesheet_cache]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stylesheet_cache](
	[id] [int]  NOT NULL,
	[target] [varchar](max) NOT NULL,
	[digest] [varchar](max) NOT NULL,
	[content] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[theme_id] [int] NOT NULL,
	[source_map] [varchar](max) NULL,
 CONSTRAINT [stylesheet_cache_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[tag_group_memberships]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag_group_memberships](
	[id] [int]  NOT NULL,
	[tag_id] [int] NOT NULL,
	[tag_group_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [tag_group_memberships_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag_group_permissions]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag_group_permissions](
	[id] [bigint]  NOT NULL,
	[tag_group_id] [bigint] NOT NULL,
	[group_id] [bigint] NOT NULL,
	[permission_type] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [tag_group_permissions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tag_groups]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag_groups](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[parent_tag_id] [int] NULL,
	[one_per_topic] [bit] NULL,
 CONSTRAINT [tag_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[tag_search_data]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag_search_data](
	[tag_id] [int]  NOT NULL,
	[search_data] [varchar](max) NULL,
	[raw_data] [varchar](max) NULL,
	[locale] [varchar](max) NULL,
	[version] [int] NULL,
 CONSTRAINT [tag_search_data_pkey] PRIMARY KEY CLUSTERED 
(
	[tag_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[tag_users]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tag_users](
	[id] [int]  NOT NULL,
	[tag_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[notification_level] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [tag_users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tags](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[topic_count] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[pm_topic_count] [int] NOT NULL,
	[target_tag_id] [int] NULL,
 CONSTRAINT [tags_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[tags_web_hooks]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tags_web_hooks](
	[web_hook_id] [bigint] NOT NULL,
	[tag_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[theme_fields]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theme_fields](
	[id] [int]  NOT NULL,
	[theme_id] [int] NOT NULL,
	[target_id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[value] [varchar](max) NOT NULL,
	[value_baked] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[compiler_version] [varchar](50) NOT NULL,
	[error] [varchar](max) NULL,
	[upload_id] [int] NULL,
	[type_id] [int] NOT NULL,
 CONSTRAINT [theme_fields_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[theme_modifier_sets]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theme_modifier_sets](
	[id] [bigint]  NOT NULL,
	[theme_id] [bigint] NOT NULL,
	[serialize_topic_excerpts] [bit] NULL,
	[csp_extensions] [varchar](max) NULL,
	[svg_icons] [varchar](max) NULL,
 CONSTRAINT [theme_modifier_sets_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[theme_settings]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theme_settings](
	[id] [bigint]  NOT NULL,
	[name] [varchar](255) NOT NULL,
	[data_type] [int] NOT NULL,
	[value] [varchar](max) NULL,
	[theme_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [theme_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[theme_translation_overrides]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[theme_translation_overrides](
	[id] [bigint]  NOT NULL,
	[theme_id] [int] NOT NULL,
	[locale] [varchar](max) NOT NULL,
	[translation_key] [varchar](max) NOT NULL,
	[value] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [theme_translation_overrides_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[themes]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[themes](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[compiler_version] [int] NOT NULL,
	[user_selectable] [bit] NOT NULL,
	[hidden] [bit] NOT NULL,
	[color_scheme_id] [int] NULL,
	[remote_theme_id] [int] NULL,
	[component] [bit] NOT NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [themes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[top_topics]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[top_topics](
	[id] [int]  NOT NULL,
	[topic_id] [int] NULL,
	[yearly_posts_count] [int] NOT NULL,
	[yearly_views_count] [int] NOT NULL,
	[yearly_likes_count] [int] NOT NULL,
	[monthly_posts_count] [int] NOT NULL,
	[monthly_views_count] [int] NOT NULL,
	[monthly_likes_count] [int] NOT NULL,
	[weekly_posts_count] [int] NOT NULL,
	[weekly_views_count] [int] NOT NULL,
	[weekly_likes_count] [int] NOT NULL,
	[daily_posts_count] [int] NOT NULL,
	[daily_views_count] [int] NOT NULL,
	[daily_likes_count] [int] NOT NULL,
	[daily_score] [float] NULL,
	[weekly_score] [float] NULL,
	[monthly_score] [float] NULL,
	[yearly_score] [float] NULL,
	[all_score] [float] NULL,
	[daily_op_likes_count] [int] NOT NULL,
	[weekly_op_likes_count] [int] NOT NULL,
	[monthly_op_likes_count] [int] NOT NULL,
	[yearly_op_likes_count] [int] NOT NULL,
	[quarterly_posts_count] [int] NOT NULL,
	[quarterly_views_count] [int] NOT NULL,
	[quarterly_likes_count] [int] NOT NULL,
	[quarterly_score] [float] NULL,
	[quarterly_op_likes_count] [int] NOT NULL,
 CONSTRAINT [top_topics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic_allowed_groups]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_allowed_groups](
	[id] [int]  NOT NULL,
	[group_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
 CONSTRAINT [topic_allowed_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic_allowed_users]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_allowed_users](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [topic_allowed_users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic_custom_fields]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_custom_fields](
	[id] [int]  NOT NULL,
	[topic_id] [int] NOT NULL,
	[name] [varchar](256) NOT NULL,
	[value] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [topic_custom_fields_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[topic_embeds]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_embeds](
	[id] [int]  NOT NULL,
	[topic_id] [int] NOT NULL,
	[post_id] [int] NOT NULL,
	[embed_url] [varchar](1000) NOT NULL,
	[content_sha1] [varchar](40) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by_id] [int] NULL,
 CONSTRAINT [topic_embeds_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic_groups]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_groups](
	[id] [bigint]  NOT NULL,
	[group_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[last_read_post_number] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [topic_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic_invites]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_invites](
	[id] [int]  NOT NULL,
	[topic_id] [int] NOT NULL,
	[invite_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [topic_invites_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic_link_clicks]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_link_clicks](
	[id] [int]  NOT NULL,
	[topic_link_id] [int] NOT NULL,
	[user_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[ip_address] [varchar](max) NULL,
 CONSTRAINT [topic_link_clicks_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[topic_links]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_links](
	[id] [int]  NOT NULL,
	[topic_id] [int] NOT NULL,
	[post_id] [int] NULL,
	[user_id] [int] NOT NULL,
	[url] [varchar](500) NOT NULL,
	[domain] [varchar](100) NOT NULL,
	[internal] [bit] NOT NULL,
	[link_topic_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[reflection] [bit] NULL,
	[clicks] [int] NOT NULL,
	[link_post_id] [int] NULL,
	[title] [varchar](max) NULL,
	[crawled_at] [datetime] NULL,
	[quote] [bit] NOT NULL,
	[extension] [varchar](10) NULL,
 CONSTRAINT [topic_links_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[topic_search_data]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_search_data](
	[topic_id] [int]  NOT NULL,
	[raw_data] [varchar](max) NULL,
	[locale] [varchar](max) NOT NULL,
	[search_data] [varchar](max) NULL,
	[version] [int] NULL,
 CONSTRAINT [topic_search_data_pkey] PRIMARY KEY CLUSTERED 
(
	[topic_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[topic_tags]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_tags](
	[id] [int]  NOT NULL,
	[topic_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [topic_tags_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic_timers]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_timers](
	[id] [int]  NOT NULL,
	[execute_at] [datetime] NOT NULL,
	[status_type] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[based_on_last_post] [bit] NOT NULL,
	[deleted_at] [datetime] NULL,
	[deleted_by_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[category_id] [int] NULL,
	[public_type] [bit] NULL,
	[duration] [int] NULL,
 CONSTRAINT [topic_timers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic_users]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_users](
	[user_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[posted] [bit] NOT NULL,
	[last_read_post_number] [int] NULL,
	[highest_seen_post_number] [int] NULL,
	[last_visited_at] [datetime] NULL,
	[first_visited_at] [datetime] NULL,
	[notification_level] [int] NOT NULL,
	[notifications_changed_at] [datetime] NULL,
	[notifications_reason_id] [int] NULL,
	[total_msecs_viewed] [int] NOT NULL,
	[cleared_pinned_at] [datetime] NULL,
	[id] [int]  NOT NULL,
	[last_emailed_post_number] [int] NULL,
	[liked] [bit] NULL,
	[bookmarked] [bit] NULL,
 CONSTRAINT [topic_users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[topic_views]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topic_views](
	[topic_id] [int] NOT NULL,
	[viewed_at] [date] NOT NULL,
	[user_id] [int] NULL,
	[ip_address] [varchar](max) NULL
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[topics]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[topics](
	[id] [int]  NOT NULL,
	[title] [varchar](max) NOT NULL,
	[last_posted_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[views] [int] NOT NULL,
	[posts_count] [int] NOT NULL,
	[user_id] [int] NULL,
	[last_post_user_id] [int] NOT NULL,
	[reply_count] [int] NOT NULL,
	[featured_user1_id] [int] NULL,
	[featured_user2_id] [int] NULL,
	[featured_user3_id] [int] NULL,
	[avg_time] [int] NULL,
	[deleted_at] [datetime] NULL,
	[highest_post_number] [int] NOT NULL,
	[image_url] [varchar](max) NULL,
	[like_count] [int] NOT NULL,
	[incoming_link_count] [int] NOT NULL,
	[category_id] [int] NULL,
	[visible] [bit] NOT NULL,
	[moderator_posts_count] [int] NOT NULL,
	[closed] [bit] NOT NULL,
	[archived] [bit] NOT NULL,
	[bumped_at] [datetime] NOT NULL,
	[has_summary] [bit] NOT NULL,
	[archetype] [varchar](max) NOT NULL,
	[featured_user4_id] [int] NULL,
	[notify_moderators_count] [int] NOT NULL,
	[spam_count] [int] NOT NULL,
	[pinned_at] [datetime] NULL,
	[score] [float] NULL,
	[percent_rank] [float] NOT NULL,
	[subtype] [varchar](max) NULL,
	[slug] [varchar](max) NULL,
	[deleted_by_id] [int] NULL,
	[participant_count] [int] NULL,
	[word_count] [int] NULL,
	[excerpt] [varchar](1000) NULL,
	[pinned_globally] [bit] NOT NULL,
	[pinned_until] [datetime] NULL,
	[fancy_title] [varchar](400) NULL,
	[highest_staff_post_number] [int] NOT NULL,
	[featured_link] [varchar](max) NULL,
	[reviewable_score] [float] NOT NULL,
 CONSTRAINT [topics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[translation_overrides]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[translation_overrides](
	[id] [int]  NOT NULL,
	[locale] [varchar](max) NOT NULL,
	[translation_key] [varchar](max) NOT NULL,
	[value] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[compiled_js] [varchar](max) NULL,
 CONSTRAINT [translation_overrides_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[unsubscribe_keys]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unsubscribe_keys](
	[key] [varchar](64) NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[unsubscribe_key_type] [varchar](max) NULL,
	[topic_id] [int] NULL,
	[post_id] [int] NULL,
 CONSTRAINT [digest_unsubscribe_keys_pkey] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[uploads]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uploads](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[original_filename] [varchar](max) NOT NULL,
	[filesize] [int] NOT NULL,
	[width] [int] NULL,
	[height] [int] NULL,
	[url] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[sha1] [varchar](40) NULL,
	[origin] [varchar](1000) NULL,
	[retain_hours] [int] NULL,
	[extension] [varchar](10) NULL,
	[thumbnail_width] [int] NULL,
	[thumbnail_height] [int] NULL,
	[etag] [varchar](max) NULL,
	[secure] [bit] NOT NULL,
	[access_control_post_id] [bigint] NULL,
	[original_sha1] [varchar](max) NULL,
 CONSTRAINT [uploads_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_actions]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_actions](
	[id] [int]  NOT NULL,
	[action_type] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[target_topic_id] [int] NULL,
	[target_post_id] [int] NULL,
	[target_user_id] [int] NULL,
	[acting_user_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [user_actions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_api_keys]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_api_keys](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[client_id] [varchar](max) NOT NULL,
	[key] [varchar](max) NOT NULL,
	[application_name] [varchar](max) NOT NULL,
	[push_url] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[revoked_at] [datetime] NULL,
	[scopes] [varchar](max) NOT NULL,
	[last_used_at] [datetime] NOT NULL,
 CONSTRAINT [user_api_keys_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_archived_messages]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_archived_messages](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[topic_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [user_archived_messages_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_associated_accounts]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_associated_accounts](
	[id] [bigint]  NOT NULL,
	[provider_name] [varchar](max) NOT NULL,
	[provider_uid] [varchar](max) NOT NULL,
	[user_id] [int] NULL,
	[last_used] [datetime] NOT NULL,
	[info] [varchar](max) NOT NULL,
	[credentials] [varchar](max) NOT NULL,
	[extra] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [user_associated_accounts_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_auth_token_logs]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_auth_token_logs](
	[id] [int]  NOT NULL,
	[action] [varchar](max) NOT NULL,
	[user_auth_token_id] [int] NULL,
	[user_id] [int] NULL,
	[client_ip] [varchar](max) NULL,
	[user_agent] [varchar](max) NULL,
	[auth_token] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[path] [varchar](max) NULL,
 CONSTRAINT [user_auth_token_logs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_auth_tokens]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_auth_tokens](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[auth_token] [varchar](max) NOT NULL,
	[prev_auth_token] [varchar](max) NOT NULL,
	[user_agent] [varchar](max) NULL,
	[auth_token_seen] [bit] NOT NULL,
	[client_ip] [varchar](max) NULL,
	[rotated_at] [datetime] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[seen_at] [datetime] NULL,
 CONSTRAINT [user_auth_tokens_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_avatars]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_avatars](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[custom_upload_id] [int] NULL,
	[gravatar_upload_id] [int] NULL,
	[last_gravatar_download_attempt] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [user_avatars_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_badges]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_badges](
	[id] [int]  NOT NULL,
	[badge_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[granted_at] [datetime] NOT NULL,
	[granted_by_id] [int] NOT NULL,
	[post_id] [int] NULL,
	[notification_id] [int] NULL,
	[seq] [int] NOT NULL,
	[featured_rank] [int] NULL,
 CONSTRAINT [user_badges_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_custom_fields]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_custom_fields](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[name] [varchar](256) NOT NULL,
	[value] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [user_custom_fields_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_emails]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_emails](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[email] [varchar](513) NOT NULL,
	[primary] [bit] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [user_emails_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_exports]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_exports](
	[id] [int]  NOT NULL,
	[file_name] [varchar](max) NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[upload_id] [int] NULL,
	[topic_id] [int] NULL,
 CONSTRAINT [user_exports_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_field_options]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_field_options](
	[id] [int]  NOT NULL,
	[user_field_id] [int] NOT NULL,
	[value] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [user_field_options_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_fields]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_fields](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[field_type] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[editable] [bit] NOT NULL,
	[description] [varchar](max) NOT NULL,
	[required] [bit] NOT NULL,
	[show_on_profile] [bit] NOT NULL,
	[position] [int] NULL,
	[show_on_user_card] [bit] NOT NULL,
	[external_name] [varchar](max) NULL,
	[external_type] [varchar](max) NULL,
 CONSTRAINT [user_fields_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_histories]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_histories](
	[id] [int]  NOT NULL,
	[action] [int] NOT NULL,
	[acting_user_id] [int] NULL,
	[target_user_id] [int] NULL,
	[details] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[context] [varchar](max) NULL,
	[ip_address] [varchar](max) NULL,
	[email] [varchar](max) NULL,
	[subject] [varchar](max) NULL,
	[previous_value] [varchar](max) NULL,
	[new_value] [varchar](max) NULL,
	[topic_id] [int] NULL,
	[admin_only] [bit] NULL,
	[post_id] [int] NULL,
	[custom_type] [varchar](max) NULL,
	[category_id] [int] NULL,
 CONSTRAINT [user_histories_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_open_ids]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_open_ids](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[email] [varchar](max) NOT NULL,
	[url] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[active] [bit] NOT NULL,
 CONSTRAINT [user_open_ids_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_options]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_options](
	[user_id] [int] NOT NULL,
	[mailing_list_mode] [bit] NOT NULL,
	[email_digests] [bit] NULL,
	[external_links_in_new_tab] [bit] NOT NULL,
	[enable_quoting] [bit] NOT NULL,
	[dynamic_favicon] [bit] NOT NULL,
	[disable_jump_reply] [bit] NOT NULL,
	[automatically_unpin_topics] [bit] NOT NULL,
	[digest_after_minutes] [int] NULL,
	[auto_track_topics_after_msecs] [int] NULL,
	[new_topic_duration_minutes] [int] NULL,
	[last_redirected_to_top_at] [datetime] NULL,
	[email_previous_replies] [int] NOT NULL,
	[email_in_reply_to] [bit] NOT NULL,
	[like_notification_frequency] [int] NOT NULL,
	[mailing_list_mode_frequency] [int] NOT NULL,
	[include_tl0_in_digests] [bit] NULL,
	[notification_level_when_replying] [int] NULL,
	[theme_key_seq] [int] NOT NULL,
	[allow_private_messages] [bit] NOT NULL,
	[homepage_id] [int] NULL,
	[theme_ids] [varchar](max) NOT NULL,
	[hide_profile_and_presence] [bit] NOT NULL,
	[text_size_key] [int] NOT NULL,
	[text_size_seq] [int] NOT NULL,
	[email_level] [int] NOT NULL,
	[email_messages_level] [int] NOT NULL,
	[title_count_mode_key] [int] NOT NULL,
	[enable_defer] [bit] NOT NULL,
	[timezone] [varchar](max) NULL
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_profile_views]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_profile_views](
	[id] [int]  NOT NULL,
	[user_profile_id] [int] NOT NULL,
	[viewed_at] [datetime] NOT NULL,
	[ip_address] [varchar](max) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [user_profile_views_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_profiles]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_profiles](
	[user_id] [int] NOT NULL,
	[location] [varchar](max) NULL,
	[website] [varchar](max) NULL,
	[bio_raw] [varchar](max) NULL,
	[bio_cooked] [varchar](max) NULL,
	[dismissed_banner_key] [int] NULL,
	[bio_cooked_version] [int] NULL,
	[badge_granted_title] [bit] NULL,
	[views] [int] NOT NULL,
	[profile_background_upload_id] [int] NULL,
	[card_background_upload_id] [int] NULL,
	[granted_title_badge_id] [bigint] NULL,
	[featured_topic_id] [int] NULL,
 CONSTRAINT [user_profiles_pkey] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_search_data]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_search_data](
	[user_id] [int] NOT NULL,
	[search_data] [varchar](max) NULL,
	[raw_data] [varchar](max) NULL,
	[locale] [varchar](max) NULL,
	[version] [int] NULL,
 CONSTRAINT [users_search_pkey] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_second_factors]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_second_factors](
	[id] [bigint]  NOT NULL,
	[user_id] [int] NOT NULL,
	[method] [int] NOT NULL,
	[data] [varchar](max) NOT NULL,
	[enabled] [bit] NOT NULL,
	[last_used] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[name] [varchar](max) NULL,
 CONSTRAINT [user_second_factors_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_security_keys]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_security_keys](
	[id] [bigint]  NOT NULL,
	[user_id] [bigint] NOT NULL,
	[credential_id] [varchar](max) NOT NULL,
	[public_key] [varchar](max) NOT NULL,
	[factor_type] [int] NOT NULL,
	[enabled] [bit] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[last_used] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [user_security_keys_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_stats]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_stats](
	[user_id] [int] NOT NULL,
	[topics_entered] [int] NOT NULL,
	[time_read] [int] NOT NULL,
	[days_visited] [int] NOT NULL,
	[posts_read_count] [int] NOT NULL,
	[likes_given] [int] NOT NULL,
	[likes_received] [int] NOT NULL,
	[topic_reply_count] [int] NOT NULL,
	[new_since] [datetime] NOT NULL,
	[read_faq] [datetime] NULL,
	[first_post_created_at] [datetime] NULL,
	[post_count] [int] NOT NULL,
	[topic_count] [int] NOT NULL,
	[bounce_score] [float] NOT NULL,
	[reset_bounce_score_after] [datetime] NULL,
	[flags_agreed] [int] NOT NULL,
	[flags_disagreed] [int] NOT NULL,
	[flags_ignored] [int] NOT NULL,
	[first_unread_at] [datetime] NOT NULL,
	[distinct_badge_count] [int] NOT NULL,
 CONSTRAINT [user_stats_pkey] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_uploads]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_uploads](
	[id] [bigint]  NOT NULL,
	[upload_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
 CONSTRAINT [user_uploads_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_visits]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_visits](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[visited_at] [date] NOT NULL,
	[posts_read] [int] NULL,
	[mobile] [bit] NULL,
	[time_read] [int] NOT NULL,
 CONSTRAINT [user_visits_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_warnings]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_warnings](
	[id] [int]  NOT NULL,
	[topic_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[created_by_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [user_warnings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int]  NOT NULL,
	[username] [varchar](60) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[name] [varchar](max) NULL,
	[seen_notification_id] [int] NOT NULL,
	[last_posted_at] [datetime] NULL,
	[password_hash] [varchar](64) NULL,
	[salt] [varchar](32) NULL,
	[active] [bit] NOT NULL,
	[username_lower] [varchar](60) NOT NULL,
	[last_seen_at] [datetime] NULL,
	[admin] [bit] NOT NULL,
	[last_emailed_at] [datetime] NULL,
	[trust_level] [int] NOT NULL,
	[approved] [bit] NOT NULL,
	[approved_by_id] [int] NULL,
	[approved_at] [datetime] NULL,
	[previous_visit_at] [datetime] NULL,
	[suspended_at] [datetime] NULL,
	[suspended_till] [datetime] NULL,
	[date_of_birth] [date] NULL,
	[views] [int] NOT NULL,
	[flag_level] [int] NOT NULL,
	[ip_address] [varchar](max) NULL,
	[moderator] [bit] NULL,
	[title] [varchar](max) NULL,
	[uploaded_avatar_id] [int] NULL,
	[locale] [varchar](10) NULL,
	[primary_group_id] [int] NULL,
	[registration_ip_address] [varchar](max) NULL,
	[staged] [bit] NOT NULL,
	[first_seen_at] [datetime] NULL,
	[silenced_till] [datetime] NULL,
	[group_locked_trust_level] [int] NULL,
	[manual_locked_trust_level] [int] NULL,
	[secure_identifier] [varchar](max) NULL,
 CONSTRAINT [users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[watched_words]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[watched_words](
	[id] [int]  NOT NULL,
	[word] [varchar](max) NOT NULL,
	[action] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [watched_words_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[web_crawler_requests]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_crawler_requests](
	[id] [bigint]  NOT NULL,
	[date] [date] NOT NULL,
	[user_agent] [varchar](max) NOT NULL,
	[count] [int] NOT NULL,
 CONSTRAINT [web_crawler_requests_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[web_hook_event_types]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_hook_event_types](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
 CONSTRAINT [web_hook_event_types_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[web_hook_event_types_hooks]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_hook_event_types_hooks](
	[web_hook_id] [int] NOT NULL,
	[web_hook_event_type_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[web_hook_events]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_hook_events](
	[id] [int]  NOT NULL,
	[web_hook_id] [int] NOT NULL,
	[headers] [varchar](max) NULL,
	[payload] [varchar](max) NULL,
	[status] [int] NULL,
	[response_headers] [varchar](max) NULL,
	[response_body] [varchar](max) NULL,
	[duration] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [web_hook_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[web_hooks]    Script Date: 2021/9/6 18:02:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_hooks](
	[id] [int]  NOT NULL,
	[payload_url] [varchar](max) NOT NULL,
	[content_type] [int] NOT NULL,
	[last_delivery_status] [int] NOT NULL,
	[status] [int] NOT NULL,
	[secret] [varchar](max) NULL,
	[wildcard_web_hook] [bit] NOT NULL,
	[verify_certificate] [bit] NOT NULL,
	[active] [bit] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [web_hooks_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
ALTER TABLE [dbo].[api_keys] ADD  DEFAULT ((0)) FOR [hidden]
GO
ALTER TABLE [dbo].[application_requests] ADD  DEFAULT ((0)) FOR [count]
GO
ALTER TABLE [dbo].[badges] ADD  DEFAULT ((0)) FOR [grant_count]
GO
ALTER TABLE [dbo].[badges] ADD  DEFAULT ((0)) FOR [allow_title]
GO
ALTER TABLE [dbo].[badges] ADD  DEFAULT ((0)) FOR [multiple_grant]
GO
ALTER TABLE [dbo].[badges] ADD  DEFAULT ((1)) FOR [listable]
GO
ALTER TABLE [dbo].[badges] ADD  DEFAULT ((0)) FOR [target_posts]
GO
ALTER TABLE [dbo].[badges] ADD  DEFAULT ((1)) FOR [enabled]
GO
ALTER TABLE [dbo].[badges] ADD  DEFAULT ((1)) FOR [auto_revoke]
GO
ALTER TABLE [dbo].[badges] ADD  DEFAULT ((5)) FOR [badge_grouping_id]
GO
ALTER TABLE [dbo].[badges] ADD  DEFAULT ((0)) FOR [show_posts]
GO
ALTER TABLE [dbo].[badges] ADD  DEFAULT ((0)) FOR [system]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ('0088CC') FOR [color]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [topic_count]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [topics_year]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [topics_month]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [topics_week]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ('FFFFFF') FOR [text_color]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [read_restricted]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [post_count]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [posts_year]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [posts_month]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [posts_week]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [email_in_allow_strangers]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [topics_day]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [posts_day]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((1)) FOR [allow_badges]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [auto_close_based_on_last_post]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((1)) FOR [topic_featured_link_allowed]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [all_topics_wiki]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [show_subcategory_list]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((3)) FOR [num_featured_topics]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ('rows_with_featured_topics') FOR [subcategory_list_style]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ('all') FOR [default_top_period]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [mailinglist_mirror]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [minimum_required_tags]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [navigate_to_first_post_after_read]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [search_priority]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((0)) FOR [allow_global_tags]
GO
ALTER TABLE [dbo].[categories] ADD  DEFAULT ((1)) FOR [min_tags_from_required_group]
GO
ALTER TABLE [dbo].[category_featured_topics] ADD  DEFAULT ((0)) FOR [rank]
GO
ALTER TABLE [dbo].[category_groups] ADD  DEFAULT ((1)) FOR [permission_type]
GO
ALTER TABLE [dbo].[category_search_data] ADD  DEFAULT ((0)) FOR [version]
GO
ALTER TABLE [dbo].[category_tag_stats] ADD  DEFAULT ((0)) FOR [topic_count]
GO
ALTER TABLE [dbo].[color_schemes] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[color_schemes] ADD  DEFAULT ((0)) FOR [via_wizard]
GO
ALTER TABLE [dbo].[directory_items] ADD  DEFAULT ((0)) FOR [days_visited]
GO
ALTER TABLE [dbo].[directory_items] ADD  DEFAULT ((0)) FOR [posts_read]
GO
ALTER TABLE [dbo].[drafts] ADD  DEFAULT ((0)) FOR [sequence]
GO
ALTER TABLE [dbo].[drafts] ADD  DEFAULT ((1)) FOR [revisions]
GO
ALTER TABLE [dbo].[email_logs] ADD  DEFAULT ((0)) FOR [bounced]
GO
ALTER TABLE [dbo].[email_tokens] ADD  DEFAULT ((0)) FOR [confirmed]
GO
ALTER TABLE [dbo].[email_tokens] ADD  DEFAULT ((0)) FOR [expired]
GO
ALTER TABLE [dbo].[given_daily_likes] ADD  DEFAULT ((0)) FOR [limit_reached]
GO
ALTER TABLE [dbo].[group_users] ADD  DEFAULT ((0)) FOR [owner]
GO
ALTER TABLE [dbo].[group_users] ADD  DEFAULT ((2)) FOR [notification_level]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [automatic]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [user_count]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [automatic_membership_retroactive]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [primary_group]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [has_messages]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [allow_membership_requests]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((3)) FOR [default_notification_level]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [visibility_level]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [public_exit]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [public_admission]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [messageable_level]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [mentionable_level]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [publish_read_state]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT ((0)) FOR [members_visibility_level]
GO
ALTER TABLE [dbo].[incoming_domains] ADD  DEFAULT ((0)) FOR [https]
GO
ALTER TABLE [dbo].[incoming_emails] ADD  DEFAULT ((0)) FOR [is_auto_generated]
GO
ALTER TABLE [dbo].[incoming_emails] ADD  DEFAULT ((0)) FOR [is_bounce]
GO
ALTER TABLE [dbo].[invites] ADD  DEFAULT ((0)) FOR [moderator]
GO
ALTER TABLE [dbo].[notifications] ADD  DEFAULT ((0)) FOR [read]
GO
ALTER TABLE [dbo].[polls] ADD  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[polls] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[polls] ADD  DEFAULT ((0)) FOR [results]
GO
ALTER TABLE [dbo].[polls] ADD  DEFAULT ((0)) FOR [visibility]
GO
ALTER TABLE [dbo].[polls] ADD  DEFAULT ((0)) FOR [chart_type]
GO
ALTER TABLE [dbo].[post_action_types] ADD  DEFAULT ((0)) FOR [is_flag]
GO
ALTER TABLE [dbo].[post_action_types] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[post_action_types] ADD  DEFAULT ((0.0)) FOR [score_bonus]
GO
ALTER TABLE [dbo].[post_action_types] ADD  DEFAULT ((0)) FOR [reviewable_priority]
GO
ALTER TABLE [dbo].[post_actions] ADD  DEFAULT ((0)) FOR [staff_took_action]
GO
ALTER TABLE [dbo].[post_actions] ADD  DEFAULT ((0)) FOR [targets_topic]
GO
ALTER TABLE [dbo].[post_revisions] ADD  DEFAULT ((0)) FOR [hidden]
GO
ALTER TABLE [dbo].[post_search_data] ADD  DEFAULT ((0)) FOR [version]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [reply_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [quote_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [off_topic_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [like_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [incoming_link_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [bookmark_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [reads]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((1)) FOR [post_type]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [hidden]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [notify_moderators_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [spam_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [illegal_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [inappropriate_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [user_deleted]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((1.0)) FOR [percent_rank]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [notify_user_count]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [like_score]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((1)) FOR [cook_method]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [wiki]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [self_edits]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [reply_quoted]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((0)) FOR [via_email]
GO
ALTER TABLE [dbo].[posts] ADD  DEFAULT ((1)) FOR [public_version]
GO
ALTER TABLE [dbo].[reviewable_scores] ADD  DEFAULT ((0.0)) FOR [score]
GO
ALTER TABLE [dbo].[reviewable_scores] ADD  DEFAULT ((0.0)) FOR [take_action_bonus]
GO
ALTER TABLE [dbo].[reviewable_scores] ADD  DEFAULT ((0.0)) FOR [user_accuracy_bonus]
GO
ALTER TABLE [dbo].[reviewables] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[reviewables] ADD  DEFAULT ((0)) FOR [reviewable_by_moderator]
GO
ALTER TABLE [dbo].[reviewables] ADD  DEFAULT ((0.0)) FOR [score]
GO
ALTER TABLE [dbo].[reviewables] ADD  DEFAULT ((0)) FOR [potential_spam]
GO
ALTER TABLE [dbo].[reviewables] ADD  DEFAULT ((0)) FOR [version]
GO
ALTER TABLE [dbo].[screened_emails] ADD  DEFAULT ((0)) FOR [match_count]
GO
ALTER TABLE [dbo].[screened_ip_addresses] ADD  DEFAULT ((0)) FOR [match_count]
GO
ALTER TABLE [dbo].[screened_urls] ADD  DEFAULT ((0)) FOR [match_count]
GO
ALTER TABLE [dbo].[stylesheet_cache] ADD  DEFAULT ((-1)) FOR [theme_id]
GO
ALTER TABLE [dbo].[tag_group_permissions] ADD  DEFAULT ((1)) FOR [permission_type]
GO
ALTER TABLE [dbo].[tag_groups] ADD  DEFAULT ((0)) FOR [one_per_topic]
GO
ALTER TABLE [dbo].[tag_search_data] ADD  DEFAULT ((0)) FOR [version]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT ((0)) FOR [topic_count]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT ((0)) FOR [pm_topic_count]
GO
ALTER TABLE [dbo].[theme_fields] ADD  DEFAULT ('0') FOR [compiler_version]
GO
ALTER TABLE [dbo].[theme_fields] ADD  DEFAULT ((0)) FOR [type_id]
GO
ALTER TABLE [dbo].[themes] ADD  DEFAULT ((0)) FOR [compiler_version]
GO
ALTER TABLE [dbo].[themes] ADD  DEFAULT ((0)) FOR [user_selectable]
GO
ALTER TABLE [dbo].[themes] ADD  DEFAULT ((0)) FOR [hidden]
GO
ALTER TABLE [dbo].[themes] ADD  DEFAULT ((0)) FOR [component]
GO
ALTER TABLE [dbo].[themes] ADD  DEFAULT ((1)) FOR [enabled]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [yearly_posts_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [yearly_views_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [yearly_likes_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [monthly_posts_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [monthly_views_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [monthly_likes_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [weekly_posts_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [weekly_views_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [weekly_likes_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [daily_posts_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [daily_views_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [daily_likes_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0.0)) FOR [daily_score]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0.0)) FOR [weekly_score]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0.0)) FOR [monthly_score]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0.0)) FOR [yearly_score]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0.0)) FOR [all_score]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [daily_op_likes_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [weekly_op_likes_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [monthly_op_likes_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [yearly_op_likes_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [quarterly_posts_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [quarterly_views_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [quarterly_likes_count]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0.0)) FOR [quarterly_score]
GO
ALTER TABLE [dbo].[top_topics] ADD  DEFAULT ((0)) FOR [quarterly_op_likes_count]
GO
ALTER TABLE [dbo].[topic_groups] ADD  DEFAULT ((0)) FOR [last_read_post_number]
GO
ALTER TABLE [dbo].[topic_links] ADD  DEFAULT ((0)) FOR [internal]
GO
ALTER TABLE [dbo].[topic_links] ADD  DEFAULT ((0)) FOR [reflection]
GO
ALTER TABLE [dbo].[topic_links] ADD  DEFAULT ((0)) FOR [clicks]
GO
ALTER TABLE [dbo].[topic_links] ADD  DEFAULT ((0)) FOR [quote]
GO
ALTER TABLE [dbo].[topic_search_data] ADD  DEFAULT ((0)) FOR [version]
GO
ALTER TABLE [dbo].[topic_timers] ADD  DEFAULT ((0)) FOR [based_on_last_post]
GO
ALTER TABLE [dbo].[topic_timers] ADD  DEFAULT ((1)) FOR [public_type]
GO
ALTER TABLE [dbo].[topic_users] ADD  DEFAULT ((0)) FOR [posted]
GO
ALTER TABLE [dbo].[topic_users] ADD  DEFAULT ((1)) FOR [notification_level]
GO
ALTER TABLE [dbo].[topic_users] ADD  DEFAULT ((0)) FOR [total_msecs_viewed]
GO
ALTER TABLE [dbo].[topic_users] ADD  DEFAULT ((0)) FOR [liked]
GO
ALTER TABLE [dbo].[topic_users] ADD  DEFAULT ((0)) FOR [bookmarked]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [views]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [posts_count]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [reply_count]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [highest_post_number]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [like_count]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [incoming_link_count]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((1)) FOR [visible]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [moderator_posts_count]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [closed]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [archived]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [has_summary]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [notify_moderators_count]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [spam_count]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((1.0)) FOR [percent_rank]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((1)) FOR [participant_count]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [pinned_globally]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0)) FOR [highest_staff_post_number]
GO
ALTER TABLE [dbo].[topics] ADD  DEFAULT ((0.0)) FOR [reviewable_score]
GO
ALTER TABLE [dbo].[uploads] ADD  DEFAULT ((0)) FOR [secure]
GO
ALTER TABLE [dbo].[user_auth_tokens] ADD  DEFAULT ((0)) FOR [auth_token_seen]
GO
ALTER TABLE [dbo].[user_badges] ADD  DEFAULT ((0)) FOR [seq]
GO
ALTER TABLE [dbo].[user_emails] ADD  DEFAULT ((0)) FOR [primary]
GO
ALTER TABLE [dbo].[user_fields] ADD  DEFAULT ((0)) FOR [editable]
GO
ALTER TABLE [dbo].[user_fields] ADD  DEFAULT ((1)) FOR [required]
GO
ALTER TABLE [dbo].[user_fields] ADD  DEFAULT ((0)) FOR [show_on_profile]
GO
ALTER TABLE [dbo].[user_fields] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[user_fields] ADD  DEFAULT ((0)) FOR [show_on_user_card]
GO
ALTER TABLE [dbo].[user_histories] ADD  DEFAULT ((0)) FOR [admin_only]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [mailing_list_mode]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [external_links_in_new_tab]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((1)) FOR [enable_quoting]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [dynamic_favicon]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [disable_jump_reply]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((1)) FOR [automatically_unpin_topics]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((2)) FOR [email_previous_replies]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((1)) FOR [email_in_reply_to]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((1)) FOR [like_notification_frequency]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((1)) FOR [mailing_list_mode_frequency]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [include_tl0_in_digests]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [theme_key_seq]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((1)) FOR [allow_private_messages]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [hide_profile_and_presence]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [text_size_key]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [text_size_seq]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((1)) FOR [email_level]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [email_messages_level]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [title_count_mode_key]
GO
ALTER TABLE [dbo].[user_options] ADD  DEFAULT ((0)) FOR [enable_defer]
GO
ALTER TABLE [dbo].[user_profiles] ADD  DEFAULT ((0)) FOR [badge_granted_title]
GO
ALTER TABLE [dbo].[user_profiles] ADD  DEFAULT ((0)) FOR [views]
GO
ALTER TABLE [dbo].[user_search_data] ADD  DEFAULT ((0)) FOR [version]
GO
ALTER TABLE [dbo].[user_second_factors] ADD  DEFAULT ((0)) FOR [enabled]
GO
ALTER TABLE [dbo].[user_security_keys] ADD  DEFAULT ((0)) FOR [factor_type]
GO
ALTER TABLE [dbo].[user_security_keys] ADD  DEFAULT ((1)) FOR [enabled]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [topics_entered]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [time_read]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [days_visited]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [posts_read_count]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [likes_given]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [likes_received]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [topic_reply_count]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [post_count]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [topic_count]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [bounce_score]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [flags_agreed]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [flags_disagreed]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [flags_ignored]
GO
ALTER TABLE [dbo].[user_stats] ADD  DEFAULT ((0)) FOR [distinct_badge_count]
GO
ALTER TABLE [dbo].[user_visits] ADD  DEFAULT ((0)) FOR [posts_read]
GO
ALTER TABLE [dbo].[user_visits] ADD  DEFAULT ((0)) FOR [mobile]
GO
ALTER TABLE [dbo].[user_visits] ADD  DEFAULT ((0)) FOR [time_read]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [seen_notification_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [active]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [admin]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [approved]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [views]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [flag_level]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [moderator]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [staged]
GO
ALTER TABLE [dbo].[web_crawler_requests] ADD  DEFAULT ((0)) FOR [count]
GO
ALTER TABLE [dbo].[web_hook_events] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[web_hook_events] ADD  DEFAULT ((0)) FOR [duration]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((1)) FOR [content_type]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((1)) FOR [last_delivery_status]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((0)) FOR [wildcard_web_hook]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((1)) FOR [verify_certificate]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((0)) FOR [active]
GO
ALTER TABLE [dbo].[poll_options]  WITH CHECK ADD  CONSTRAINT [fk_rails_aa85becb42] FOREIGN KEY([poll_id])
REFERENCES [dbo].[polls] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poll_options] CHECK CONSTRAINT [fk_rails_aa85becb42]
GO
ALTER TABLE [dbo].[poll_votes]  WITH CHECK ADD  CONSTRAINT [fk_rails_848ece0184] FOREIGN KEY([poll_option_id])
REFERENCES [dbo].[poll_options] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poll_votes] CHECK CONSTRAINT [fk_rails_848ece0184]
GO
ALTER TABLE [dbo].[poll_votes]  WITH CHECK ADD  CONSTRAINT [fk_rails_a6e6974b7e] FOREIGN KEY([poll_id])
REFERENCES [dbo].[polls] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[poll_votes] CHECK CONSTRAINT [fk_rails_a6e6974b7e]
GO
ALTER TABLE [dbo].[user_profiles]  WITH CHECK ADD  CONSTRAINT [fk_rails_1d362f2e97] FOREIGN KEY([profile_background_upload_id])
REFERENCES [dbo].[uploads] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_profiles] CHECK CONSTRAINT [fk_rails_1d362f2e97]
GO
ALTER TABLE [dbo].[user_profiles]  WITH CHECK ADD  CONSTRAINT [fk_rails_ca64aa462b] FOREIGN KEY([card_background_upload_id])
REFERENCES [dbo].[uploads] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_profiles] CHECK CONSTRAINT [fk_rails_ca64aa462b]
GO
