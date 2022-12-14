-- USE [redmine_base]
GO
ALTER TABLE [dbo].[watchers] DROP CONSTRAINT [FK_watchers_users]
GO
ALTER TABLE [dbo].[roles_managed_roles] DROP CONSTRAINT [roles_managed_roles_roles_id_fk]
GO
ALTER TABLE [dbo].[projects_trackers] DROP CONSTRAINT [FK_projects_trackers_trackers]
GO
ALTER TABLE [dbo].[changesets_issues] DROP CONSTRAINT [FK_changesets_issues_issues]
GO
ALTER TABLE [dbo].[workflows] DROP CONSTRAINT [DF__workflows__rule__00AA174D]
GO
ALTER TABLE [dbo].[workflows] DROP CONSTRAINT [DF__workflows__field__7FB5F314]
GO
ALTER TABLE [dbo].[workflows] DROP CONSTRAINT [DF__workflows__type__7EC1CEDB]
GO
ALTER TABLE [dbo].[workflows] DROP CONSTRAINT [DF__workflows__autho__7DCDAAA2]
GO
ALTER TABLE [dbo].[workflows] DROP CONSTRAINT [DF__workflows__assig__7CD98669]
GO
ALTER TABLE [dbo].[workflows] DROP CONSTRAINT [DF__workflows__role___7BE56230]
GO
ALTER TABLE [dbo].[workflows] DROP CONSTRAINT [DF__workflows__new_s__7AF13DF7]
GO
ALTER TABLE [dbo].[workflows] DROP CONSTRAINT [DF__workflows__old_s__79FD19BE]
GO
ALTER TABLE [dbo].[workflows] DROP CONSTRAINT [DF__workflows__track__7908F585]
GO
ALTER TABLE [dbo].[wikis] DROP CONSTRAINT [DF__wikis__status__7814D14C]
GO
ALTER TABLE [dbo].[wiki_redirects] DROP CONSTRAINT [DF__wiki_redi__redir__7720AD13]
GO
ALTER TABLE [dbo].[wiki_redirects] DROP CONSTRAINT [DF__wiki_redi__title__762C88DA]
GO
ALTER TABLE [dbo].[wiki_pages] DROP CONSTRAINT [DF__wiki_page__paren__753864A1]
GO
ALTER TABLE [dbo].[wiki_pages] DROP CONSTRAINT [DF__wiki_page__prote__74444068]
GO
ALTER TABLE [dbo].[wiki_contents] DROP CONSTRAINT [DF__wiki_cont__comme__73501C2F]
GO
ALTER TABLE [dbo].[wiki_contents] DROP CONSTRAINT [DF__wiki_cont__autho__725BF7F6]
GO
ALTER TABLE [dbo].[wiki_content_versions] DROP CONSTRAINT [DF__wiki_cont__comme__7167D3BD]
GO
ALTER TABLE [dbo].[wiki_content_versions] DROP CONSTRAINT [DF__wiki_cont__compr__7073AF84]
GO
ALTER TABLE [dbo].[wiki_content_versions] DROP CONSTRAINT [DF__wiki_cont__autho__6F7F8B4B]
GO
ALTER TABLE [dbo].[watchers] DROP CONSTRAINT [DF__watchers__user_i__6E8B6712]
GO
ALTER TABLE [dbo].[watchers] DROP CONSTRAINT [DF__watchers__watcha__6D9742D9]
GO
ALTER TABLE [dbo].[watchers] DROP CONSTRAINT [DF__watchers__watcha__6CA31EA0]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__sharin__6BAEFA67]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__status__6ABAD62E]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__wiki_p__69C6B1F5]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__update__68D28DBC]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__create__67DE6983]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__effect__66EA454A]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__descri__65F62111]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__name__6501FCD8]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__projec__640DD89F]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__passwd_ch__6319B466]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__must_chan__6225902D]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__salt__61316BF4]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__mail_noti__603D47BB]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__identity___5F492382]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__type__5E54FF49]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__updated_o__5D60DB10]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__created_o__5C6CB6D7]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__auth_sour__5B78929E]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__language__5A846E65]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__last_logi__59904A2C]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__status__589C25F3]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__admin__57A801BA]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__lastname__56B3DD81]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__firstname__55BFB948]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__hashed_pa__54CB950F]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__login__53D770D6]
GO
ALTER TABLE [dbo].[user_preferences] DROP CONSTRAINT [DF__user_pref__time___52E34C9D]
GO
ALTER TABLE [dbo].[user_preferences] DROP CONSTRAINT [DF__user_pref__hide___51EF2864]
GO
ALTER TABLE [dbo].[user_preferences] DROP CONSTRAINT [DF__user_pref__user___50FB042B]
GO
ALTER TABLE [dbo].[trackers] DROP CONSTRAINT [DF__trackers__defaul__5006DFF2]
GO
ALTER TABLE [dbo].[trackers] DROP CONSTRAINT [DF__trackers__fields__4F12BBB9]
GO
ALTER TABLE [dbo].[trackers] DROP CONSTRAINT [DF__trackers__is_in___4E1E9780]
GO
ALTER TABLE [dbo].[trackers] DROP CONSTRAINT [DF__trackers__positi__4D2A7347]
GO
ALTER TABLE [dbo].[trackers] DROP CONSTRAINT [DF__trackers__is_in___4C364F0E]
GO
ALTER TABLE [dbo].[trackers] DROP CONSTRAINT [DF__trackers__descri__4B422AD5]
GO
ALTER TABLE [dbo].[trackers] DROP CONSTRAINT [DF__trackers__name__4A4E069C]
GO
ALTER TABLE [dbo].[tokens] DROP CONSTRAINT [DF__tokens__updated___4959E263]
GO
ALTER TABLE [dbo].[tokens] DROP CONSTRAINT [DF__tokens__value__4865BE2A]
GO
ALTER TABLE [dbo].[tokens] DROP CONSTRAINT [DF__tokens__action__477199F1]
GO
ALTER TABLE [dbo].[tokens] DROP CONSTRAINT [DF__tokens__user_id__467D75B8]
GO
ALTER TABLE [dbo].[time_entries] DROP CONSTRAINT [DF__time_entr__comme__4589517F]
GO
ALTER TABLE [dbo].[time_entries] DROP CONSTRAINT [DF__time_entr__issue__44952D46]
GO
ALTER TABLE [dbo].[time_entries] DROP CONSTRAINT [DF__time_entr__autho__43A1090D]
GO
ALTER TABLE [dbo].[settings] DROP CONSTRAINT [DF__settings__update__42ACE4D4]
GO
ALTER TABLE [dbo].[settings] DROP CONSTRAINT [DF__settings__name__41B8C09B]
GO
ALTER TABLE [dbo].[roles] DROP CONSTRAINT [DF__roles__all_roles__40C49C62]
GO
ALTER TABLE [dbo].[roles] DROP CONSTRAINT [DF__roles__time_entr__3FD07829]
GO
ALTER TABLE [dbo].[roles] DROP CONSTRAINT [DF__roles__users_vis__3EDC53F0]
GO
ALTER TABLE [dbo].[roles] DROP CONSTRAINT [DF__roles__issues_vi__3DE82FB7]
GO
ALTER TABLE [dbo].[roles] DROP CONSTRAINT [DF__roles__builtin__3CF40B7E]
GO
ALTER TABLE [dbo].[roles] DROP CONSTRAINT [DF__roles__assignabl__3BFFE745]
GO
ALTER TABLE [dbo].[roles] DROP CONSTRAINT [DF__roles__position__3B0BC30C]
GO
ALTER TABLE [dbo].[roles] DROP CONSTRAINT [DF__roles__name__3A179ED3]
GO
ALTER TABLE [dbo].[repositories] DROP CONSTRAINT [DF__repositor__creat__39237A9A]
GO
ALTER TABLE [dbo].[repositories] DROP CONSTRAINT [DF__repositor__is_de__382F5661]
GO
ALTER TABLE [dbo].[repositories] DROP CONSTRAINT [DF__repositor__ident__373B3228]
GO
ALTER TABLE [dbo].[repositories] DROP CONSTRAINT [DF__repositor__log_e__36470DEF]
GO
ALTER TABLE [dbo].[repositories] DROP CONSTRAINT [DF__repositor__path___3552E9B6]
GO
ALTER TABLE [dbo].[repositories] DROP CONSTRAINT [DF__repositori__type__345EC57D]
GO
ALTER TABLE [dbo].[repositories] DROP CONSTRAINT [DF__repositor__root___336AA144]
GO
ALTER TABLE [dbo].[repositories] DROP CONSTRAINT [DF__repositor__passw__32767D0B]
GO
ALTER TABLE [dbo].[repositories] DROP CONSTRAINT [DF__repositor__login__318258D2]
GO
ALTER TABLE [dbo].[repositories] DROP CONSTRAINT [DF__repositorie__url__308E3499]
GO
ALTER TABLE [dbo].[repositories] DROP CONSTRAINT [DF__repositor__proje__2F9A1060]
GO
ALTER TABLE [dbo].[queries] DROP CONSTRAINT [DF__queries__visibil__2EA5EC27]
GO
ALTER TABLE [dbo].[queries] DROP CONSTRAINT [DF__queries__type__2DB1C7EE]
GO
ALTER TABLE [dbo].[queries] DROP CONSTRAINT [DF__queries__group_b__2CBDA3B5]
GO
ALTER TABLE [dbo].[queries] DROP CONSTRAINT [DF__queries__user_id__2BC97F7C]
GO
ALTER TABLE [dbo].[queries] DROP CONSTRAINT [DF__queries__name__2AD55B43]
GO
ALTER TABLE [dbo].[queries] DROP CONSTRAINT [DF__queries__project__29E1370A]
GO
ALTER TABLE [dbo].[projects_trackers] DROP CONSTRAINT [DF__projects___track__28ED12D1]
GO
ALTER TABLE [dbo].[projects_trackers] DROP CONSTRAINT [DF__projects___proje__27F8EE98]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__defaul__2704CA5F]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__defaul__2610A626]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__inheri__251C81ED]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__rgt__24285DB4]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__lft__2334397B]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__status__22401542]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__identi__214BF109]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__update__2057CCD0]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__create__1F63A897]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__parent__1E6F845E]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__is_pub__1D7B6025]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__homepa__1C873BEC]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__name__1B9317B3]
GO
ALTER TABLE [dbo].[open_id_authentication_nonces] DROP CONSTRAINT [DF__open_id_a__serve__1A9EF37A]
GO
ALTER TABLE [dbo].[open_id_authentication_associations] DROP CONSTRAINT [DF__open_id_a__assoc__19AACF41]
GO
ALTER TABLE [dbo].[open_id_authentication_associations] DROP CONSTRAINT [DF__open_id_a__handl__18B6AB08]
GO
ALTER TABLE [dbo].[open_id_authentication_associations] DROP CONSTRAINT [DF__open_id_a__lifet__17C286CF]
GO
ALTER TABLE [dbo].[open_id_authentication_associations] DROP CONSTRAINT [DF__open_id_a__issue__16CE6296]
GO
ALTER TABLE [dbo].[news] DROP CONSTRAINT [DF__news__comments_c__15DA3E5D]
GO
ALTER TABLE [dbo].[news] DROP CONSTRAINT [DF__news__created_on__14E61A24]
GO
ALTER TABLE [dbo].[news] DROP CONSTRAINT [DF__news__author_id__13F1F5EB]
GO
ALTER TABLE [dbo].[news] DROP CONSTRAINT [DF__news__summary__12FDD1B2]
GO
ALTER TABLE [dbo].[news] DROP CONSTRAINT [DF__news__title__1209AD79]
GO
ALTER TABLE [dbo].[news] DROP CONSTRAINT [DF__news__project_id__11158940]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__sticky__10216507]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__locked__0F2D40CE]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__last_r__0E391C95]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__replie__0D44F85C]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__author__0C50D423]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__subjec__0B5CAFEA]
GO
ALTER TABLE [dbo].[messages] DROP CONSTRAINT [DF__messages__parent__0A688BB1]
GO
ALTER TABLE [dbo].[members] DROP CONSTRAINT [DF__members__mail_no__09746778]
GO
ALTER TABLE [dbo].[members] DROP CONSTRAINT [DF__members__created__0880433F]
GO
ALTER TABLE [dbo].[members] DROP CONSTRAINT [DF__members__project__078C1F06]
GO
ALTER TABLE [dbo].[members] DROP CONSTRAINT [DF__members__user_id__0697FACD]
GO
ALTER TABLE [dbo].[member_roles] DROP CONSTRAINT [DF__member_ro__inher__05A3D694]
GO
ALTER TABLE [dbo].[journals] DROP CONSTRAINT [DF__journals__privat__04AFB25B]
GO
ALTER TABLE [dbo].[journals] DROP CONSTRAINT [DF__journals__user_i__03BB8E22]
GO
ALTER TABLE [dbo].[journals] DROP CONSTRAINT [DF__journals__journa__02C769E9]
GO
ALTER TABLE [dbo].[journals] DROP CONSTRAINT [DF__journals__journa__01D345B0]
GO
ALTER TABLE [dbo].[journal_details] DROP CONSTRAINT [DF__journal_d__prop___00DF2177]
GO
ALTER TABLE [dbo].[journal_details] DROP CONSTRAINT [DF__journal_d__prope__7FEAFD3E]
GO
ALTER TABLE [dbo].[journal_details] DROP CONSTRAINT [DF__journal_d__journ__7EF6D905]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__closed_o__7E02B4CC]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__is_priva__7D0E9093]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__rgt__7C1A6C5A]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__lft__7B264821]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__root_id__7A3223E8]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__parent_i__793DFFAF]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__estimate__7849DB76]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__done_rat__7755B73D]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__start_da__76619304]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__updated___756D6ECB]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__created___74794A92]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__lock_ver__73852659]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__fixed_ve__72910220]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__assigned__719CDDE7]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__category__70A8B9AE]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__due_date__6FB49575]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__subject__6EC0713C]
GO
ALTER TABLE [dbo].[issue_statuses] DROP CONSTRAINT [DF__issue_sta__defau__6DCC4D03]
GO
ALTER TABLE [dbo].[issue_statuses] DROP CONSTRAINT [DF__issue_sta__posit__6CD828CA]
GO
ALTER TABLE [dbo].[issue_statuses] DROP CONSTRAINT [DF__issue_sta__is_cl__6BE40491]
GO
ALTER TABLE [dbo].[issue_statuses] DROP CONSTRAINT [DF__issue_stat__name__6AEFE058]
GO
ALTER TABLE [dbo].[issue_relations] DROP CONSTRAINT [DF__issue_rel__delay__69FBBC1F]
GO
ALTER TABLE [dbo].[issue_relations] DROP CONSTRAINT [DF__issue_rel__relat__690797E6]
GO
ALTER TABLE [dbo].[issue_categories] DROP CONSTRAINT [DF__issue_cat__assig__681373AD]
GO
ALTER TABLE [dbo].[issue_categories] DROP CONSTRAINT [DF__issue_cate__name__671F4F74]
GO
ALTER TABLE [dbo].[issue_categories] DROP CONSTRAINT [DF__issue_cat__proje__662B2B3B]
GO
ALTER TABLE [dbo].[imports] DROP CONSTRAINT [DF__imports__finishe__65370702]
GO
ALTER TABLE [dbo].[imports] DROP CONSTRAINT [DF__imports__total_i__6442E2C9]
GO
ALTER TABLE [dbo].[imports] DROP CONSTRAINT [DF__imports__filenam__634EBE90]
GO
ALTER TABLE [dbo].[imports] DROP CONSTRAINT [DF__imports__type__625A9A57]
GO
ALTER TABLE [dbo].[import_items] DROP CONSTRAINT [DF__import_it__uniqu__6166761E]
GO
ALTER TABLE [dbo].[import_items] DROP CONSTRAINT [DF__import_it__obj_i__607251E5]
GO
ALTER TABLE [dbo].[enumerations] DROP CONSTRAINT [DF__enumerati__posit__5F7E2DAC]
GO
ALTER TABLE [dbo].[enumerations] DROP CONSTRAINT [DF__enumerati__paren__5E8A0973]
GO
ALTER TABLE [dbo].[enumerations] DROP CONSTRAINT [DF__enumerati__proje__5D95E53A]
GO
ALTER TABLE [dbo].[enumerations] DROP CONSTRAINT [DF__enumerati__activ__5CA1C101]
GO
ALTER TABLE [dbo].[enumerations] DROP CONSTRAINT [DF__enumeratio__type__5BAD9CC8]
GO
ALTER TABLE [dbo].[enumerations] DROP CONSTRAINT [DF__enumerati__is_de__5AB9788F]
GO
ALTER TABLE [dbo].[enumerations] DROP CONSTRAINT [DF__enumerati__posit__59C55456]
GO
ALTER TABLE [dbo].[enumerations] DROP CONSTRAINT [DF__enumeratio__name__58D1301D]
GO
ALTER TABLE [dbo].[enabled_modules] DROP CONSTRAINT [DF__enabled_m__proje__57DD0BE4]
GO
ALTER TABLE [dbo].[email_addresses] DROP CONSTRAINT [DF__email_add__notif__56E8E7AB]
GO
ALTER TABLE [dbo].[email_addresses] DROP CONSTRAINT [DF__email_add__is_de__55F4C372]
GO
ALTER TABLE [dbo].[documents] DROP CONSTRAINT [DF__documents__creat__55009F39]
GO
ALTER TABLE [dbo].[documents] DROP CONSTRAINT [DF__documents__title__540C7B00]
GO
ALTER TABLE [dbo].[documents] DROP CONSTRAINT [DF__documents__categ__531856C7]
GO
ALTER TABLE [dbo].[documents] DROP CONSTRAINT [DF__documents__proje__5224328E]
GO
ALTER TABLE [dbo].[custom_values] DROP CONSTRAINT [DF__custom_va__custo__51300E55]
GO
ALTER TABLE [dbo].[custom_values] DROP CONSTRAINT [DF__custom_va__custo__503BEA1C]
GO
ALTER TABLE [dbo].[custom_values] DROP CONSTRAINT [DF__custom_va__custo__4F47C5E3]
GO
ALTER TABLE [dbo].[custom_fields_trackers] DROP CONSTRAINT [DF__custom_fi__track__4E53A1AA]
GO
ALTER TABLE [dbo].[custom_fields_trackers] DROP CONSTRAINT [DF__custom_fi__custo__4D5F7D71]
GO
ALTER TABLE [dbo].[custom_fields_projects] DROP CONSTRAINT [DF__custom_fi__proje__4C6B5938]
GO
ALTER TABLE [dbo].[custom_fields_projects] DROP CONSTRAINT [DF__custom_fi__custo__4B7734FF]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__multi__4A8310C6]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__visib__498EEC8D]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__edita__489AC854]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__searc__47A6A41B]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__posit__46B27FE2]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__is_fi__45BE5BA9]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__is_fo__44CA3770]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__is_re__43D61337]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__max_l__42E1EEFE]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__min_l__41EDCAC5]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__regex__40F9A68C]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fi__field__40058253]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fie__name__3F115E1A]
GO
ALTER TABLE [dbo].[custom_fields] DROP CONSTRAINT [DF__custom_fie__type__3E1D39E1]
GO
ALTER TABLE [dbo].[custom_field_enumerations] DROP CONSTRAINT [DF__custom_fi__posit__3D2915A8]
GO
ALTER TABLE [dbo].[custom_field_enumerations] DROP CONSTRAINT [DF__custom_fi__activ__3C34F16F]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__author__3B40CD36]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__commen__3A4CA8FD]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__commen__395884C4]
GO
ALTER TABLE [dbo].[changesets] DROP CONSTRAINT [DF__changeset__user___3864608B]
GO
ALTER TABLE [dbo].[changesets] DROP CONSTRAINT [DF__changeset__scmid__37703C52]
GO
ALTER TABLE [dbo].[changesets] DROP CONSTRAINT [DF__changeset__commi__367C1819]
GO
ALTER TABLE [dbo].[changesets] DROP CONSTRAINT [DF__changeset__commi__3587F3E0]
GO
ALTER TABLE [dbo].[changes] DROP CONSTRAINT [DF__changes__branch__3493CFA7]
GO
ALTER TABLE [dbo].[changes] DROP CONSTRAINT [DF__changes__revisio__339FAB6E]
GO
ALTER TABLE [dbo].[changes] DROP CONSTRAINT [DF__changes__from_re__32AB8735]
GO
ALTER TABLE [dbo].[changes] DROP CONSTRAINT [DF__changes__action__31B762FC]
GO
ALTER TABLE [dbo].[boards] DROP CONSTRAINT [DF__boards__parent_i__30C33EC3]
GO
ALTER TABLE [dbo].[boards] DROP CONSTRAINT [DF__boards__last_mes__2FCF1A8A]
GO
ALTER TABLE [dbo].[boards] DROP CONSTRAINT [DF__boards__messages__2EDAF651]
GO
ALTER TABLE [dbo].[boards] DROP CONSTRAINT [DF__boards__topics_c__2DE6D218]
GO
ALTER TABLE [dbo].[boards] DROP CONSTRAINT [DF__boards__position__2CF2ADDF]
GO
ALTER TABLE [dbo].[boards] DROP CONSTRAINT [DF__boards__descript__2BFE89A6]
GO
ALTER TABLE [dbo].[boards] DROP CONSTRAINT [DF__boards__name__2B0A656D]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sour__verif__2A164134]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sour__timeo__29221CFB]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_source__tls__282DF8C2]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sour__onthe__2739D489]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sour__attr___2645B050]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sour__attr___25518C17]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sour__attr___245D67DE]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sour__attr___236943A5]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sour__base___22751F6C]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sour__accou__2180FB33]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sour__accou__208CD6FA]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sourc__port__1F98B2C1]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sourc__host__1EA48E88]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sourc__name__1DB06A4F]
GO
ALTER TABLE [dbo].[auth_sources] DROP CONSTRAINT [DF__auth_sourc__type__1CBC4616]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__disk___1BC821DD]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__descr__1AD3FDA4]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__creat__19DFD96B]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__autho__18EBB532]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__downl__17F790F9]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__diges__17036CC0]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__conte__160F4887]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__files__151B244E]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__disk___14270015]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__filen__1332DBDC]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__conta__123EB7A3]
GO
ALTER TABLE [dbo].[attachments] DROP CONSTRAINT [DF__attachmen__conta__114A936A]
GO
ALTER TABLE [dbo].[ar_internal_metadata] DROP CONSTRAINT [DF__ar_intern__value__10566F31]
GO
/****** Object:  Table [dbo].[workflows]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[workflows]') AND type in (N'U'))
DROP TABLE [dbo].[workflows]
GO
/****** Object:  Table [dbo].[wikis]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wikis]') AND type in (N'U'))
DROP TABLE [dbo].[wikis]
GO
/****** Object:  Table [dbo].[wiki_redirects]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wiki_redirects]') AND type in (N'U'))
DROP TABLE [dbo].[wiki_redirects]
GO
/****** Object:  Table [dbo].[wiki_pages]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wiki_pages]') AND type in (N'U'))
DROP TABLE [dbo].[wiki_pages]
GO
/****** Object:  Table [dbo].[wiki_contents]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wiki_contents]') AND type in (N'U'))
DROP TABLE [dbo].[wiki_contents]
GO
/****** Object:  Table [dbo].[wiki_content_versions]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wiki_content_versions]') AND type in (N'U'))
DROP TABLE [dbo].[wiki_content_versions]
GO
/****** Object:  Table [dbo].[watchers]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[watchers]') AND type in (N'U'))
DROP TABLE [dbo].[watchers]
GO
/****** Object:  Table [dbo].[versions]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[versions]') AND type in (N'U'))
DROP TABLE [dbo].[versions]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[user_preferences]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_preferences]') AND type in (N'U'))
DROP TABLE [dbo].[user_preferences]
GO
/****** Object:  Table [dbo].[trackers]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trackers]') AND type in (N'U'))
DROP TABLE [dbo].[trackers]
GO
/****** Object:  Table [dbo].[tokens]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tokens]') AND type in (N'U'))
DROP TABLE [dbo].[tokens]
GO
/****** Object:  Table [dbo].[time_entries]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[time_entries]') AND type in (N'U'))
DROP TABLE [dbo].[time_entries]
GO
/****** Object:  Table [dbo].[settings]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[settings]') AND type in (N'U'))
DROP TABLE [dbo].[settings]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schema_migrations]') AND type in (N'U'))
DROP TABLE [dbo].[schema_migrations]
GO
/****** Object:  Table [dbo].[roles_managed_roles]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roles_managed_roles]') AND type in (N'U'))
DROP TABLE [dbo].[roles_managed_roles]
GO
/****** Object:  Table [dbo].[roles]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[roles]') AND type in (N'U'))
DROP TABLE [dbo].[roles]
GO
/****** Object:  Table [dbo].[repositories]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[repositories]') AND type in (N'U'))
DROP TABLE [dbo].[repositories]
GO
/****** Object:  Table [dbo].[queries_roles]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[queries_roles]') AND type in (N'U'))
DROP TABLE [dbo].[queries_roles]
GO
/****** Object:  Table [dbo].[queries]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[queries]') AND type in (N'U'))
DROP TABLE [dbo].[queries]
GO
/****** Object:  Table [dbo].[projects_trackers]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[projects_trackers]') AND type in (N'U'))
DROP TABLE [dbo].[projects_trackers]
GO
/****** Object:  Table [dbo].[projects]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[projects]') AND type in (N'U'))
DROP TABLE [dbo].[projects]
GO
/****** Object:  Table [dbo].[open_id_authentication_nonces]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[open_id_authentication_nonces]') AND type in (N'U'))
DROP TABLE [dbo].[open_id_authentication_nonces]
GO
/****** Object:  Table [dbo].[open_id_authentication_associations]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[open_id_authentication_associations]') AND type in (N'U'))
DROP TABLE [dbo].[open_id_authentication_associations]
GO
/****** Object:  Table [dbo].[news]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[news]') AND type in (N'U'))
DROP TABLE [dbo].[news]
GO
/****** Object:  Table [dbo].[messages]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[messages]') AND type in (N'U'))
DROP TABLE [dbo].[messages]
GO
/****** Object:  Table [dbo].[members]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[members]') AND type in (N'U'))
DROP TABLE [dbo].[members]
GO
/****** Object:  Table [dbo].[member_roles]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[member_roles]') AND type in (N'U'))
DROP TABLE [dbo].[member_roles]
GO
/****** Object:  Table [dbo].[journals]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[journals]') AND type in (N'U'))
DROP TABLE [dbo].[journals]
GO
/****** Object:  Table [dbo].[journal_details]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[journal_details]') AND type in (N'U'))
DROP TABLE [dbo].[journal_details]
GO
/****** Object:  Table [dbo].[issues]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issues]') AND type in (N'U'))
DROP TABLE [dbo].[issues]
GO
/****** Object:  Table [dbo].[issue_statuses]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issue_statuses]') AND type in (N'U'))
DROP TABLE [dbo].[issue_statuses]
GO
/****** Object:  Table [dbo].[issue_relations]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issue_relations]') AND type in (N'U'))
DROP TABLE [dbo].[issue_relations]
GO
/****** Object:  Table [dbo].[issue_categories]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issue_categories]') AND type in (N'U'))
DROP TABLE [dbo].[issue_categories]
GO
/****** Object:  Table [dbo].[imports]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[imports]') AND type in (N'U'))
DROP TABLE [dbo].[imports]
GO
/****** Object:  Table [dbo].[import_items]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[import_items]') AND type in (N'U'))
DROP TABLE [dbo].[import_items]
GO
/****** Object:  Table [dbo].[groups_users]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[groups_users]') AND type in (N'U'))
DROP TABLE [dbo].[groups_users]
GO
/****** Object:  Table [dbo].[enumerations]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[enumerations]') AND type in (N'U'))
DROP TABLE [dbo].[enumerations]
GO
/****** Object:  Table [dbo].[enabled_modules]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[enabled_modules]') AND type in (N'U'))
DROP TABLE [dbo].[enabled_modules]
GO
/****** Object:  Table [dbo].[email_addresses]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[email_addresses]') AND type in (N'U'))
DROP TABLE [dbo].[email_addresses]
GO
/****** Object:  Table [dbo].[documents]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[documents]') AND type in (N'U'))
DROP TABLE [dbo].[documents]
GO
/****** Object:  Table [dbo].[custom_values]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[custom_values]') AND type in (N'U'))
DROP TABLE [dbo].[custom_values]
GO
/****** Object:  Table [dbo].[custom_fields_trackers]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[custom_fields_trackers]') AND type in (N'U'))
DROP TABLE [dbo].[custom_fields_trackers]
GO
/****** Object:  Table [dbo].[custom_fields_roles]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[custom_fields_roles]') AND type in (N'U'))
DROP TABLE [dbo].[custom_fields_roles]
GO
/****** Object:  Table [dbo].[custom_fields_projects]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[custom_fields_projects]') AND type in (N'U'))
DROP TABLE [dbo].[custom_fields_projects]
GO
/****** Object:  Table [dbo].[custom_fields]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[custom_fields]') AND type in (N'U'))
DROP TABLE [dbo].[custom_fields]
GO
/****** Object:  Table [dbo].[custom_field_enumerations]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[custom_field_enumerations]') AND type in (N'U'))
DROP TABLE [dbo].[custom_field_enumerations]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
DROP TABLE [dbo].[comments]
GO
/****** Object:  Table [dbo].[changesets_issues]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[changesets_issues]') AND type in (N'U'))
DROP TABLE [dbo].[changesets_issues]
GO
/****** Object:  Table [dbo].[changesets]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[changesets]') AND type in (N'U'))
DROP TABLE [dbo].[changesets]
GO
/****** Object:  Table [dbo].[changeset_parents]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[changeset_parents]') AND type in (N'U'))
DROP TABLE [dbo].[changeset_parents]
GO
/****** Object:  Table [dbo].[changes]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[changes]') AND type in (N'U'))
DROP TABLE [dbo].[changes]
GO
/****** Object:  Table [dbo].[boards]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[boards]') AND type in (N'U'))
DROP TABLE [dbo].[boards]
GO
/****** Object:  Table [dbo].[auth_sources]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[auth_sources]') AND type in (N'U'))
DROP TABLE [dbo].[auth_sources]
GO
/****** Object:  Table [dbo].[attachments]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[attachments]') AND type in (N'U'))
DROP TABLE [dbo].[attachments]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 10:27:46 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ar_internal_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[ar_internal_metadata]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 10:27:46 ******/
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
/****** Object:  Table [dbo].[attachments]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[attachments](
	[id] [int]  NOT NULL,
	[container_id] [int] NULL,
	[container_type] [nvarchar](30) NULL,
	[filename] [nvarchar](255) NOT NULL,
	[disk_filename] [nvarchar](255) NOT NULL,
	[filesize] [bigint] NOT NULL,
	[content_type] [nvarchar](255) NULL,
	[digest] [nvarchar](64) NOT NULL,
	[downloads] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[created_on] [datetime] NULL,
	[description] [nvarchar](255) NULL,
	[disk_directory] [nvarchar](255) NULL,
 CONSTRAINT [PK_attachments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[auth_sources]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[auth_sources](
	[id] [int]  NOT NULL,
	[type] [nvarchar](30) NOT NULL,
	[name] [nvarchar](60) NOT NULL,
	[host] [nvarchar](60) NULL,
	[port] [int] NULL,
	[account] [nvarchar](255) NULL,
	[account_password] [nvarchar](255) NULL,
	[base_dn] [nvarchar](255) NULL,
	[attr_login] [nvarchar](30) NULL,
	[attr_firstname] [nvarchar](30) NULL,
	[attr_lastname] [nvarchar](30) NULL,
	[attr_mail] [nvarchar](30) NULL,
	[onthefly_register] [smallint] NOT NULL,
	[tls] [smallint] NOT NULL,
	[filter] [nvarchar](max) NULL,
	[timeout] [int] NULL,
	[verify_peer] [smallint] NOT NULL,
 CONSTRAINT [PK_auth_sources_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[boards]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boards](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NULL,
	[position] [int] NULL,
	[topics_count] [int] NOT NULL,
	[messages_count] [int] NOT NULL,
	[last_message_id] [int] NULL,
	[parent_id] [int] NULL,
 CONSTRAINT [PK_boards_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[changes]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[changes](
	[id] [int]  NOT NULL,
	[changeset_id] [int] NOT NULL,
	[action] [nvarchar](1) NOT NULL,
	[path] [nvarchar](max) NOT NULL,
	[from_path] [nvarchar](max) NULL,
	[from_revision] [nvarchar](255) NULL,
	[revision] [nvarchar](255) NULL,
	[branch] [nvarchar](255) NULL,
 CONSTRAINT [PK_changes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[changeset_parents]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[changeset_parents](
	[changeset_id] [int] NOT NULL,
	[parent_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[changesets]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[changesets](
	[id] [int]  NOT NULL,
	[repository_id] [int] NOT NULL,
	[revision] [nvarchar](255) NOT NULL,
	[committer] [nvarchar](255) NULL,
	[committed_on] [datetime2](0) NOT NULL,
	[comments] [nvarchar](max) NULL,
	[commit_date] [date] NULL,
	[scmid] [nvarchar](255) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_changesets_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [changesets$changesets_repos_rev] UNIQUE NONCLUSTERED 
(
	[repository_id] ASC,
	[revision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[changesets_issues]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[changesets_issues](
	[changeset_id] [int] NOT NULL,
	[issue_id] [int] NOT NULL,
 CONSTRAINT [changesets_issues$changesets_issues_ids] UNIQUE CLUSTERED 
(
	[changeset_id] ASC,
	[issue_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int]  NOT NULL,
	[commented_type] [nvarchar](30) NOT NULL,
	[commented_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[content] [nvarchar](max) NULL,
	[created_on] [datetime2](0) NOT NULL,
	[updated_on] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_comments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[custom_field_enumerations]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[custom_field_enumerations](
	[id] [int]  NOT NULL,
	[custom_field_id] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[active] [smallint] NOT NULL,
	[position] [int] NOT NULL,
 CONSTRAINT [PK_custom_field_enumerations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[custom_fields]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[custom_fields](
	[id] [int]  NOT NULL,
	[type] [nvarchar](30) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[field_format] [nvarchar](30) NOT NULL,
	[possible_values] [nvarchar](max) NULL,
	[regexp] [nvarchar](255) NULL,
	[min_length] [int] NULL,
	[max_length] [int] NULL,
	[is_required] [smallint] NOT NULL,
	[is_for_all] [smallint] NOT NULL,
	[is_filter] [smallint] NOT NULL,
	[position] [int] NULL,
	[searchable] [smallint] NULL,
	[default_value] [nvarchar](max) NULL,
	[editable] [smallint] NULL,
	[visible] [smallint] NOT NULL,
	[multiple] [smallint] NULL,
	[format_store] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
 CONSTRAINT [PK_custom_fields_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[custom_fields_projects]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[custom_fields_projects](
	[custom_field_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
 CONSTRAINT [custom_fields_projects$index_custom_fields_projects_on_custom_field_id_and_project_id] UNIQUE CLUSTERED 
(
	[custom_field_id] ASC,
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[custom_fields_roles]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[custom_fields_roles](
	[custom_field_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [custom_fields_roles$custom_fields_roles_ids] UNIQUE CLUSTERED 
(
	[custom_field_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[custom_fields_trackers]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[custom_fields_trackers](
	[custom_field_id] [int] NOT NULL,
	[tracker_id] [int] NOT NULL,
 CONSTRAINT [custom_fields_trackers$index_custom_fields_trackers_on_custom_field_id_and_tracker_id] UNIQUE CLUSTERED 
(
	[custom_field_id] ASC,
	[tracker_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[custom_values]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[custom_values](
	[id] [int]  NOT NULL,
	[customized_type] [nvarchar](30) NOT NULL,
	[customized_id] [int] NOT NULL,
	[custom_field_id] [int] NOT NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_custom_values_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[documents]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[documents](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[category_id] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[description] [nvarchar](max) NULL,
	[created_on] [datetime] NULL,
 CONSTRAINT [PK_documents_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[email_addresses]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_addresses](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[address] [nvarchar](255) NOT NULL,
	[is_default] [smallint] NOT NULL,
	[notify] [smallint] NOT NULL,
	[created_on] [datetime2](0) NOT NULL,
	[updated_on] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_email_addresses_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enabled_modules]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enabled_modules](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[name] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_enabled_modules_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[enumerations]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[enumerations](
	[id] [int]  NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[position] [int] NULL,
	[is_default] [smallint] NOT NULL,
	[type] [nvarchar](255) NULL,
	[active] [smallint] NOT NULL,
	[project_id] [int] NULL,
	[parent_id] [int] NULL,
	[position_name] [nvarchar](30) NULL,
 CONSTRAINT [PK_enumerations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groups_users]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groups_users](
	[group_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [groups_users$groups_users_ids] UNIQUE CLUSTERED 
(
	[group_id] ASC,
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[import_items]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[import_items](
	[id] [int]  NOT NULL,
	[import_id] [int] NOT NULL,
	[position] [int] NOT NULL,
	[obj_id] [int] NULL,
	[message] [nvarchar](max) NULL,
	[unique_id] [nvarchar](255) NULL,
 CONSTRAINT [PK_import_items_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[imports]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imports](
	[id] [int]  NOT NULL,
	[type] [nvarchar](255) NULL,
	[user_id] [int] NOT NULL,
	[filename] [nvarchar](255) NULL,
	[settings] [nvarchar](max) NULL,
	[total_items] [int] NULL,
	[finished] [smallint] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_imports_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[issue_categories]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issue_categories](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[name] [nvarchar](60) NOT NULL,
	[assigned_to_id] [int] NULL,
 CONSTRAINT [PK_issue_categories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[issue_relations]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issue_relations](
	[id] [int]  NOT NULL,
	[issue_from_id] [int] NOT NULL,
	[issue_to_id] [int] NOT NULL,
	[relation_type] [nvarchar](255) NOT NULL,
	[delay] [int] NULL,
 CONSTRAINT [PK_issue_relations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [issue_relations$index_issue_relations_on_issue_from_id_and_issue_to_id] UNIQUE NONCLUSTERED 
(
	[issue_from_id] ASC,
	[issue_to_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[issue_statuses]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issue_statuses](
	[id] [int]  NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[is_closed] [smallint] NOT NULL,
	[position] [int] NULL,
	[default_done_ratio] [int] NULL,
 CONSTRAINT [PK_issue_statuses_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[issues]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issues](
	[id] [int]  NOT NULL,
	[tracker_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[subject] [nvarchar](255) NOT NULL,
	[description] [nvarchar](max) NULL,
	[due_date] [date] NULL,
	[category_id] [int] NULL,
	[status_id] [int] NOT NULL,
	[assigned_to_id] [int] NULL,
	[priority_id] [int] NOT NULL,
	[fixed_version_id] [int] NULL,
	[author_id] [int] NOT NULL,
	[lock_version] [int] NOT NULL,
	[created_on] [datetime] NULL,
	[updated_on] [datetime] NULL,
	[start_date] [date] NULL,
	[done_ratio] [int] NOT NULL,
	[estimated_hours] [real] NULL,
	[parent_id] [int] NULL,
	[root_id] [int] NULL,
	[lft] [int] NULL,
	[rgt] [int] NULL,
	[is_private] [smallint] NOT NULL,
	[closed_on] [datetime2](0) NULL,
 CONSTRAINT [PK_issues_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[journal_details]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[journal_details](
	[id] [int]  NOT NULL,
	[journal_id] [int] NOT NULL,
	[property] [nvarchar](30) NOT NULL,
	[prop_key] [nvarchar](30) NOT NULL,
	[old_value] [nvarchar](max) NULL,
	[value] [nvarchar](max) NULL,
 CONSTRAINT [PK_journal_details_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[journals]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[journals](
	[id] [int]  NOT NULL,
	[journalized_id] [int] NOT NULL,
	[journalized_type] [nvarchar](30) NOT NULL,
	[user_id] [int] NOT NULL,
	[notes] [nvarchar](max) NULL,
	[created_on] [datetime2](0) NOT NULL,
	[private_notes] [smallint] NOT NULL,
 CONSTRAINT [PK_journals_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[member_roles]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[member_roles](
	[id] [int]  NOT NULL,
	[member_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
	[inherited_from] [int] NULL,
 CONSTRAINT [PK_member_roles_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[members]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[members](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[created_on] [datetime] NULL,
	[mail_notification] [smallint] NOT NULL,
 CONSTRAINT [PK_members_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [members$index_members_on_user_id_and_project_id] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[messages]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[messages](
	[id] [int]  NOT NULL,
	[board_id] [int] NOT NULL,
	[parent_id] [int] NULL,
	[subject] [nvarchar](255) NOT NULL,
	[content] [nvarchar](max) NULL,
	[author_id] [int] NULL,
	[replies_count] [int] NOT NULL,
	[last_reply_id] [int] NULL,
	[created_on] [datetime2](0) NOT NULL,
	[updated_on] [datetime2](0) NOT NULL,
	[locked] [smallint] NULL,
	[sticky] [int] NULL,
 CONSTRAINT [PK_messages_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[news]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[news](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[title] [nvarchar](60) NOT NULL,
	[summary] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[author_id] [int] NOT NULL,
	[created_on] [datetime] NULL,
	[comments_count] [int] NOT NULL,
 CONSTRAINT [PK_news_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[open_id_authentication_associations]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[open_id_authentication_associations](
	[id] [int]  NOT NULL,
	[issued] [int] NULL,
	[lifetime] [int] NULL,
	[handle] [nvarchar](255) NULL,
	[assoc_type] [nvarchar](255) NULL,
	[server_url] [varbinary](1024) NULL,
	[secret] [varbinary](1024) NULL,
 CONSTRAINT [PK_open_id_authentication_associations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[open_id_authentication_nonces]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[open_id_authentication_nonces](
	[id] [int]  NOT NULL,
	[timestamp] [int] NOT NULL,
	[server_url] [nvarchar](255) NULL,
	[salt] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_open_id_authentication_nonces_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[projects]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projects](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[description] [nvarchar](max) NULL,
	[homepage] [nvarchar](255) NULL,
	[is_public] [smallint] NOT NULL,
	[parent_id] [int] NULL,
	[created_on] [datetime] NULL,
	[updated_on] [datetime] NULL,
	[identifier] [nvarchar](255) NULL,
	[status] [int] NOT NULL,
	[lft] [int] NULL,
	[rgt] [int] NULL,
	[inherit_members] [smallint] NOT NULL,
	[default_version_id] [int] NULL,
	[default_assigned_to_id] [int] NULL,
 CONSTRAINT [PK_projects_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[projects_trackers]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projects_trackers](
	[project_id] [int] NOT NULL,
	[tracker_id] [int] NOT NULL,
 CONSTRAINT [projects_trackers$projects_trackers_unique] UNIQUE CLUSTERED 
(
	[project_id] ASC,
	[tracker_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[queries]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[queries](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[name] [nvarchar](255) NOT NULL,
	[filters] [nvarchar](max) NULL,
	[user_id] [int] NOT NULL,
	[column_names] [nvarchar](max) NULL,
	[sort_criteria] [nvarchar](max) NULL,
	[group_by] [nvarchar](255) NULL,
	[type] [nvarchar](255) NULL,
	[visibility] [int] NULL,
	[options] [nvarchar](max) NULL,
 CONSTRAINT [PK_queries_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[queries_roles]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[queries_roles](
	[query_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
 CONSTRAINT [queries_roles$queries_roles_ids] UNIQUE CLUSTERED 
(
	[query_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[repositories]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[repositories](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[url] [nvarchar](255) NOT NULL,
	[login] [nvarchar](60) NULL,
	[password] [nvarchar](255) NULL,
	[root_url] [nvarchar](255) NULL,
	[type] [nvarchar](255) NULL,
	[path_encoding] [nvarchar](64) NULL,
	[log_encoding] [nvarchar](64) NULL,
	[extra_info] [nvarchar](max) NULL,
	[identifier] [nvarchar](255) NULL,
	[is_default] [smallint] NULL,
	[created_on] [datetime] NULL,
 CONSTRAINT [PK_repositories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[roles]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[position] [int] NULL,
	[assignable] [smallint] NULL,
	[builtin] [int] NOT NULL,
	[permissions] [nvarchar](max) NULL,
	[issues_visibility] [nvarchar](30) NOT NULL,
	[users_visibility] [nvarchar](30) NOT NULL,
	[time_entries_visibility] [nvarchar](30) NOT NULL,
	[all_roles_managed] [smallint] NOT NULL,
	[settings] [nvarchar](max) NULL,
 CONSTRAINT [PK_roles_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[roles_managed_roles]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[roles_managed_roles](
	[role_id] [int] NOT NULL,
	[managed_role_id] [int] NOT NULL,
 CONSTRAINT [roles_managed_roles$index_roles_managed_roles_on_role_id_and_managed_role_id] UNIQUE CLUSTERED 
(
	[role_id] ASC,
	[managed_role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 10:27:46 ******/
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
/****** Object:  Table [dbo].[settings]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[settings](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[value] [nvarchar](max) NULL,
	[updated_on] [datetime] NULL,
 CONSTRAINT [PK_settings_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[time_entries]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[time_entries](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[author_id] [int] NULL,
	[user_id] [int] NOT NULL,
	[issue_id] [int] NULL,
	[hours] [real] NOT NULL,
	[comments] [nvarchar](1024) NULL,
	[activity_id] [int] NOT NULL,
	[spent_on] [date] NOT NULL,
	[tyear] [int] NOT NULL,
	[tmonth] [int] NOT NULL,
	[tweek] [int] NOT NULL,
	[created_on] [datetime2](0) NOT NULL,
	[updated_on] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_time_entries_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tokens]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tokens](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[action] [nvarchar](30) NOT NULL,
	[value] [nvarchar](40) NOT NULL,
	[created_on] [datetime2](0) NOT NULL,
	[updated_on] [datetime] NULL,
 CONSTRAINT [PK_tokens_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [tokens$tokens_value] UNIQUE NONCLUSTERED 
(
	[value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[trackers]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trackers](
	[id] [int]  NOT NULL,
	[name] [nvarchar](30) NOT NULL,
	[description] [nvarchar](255) NULL,
	[is_in_chlog] [smallint] NOT NULL,
	[position] [int] NULL,
	[is_in_roadmap] [smallint] NOT NULL,
	[fields_bits] [int] NULL,
	[default_status_id] [int] NULL,
 CONSTRAINT [PK_trackers_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_preferences]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_preferences](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[others] [nvarchar](max) NULL,
	[hide_mail] [smallint] NULL,
	[time_zone] [nvarchar](255) NULL,
 CONSTRAINT [PK_user_preferences_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int]  NOT NULL,
	[login] [nvarchar](255) NOT NULL,
	[hashed_password] [nvarchar](40) NOT NULL,
	[firstname] [nvarchar](30) NOT NULL,
	[lastname] [nvarchar](255) NOT NULL,
	[admin] [smallint] NOT NULL,
	[status] [int] NOT NULL,
	[last_login_on] [datetime2](0) NULL,
	[language] [nvarchar](5) NULL,
	[auth_source_id] [int] NULL,
	[created_on] [datetime] NULL,
	[updated_on] [datetime] NULL,
	[type] [nvarchar](255) NULL,
	[identity_url] [nvarchar](255) NULL,
	[mail_notification] [nvarchar](255) NOT NULL,
	[salt] [nvarchar](64) NULL,
	[must_change_passwd] [smallint] NOT NULL,
	[passwd_changed_on] [datetime2](0) NULL,
 CONSTRAINT [PK_users_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[versions]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[versions](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[description] [nvarchar](255) NULL,
	[effective_date] [date] NULL,
	[created_on] [datetime] NULL,
	[updated_on] [datetime] NULL,
	[wiki_page_title] [nvarchar](255) NULL,
	[status] [nvarchar](255) NULL,
	[sharing] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_versions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[watchers]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[watchers](
	[id] [int]  NOT NULL,
	[watchable_type] [nvarchar](255) NOT NULL,
	[watchable_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [PK_watchers_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wiki_content_versions]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wiki_content_versions](
	[id] [int]  NOT NULL,
	[wiki_content_id] [int] NOT NULL,
	[page_id] [int] NOT NULL,
	[author_id] [int] NULL,
	[data] [varbinary](1024) NULL,
	[compression] [nvarchar](6) NULL,
	[comments] [nvarchar](1024) NULL,
	[updated_on] [datetime2](0) NOT NULL,
	[version] [int] NOT NULL,
 CONSTRAINT [PK_wiki_content_versions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wiki_contents]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wiki_contents](
	[id] [int]  NOT NULL,
	[page_id] [int] NOT NULL,
	[author_id] [int] NULL,
	[text] [nvarchar](max) NULL,
	[comments] [nvarchar](1024) NULL,
	[updated_on] [datetime2](0) NOT NULL,
	[version] [int] NOT NULL,
 CONSTRAINT [PK_wiki_contents_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[wiki_pages]    Script Date: 2021/8/5 10:27:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wiki_pages](
	[id] [int]  NOT NULL,
	[wiki_id] [int] NOT NULL,
	[title] [nvarchar](255) NOT NULL,
	[created_on] [datetime2](0) NOT NULL,
	[protected] [smallint] NOT NULL,
	[parent_id] [int] NULL,
 CONSTRAINT [PK_wiki_pages_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wiki_redirects]    Script Date: 2021/8/5 10:27:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wiki_redirects](
	[id] [int]  NOT NULL,
	[wiki_id] [int] NOT NULL,
	[title] [nvarchar](255) NULL,
	[redirects_to] [nvarchar](255) NULL,
	[created_on] [datetime2](0) NOT NULL,
	[redirects_to_wiki_id] [int] NOT NULL,
 CONSTRAINT [PK_wiki_redirects_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wikis]    Script Date: 2021/8/5 10:27:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wikis](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[start_page] [nvarchar](255) NOT NULL,
	[status] [int] NOT NULL,
 CONSTRAINT [PK_wikis_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[workflows]    Script Date: 2021/8/5 10:27:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[workflows](
	[id] [int]  NOT NULL,
	[tracker_id] [int] NOT NULL,
	[old_status_id] [int] NOT NULL,
	[new_status_id] [int] NOT NULL,
	[role_id] [int] NOT NULL,
	[assignee] [smallint] NOT NULL,
	[author] [smallint] NOT NULL,
	[type] [nvarchar](30) NULL,
	[field_name] [nvarchar](30) NULL,
	[rule] [nvarchar](30) NULL,
 CONSTRAINT [PK_workflows_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ar_internal_metadata] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT (NULL) FOR [container_id]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT (NULL) FOR [container_type]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT (N'') FOR [filename]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT (N'') FOR [disk_filename]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT ((0)) FOR [filesize]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT (N'') FOR [content_type]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT (N'') FOR [digest]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT ((0)) FOR [downloads]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT ((0)) FOR [author_id]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT (NULL) FOR [created_on]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[attachments] ADD  DEFAULT (NULL) FOR [disk_directory]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (N'') FOR [type]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (NULL) FOR [host]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (NULL) FOR [port]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (NULL) FOR [account]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (N'') FOR [account_password]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (NULL) FOR [base_dn]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (NULL) FOR [attr_login]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (NULL) FOR [attr_firstname]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (NULL) FOR [attr_lastname]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (NULL) FOR [attr_mail]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT ((0)) FOR [onthefly_register]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT ((0)) FOR [tls]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT (NULL) FOR [timeout]
GO
ALTER TABLE [dbo].[auth_sources] ADD  DEFAULT ((1)) FOR [verify_peer]
GO
ALTER TABLE [dbo].[boards] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[boards] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[boards] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[boards] ADD  DEFAULT ((0)) FOR [topics_count]
GO
ALTER TABLE [dbo].[boards] ADD  DEFAULT ((0)) FOR [messages_count]
GO
ALTER TABLE [dbo].[boards] ADD  DEFAULT (NULL) FOR [last_message_id]
GO
ALTER TABLE [dbo].[boards] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[changes] ADD  DEFAULT (N'') FOR [action]
GO
ALTER TABLE [dbo].[changes] ADD  DEFAULT (NULL) FOR [from_revision]
GO
ALTER TABLE [dbo].[changes] ADD  DEFAULT (NULL) FOR [revision]
GO
ALTER TABLE [dbo].[changes] ADD  DEFAULT (NULL) FOR [branch]
GO
ALTER TABLE [dbo].[changesets] ADD  DEFAULT (NULL) FOR [committer]
GO
ALTER TABLE [dbo].[changesets] ADD  DEFAULT (NULL) FOR [commit_date]
GO
ALTER TABLE [dbo].[changesets] ADD  DEFAULT (NULL) FOR [scmid]
GO
ALTER TABLE [dbo].[changesets] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (N'') FOR [commented_type]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [commented_id]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT ((0)) FOR [author_id]
GO
ALTER TABLE [dbo].[custom_field_enumerations] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[custom_field_enumerations] ADD  DEFAULT ((1)) FOR [position]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT (N'') FOR [type]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT (N'') FOR [field_format]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT (N'') FOR [regexp]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT (NULL) FOR [min_length]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT (NULL) FOR [max_length]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT ((0)) FOR [is_required]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT ((0)) FOR [is_for_all]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT ((0)) FOR [is_filter]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT ((0)) FOR [searchable]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT ((1)) FOR [editable]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT ((1)) FOR [visible]
GO
ALTER TABLE [dbo].[custom_fields] ADD  DEFAULT ((0)) FOR [multiple]
GO
ALTER TABLE [dbo].[custom_fields_projects] ADD  DEFAULT ((0)) FOR [custom_field_id]
GO
ALTER TABLE [dbo].[custom_fields_projects] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[custom_fields_trackers] ADD  DEFAULT ((0)) FOR [custom_field_id]
GO
ALTER TABLE [dbo].[custom_fields_trackers] ADD  DEFAULT ((0)) FOR [tracker_id]
GO
ALTER TABLE [dbo].[custom_values] ADD  DEFAULT (N'') FOR [customized_type]
GO
ALTER TABLE [dbo].[custom_values] ADD  DEFAULT ((0)) FOR [customized_id]
GO
ALTER TABLE [dbo].[custom_values] ADD  DEFAULT ((0)) FOR [custom_field_id]
GO
ALTER TABLE [dbo].[documents] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[documents] ADD  DEFAULT ((0)) FOR [category_id]
GO
ALTER TABLE [dbo].[documents] ADD  DEFAULT (N'') FOR [title]
GO
ALTER TABLE [dbo].[documents] ADD  DEFAULT (NULL) FOR [created_on]
GO
ALTER TABLE [dbo].[email_addresses] ADD  DEFAULT ((0)) FOR [is_default]
GO
ALTER TABLE [dbo].[email_addresses] ADD  DEFAULT ((1)) FOR [notify]
GO
ALTER TABLE [dbo].[enabled_modules] ADD  DEFAULT (NULL) FOR [project_id]
GO
ALTER TABLE [dbo].[enumerations] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[enumerations] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[enumerations] ADD  DEFAULT ((0)) FOR [is_default]
GO
ALTER TABLE [dbo].[enumerations] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[enumerations] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[enumerations] ADD  DEFAULT (NULL) FOR [project_id]
GO
ALTER TABLE [dbo].[enumerations] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[enumerations] ADD  DEFAULT (NULL) FOR [position_name]
GO
ALTER TABLE [dbo].[import_items] ADD  DEFAULT (NULL) FOR [obj_id]
GO
ALTER TABLE [dbo].[import_items] ADD  DEFAULT (NULL) FOR [unique_id]
GO
ALTER TABLE [dbo].[imports] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[imports] ADD  DEFAULT (NULL) FOR [filename]
GO
ALTER TABLE [dbo].[imports] ADD  DEFAULT (NULL) FOR [total_items]
GO
ALTER TABLE [dbo].[imports] ADD  DEFAULT ((0)) FOR [finished]
GO
ALTER TABLE [dbo].[issue_categories] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[issue_categories] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[issue_categories] ADD  DEFAULT (NULL) FOR [assigned_to_id]
GO
ALTER TABLE [dbo].[issue_relations] ADD  DEFAULT (N'') FOR [relation_type]
GO
ALTER TABLE [dbo].[issue_relations] ADD  DEFAULT (NULL) FOR [delay]
GO
ALTER TABLE [dbo].[issue_statuses] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[issue_statuses] ADD  DEFAULT ((0)) FOR [is_closed]
GO
ALTER TABLE [dbo].[issue_statuses] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[issue_statuses] ADD  DEFAULT (NULL) FOR [default_done_ratio]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (N'') FOR [subject]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [due_date]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [category_id]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [assigned_to_id]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [fixed_version_id]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT ((0)) FOR [lock_version]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [created_on]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [updated_on]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [start_date]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT ((0)) FOR [done_ratio]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [estimated_hours]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [root_id]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [lft]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [rgt]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT ((0)) FOR [is_private]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT (NULL) FOR [closed_on]
GO
ALTER TABLE [dbo].[journal_details] ADD  DEFAULT ((0)) FOR [journal_id]
GO
ALTER TABLE [dbo].[journal_details] ADD  DEFAULT (N'') FOR [property]
GO
ALTER TABLE [dbo].[journal_details] ADD  DEFAULT (N'') FOR [prop_key]
GO
ALTER TABLE [dbo].[journals] ADD  DEFAULT ((0)) FOR [journalized_id]
GO
ALTER TABLE [dbo].[journals] ADD  DEFAULT (N'') FOR [journalized_type]
GO
ALTER TABLE [dbo].[journals] ADD  DEFAULT ((0)) FOR [user_id]
GO
ALTER TABLE [dbo].[journals] ADD  DEFAULT ((0)) FOR [private_notes]
GO
ALTER TABLE [dbo].[member_roles] ADD  DEFAULT (NULL) FOR [inherited_from]
GO
ALTER TABLE [dbo].[members] ADD  DEFAULT ((0)) FOR [user_id]
GO
ALTER TABLE [dbo].[members] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[members] ADD  DEFAULT (NULL) FOR [created_on]
GO
ALTER TABLE [dbo].[members] ADD  DEFAULT ((0)) FOR [mail_notification]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT (N'') FOR [subject]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT (NULL) FOR [author_id]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT ((0)) FOR [replies_count]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT (NULL) FOR [last_reply_id]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT ((0)) FOR [locked]
GO
ALTER TABLE [dbo].[messages] ADD  DEFAULT ((0)) FOR [sticky]
GO
ALTER TABLE [dbo].[news] ADD  DEFAULT (NULL) FOR [project_id]
GO
ALTER TABLE [dbo].[news] ADD  DEFAULT (N'') FOR [title]
GO
ALTER TABLE [dbo].[news] ADD  DEFAULT (N'') FOR [summary]
GO
ALTER TABLE [dbo].[news] ADD  DEFAULT ((0)) FOR [author_id]
GO
ALTER TABLE [dbo].[news] ADD  DEFAULT (NULL) FOR [created_on]
GO
ALTER TABLE [dbo].[news] ADD  DEFAULT ((0)) FOR [comments_count]
GO
ALTER TABLE [dbo].[open_id_authentication_associations] ADD  DEFAULT (NULL) FOR [issued]
GO
ALTER TABLE [dbo].[open_id_authentication_associations] ADD  DEFAULT (NULL) FOR [lifetime]
GO
ALTER TABLE [dbo].[open_id_authentication_associations] ADD  DEFAULT (NULL) FOR [handle]
GO
ALTER TABLE [dbo].[open_id_authentication_associations] ADD  DEFAULT (NULL) FOR [assoc_type]
GO
ALTER TABLE [dbo].[open_id_authentication_nonces] ADD  DEFAULT (NULL) FOR [server_url]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (N'') FOR [homepage]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((1)) FOR [is_public]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [created_on]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [updated_on]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [identifier]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [lft]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [rgt]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [inherit_members]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [default_version_id]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT (NULL) FOR [default_assigned_to_id]
GO
ALTER TABLE [dbo].[projects_trackers] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[projects_trackers] ADD  DEFAULT ((0)) FOR [tracker_id]
GO
ALTER TABLE [dbo].[queries] ADD  DEFAULT (NULL) FOR [project_id]
GO
ALTER TABLE [dbo].[queries] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[queries] ADD  DEFAULT ((0)) FOR [user_id]
GO
ALTER TABLE [dbo].[queries] ADD  DEFAULT (NULL) FOR [group_by]
GO
ALTER TABLE [dbo].[queries] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[queries] ADD  DEFAULT ((0)) FOR [visibility]
GO
ALTER TABLE [dbo].[repositories] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[repositories] ADD  DEFAULT (N'') FOR [url]
GO
ALTER TABLE [dbo].[repositories] ADD  DEFAULT (N'') FOR [login]
GO
ALTER TABLE [dbo].[repositories] ADD  DEFAULT (N'') FOR [password]
GO
ALTER TABLE [dbo].[repositories] ADD  DEFAULT (N'') FOR [root_url]
GO
ALTER TABLE [dbo].[repositories] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[repositories] ADD  DEFAULT (NULL) FOR [path_encoding]
GO
ALTER TABLE [dbo].[repositories] ADD  DEFAULT (NULL) FOR [log_encoding]
GO
ALTER TABLE [dbo].[repositories] ADD  DEFAULT (NULL) FOR [identifier]
GO
ALTER TABLE [dbo].[repositories] ADD  DEFAULT ((0)) FOR [is_default]
GO
ALTER TABLE [dbo].[repositories] ADD  DEFAULT (NULL) FOR [created_on]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT ((1)) FOR [assignable]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT ((0)) FOR [builtin]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (N'default') FOR [issues_visibility]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (N'all') FOR [users_visibility]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT (N'all') FOR [time_entries_visibility]
GO
ALTER TABLE [dbo].[roles] ADD  DEFAULT ((1)) FOR [all_roles_managed]
GO
ALTER TABLE [dbo].[settings] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[settings] ADD  DEFAULT (NULL) FOR [updated_on]
GO
ALTER TABLE [dbo].[time_entries] ADD  DEFAULT (NULL) FOR [author_id]
GO
ALTER TABLE [dbo].[time_entries] ADD  DEFAULT (NULL) FOR [issue_id]
GO
ALTER TABLE [dbo].[time_entries] ADD  DEFAULT (NULL) FOR [comments]
GO
ALTER TABLE [dbo].[tokens] ADD  DEFAULT ((0)) FOR [user_id]
GO
ALTER TABLE [dbo].[tokens] ADD  DEFAULT (N'') FOR [action]
GO
ALTER TABLE [dbo].[tokens] ADD  DEFAULT (N'') FOR [value]
GO
ALTER TABLE [dbo].[tokens] ADD  DEFAULT (NULL) FOR [updated_on]
GO
ALTER TABLE [dbo].[trackers] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[trackers] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[trackers] ADD  DEFAULT ((0)) FOR [is_in_chlog]
GO
ALTER TABLE [dbo].[trackers] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[trackers] ADD  DEFAULT ((1)) FOR [is_in_roadmap]
GO
ALTER TABLE [dbo].[trackers] ADD  DEFAULT ((0)) FOR [fields_bits]
GO
ALTER TABLE [dbo].[trackers] ADD  DEFAULT (NULL) FOR [default_status_id]
GO
ALTER TABLE [dbo].[user_preferences] ADD  DEFAULT ((0)) FOR [user_id]
GO
ALTER TABLE [dbo].[user_preferences] ADD  DEFAULT ((1)) FOR [hide_mail]
GO
ALTER TABLE [dbo].[user_preferences] ADD  DEFAULT (NULL) FOR [time_zone]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [login]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [hashed_password]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [firstname]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [lastname]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [admin]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [last_login_on]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [language]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [auth_source_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [created_on]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [updated_on]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [identity_url]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [mail_notification]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [salt]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [must_change_passwd]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [passwd_changed_on]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT ((0)) FOR [project_id]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (N'') FOR [description]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [effective_date]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [created_on]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [updated_on]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [wiki_page_title]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (N'open') FOR [status]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (N'none') FOR [sharing]
GO
ALTER TABLE [dbo].[watchers] ADD  DEFAULT (N'') FOR [watchable_type]
GO
ALTER TABLE [dbo].[watchers] ADD  DEFAULT ((0)) FOR [watchable_id]
GO
ALTER TABLE [dbo].[watchers] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[wiki_content_versions] ADD  DEFAULT (NULL) FOR [author_id]
GO
ALTER TABLE [dbo].[wiki_content_versions] ADD  DEFAULT (N'') FOR [compression]
GO
ALTER TABLE [dbo].[wiki_content_versions] ADD  DEFAULT (N'') FOR [comments]
GO
ALTER TABLE [dbo].[wiki_contents] ADD  DEFAULT (NULL) FOR [author_id]
GO
ALTER TABLE [dbo].[wiki_contents] ADD  DEFAULT (N'') FOR [comments]
GO
ALTER TABLE [dbo].[wiki_pages] ADD  DEFAULT ((0)) FOR [protected]
GO
ALTER TABLE [dbo].[wiki_pages] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[wiki_redirects] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[wiki_redirects] ADD  DEFAULT (NULL) FOR [redirects_to]
GO
ALTER TABLE [dbo].[wikis] ADD  DEFAULT ((1)) FOR [status]
GO
ALTER TABLE [dbo].[workflows] ADD  DEFAULT ((0)) FOR [tracker_id]
GO
ALTER TABLE [dbo].[workflows] ADD  DEFAULT ((0)) FOR [old_status_id]
GO
ALTER TABLE [dbo].[workflows] ADD  DEFAULT ((0)) FOR [new_status_id]
GO
ALTER TABLE [dbo].[workflows] ADD  DEFAULT ((0)) FOR [role_id]
GO
ALTER TABLE [dbo].[workflows] ADD  DEFAULT ((0)) FOR [assignee]
GO
ALTER TABLE [dbo].[workflows] ADD  DEFAULT ((0)) FOR [author]
GO
ALTER TABLE [dbo].[workflows] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[workflows] ADD  DEFAULT (NULL) FOR [field_name]
GO
ALTER TABLE [dbo].[workflows] ADD  DEFAULT (NULL) FOR [rule]
GO
ALTER TABLE [dbo].[changesets_issues]  WITH NOCHECK ADD  CONSTRAINT [FK_changesets_issues_issues] FOREIGN KEY([issue_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[changesets_issues] CHECK CONSTRAINT [FK_changesets_issues_issues]
GO
ALTER TABLE [dbo].[projects_trackers]  WITH NOCHECK ADD  CONSTRAINT [FK_projects_trackers_trackers] FOREIGN KEY([tracker_id])
REFERENCES [dbo].[trackers] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[projects_trackers] CHECK CONSTRAINT [FK_projects_trackers_trackers]
GO
ALTER TABLE [dbo].[roles_managed_roles]  WITH NOCHECK ADD  CONSTRAINT [roles_managed_roles_roles_id_fk] FOREIGN KEY([managed_role_id])
REFERENCES [dbo].[roles] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[roles_managed_roles] CHECK CONSTRAINT [roles_managed_roles_roles_id_fk]
GO
ALTER TABLE [dbo].[watchers]  WITH NOCHECK ADD  CONSTRAINT [FK_watchers_users] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[watchers] CHECK CONSTRAINT [FK_watchers_users]
GO
