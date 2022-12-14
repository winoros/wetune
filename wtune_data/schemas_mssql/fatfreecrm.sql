-- USE [fatfreecrm_base]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [FK_taggings_tags]
GO
ALTER TABLE [dbo].[groups_users] DROP CONSTRAINT [FK_groups_users_groups]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__transa__6D9742D9]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__relate__6CA31EA0]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__relate__6BAEFA67]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__create__6ABAD62E]
GO
ALTER TABLE [dbo].[versions] DROP CONSTRAINT [DF__versions__whodun__69C6B1F5]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__confirmat__68D28DBC]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__confirmed__67DE6983]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__confirmat__66EA454A]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__authentic__65F62111]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__remember___6501FCD8]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__remember___640DD89F]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__reset_pas__6319B466]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__reset_pas__6225902D]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__unconfirm__61316BF4]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__suspended__603D47BB]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__admin__5F492382]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__updated_a__5E54FF49]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__created_a__5D60DB10]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__deleted_a__5C6CB6D7]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__sign_in_c__5B78929E]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__current_s__5A846E65]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__last_sign__59904A2C]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__current_s__589C25F3]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__last_sign__57A801BA]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__password___56B3DD81]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__encrypted__55BFB948]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__skype__54CB950F]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__google__53D770D6]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__yahoo__52E34C9D]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__aim__51EF2864]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__mobile__50FB042B]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__phone__5006DFF2]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__alt_email__4F12BBB9]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__company__4E1E9780]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__title__4D2A7347]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__last_name__4C364F0E]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__first_nam__4B422AD5]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__email__4A4E069C]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__username__4959E263]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__backgroun__4865BE2A]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__updated_a__477199F1]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__created_a__467D75B8]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__deleted_a__4589517F]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__completed__44952D46]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__due_at__43A1090D]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__bucket__42ACE4D4]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__category__41B8C09B]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__priority__40C49C62]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__asset_id__3FD07829]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__asset_typ__3EDC53F0]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__name__3DE82FB7]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__completed__3CF40B7E]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__assigned___3BFFE745]
GO
ALTER TABLE [dbo].[tasks] DROP CONSTRAINT [DF__tasks__user_id__3B0BC30C]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__taggings_c__3A179ED3]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__name__39237A9A]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__create__382F5661]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__contex__373B3228]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__taggab__36470DEF]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__tagger__3552E9B6]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__tagger__345EC57D]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__taggab__336AA144]
GO
ALTER TABLE [dbo].[taggings] DROP CONSTRAINT [DF__taggings__tag_id__32767D0B]
GO
ALTER TABLE [dbo].[settings] DROP CONSTRAINT [DF__settings__update__318258D2]
GO
ALTER TABLE [dbo].[settings] DROP CONSTRAINT [DF__settings__create__308E3499]
GO
ALTER TABLE [dbo].[settings] DROP CONSTRAINT [DF__settings__name__2F9A1060]
GO
ALTER TABLE [dbo].[sessions] DROP CONSTRAINT [DF__sessions__update__2EA5EC27]
GO
ALTER TABLE [dbo].[sessions] DROP CONSTRAINT [DF__sessions__create__2DB1C7EE]
GO
ALTER TABLE [dbo].[preferences] DROP CONSTRAINT [DF__preferenc__updat__2CBDA3B5]
GO
ALTER TABLE [dbo].[preferences] DROP CONSTRAINT [DF__preferenc__creat__2BC97F7C]
GO
ALTER TABLE [dbo].[preferences] DROP CONSTRAINT [DF__preference__name__2AD55B43]
GO
ALTER TABLE [dbo].[preferences] DROP CONSTRAINT [DF__preferenc__user___29E1370A]
GO
ALTER TABLE [dbo].[permissions] DROP CONSTRAINT [DF__permissio__group__28ED12D1]
GO
ALTER TABLE [dbo].[permissions] DROP CONSTRAINT [DF__permissio__updat__27F8EE98]
GO
ALTER TABLE [dbo].[permissions] DROP CONSTRAINT [DF__permissio__creat__2704CA5F]
GO
ALTER TABLE [dbo].[permissions] DROP CONSTRAINT [DF__permissio__asset__2610A626]
GO
ALTER TABLE [dbo].[permissions] DROP CONSTRAINT [DF__permissio__asset__251C81ED]
GO
ALTER TABLE [dbo].[permissions] DROP CONSTRAINT [DF__permissio__user___24285DB4]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__backg__2334397B]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__updat__22401542]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__creat__214BF109]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__delet__2057CCD0]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__close__1F63A897]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__disco__1E6F845E]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__amoun__1D7B6025]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__proba__1C873BEC]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__stage__1B9317B3]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__sourc__1A9EF37A]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__acces__19AACF41]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportunit__name__18B6AB08]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__assig__17C286CF]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__campa__16CE6296]
GO
ALTER TABLE [dbo].[opportunities] DROP CONSTRAINT [DF__opportuni__user___15DA3E5D]
GO
ALTER TABLE [dbo].[lists] DROP CONSTRAINT [DF__lists__user_id__14E61A24]
GO
ALTER TABLE [dbo].[lists] DROP CONSTRAINT [DF__lists__updated_a__13F1F5EB]
GO
ALTER TABLE [dbo].[lists] DROP CONSTRAINT [DF__lists__created_a__12FDD1B2]
GO
ALTER TABLE [dbo].[lists] DROP CONSTRAINT [DF__lists__name__1209AD79]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__skype__11158940]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__backgroun__10216507]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__updated_a__0F2D40CE]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__created_a__0E391C95]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__deleted_a__0D44F85C]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__do_not_ca__0C50D423]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__rating__0B5CAFEA]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__twitter__0A688BB1]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__facebook__09746778]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__linkedin__0880433F]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__blog__078C1F06]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__mobile__0697FACD]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__phone__05A3D694]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__alt_email__04AFB25B]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__email__03BB8E22]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__referred___02C769E9]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__status__01D345B0]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__source__00DF2177]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__company__7FEAFD3E]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__title__7EF6D905]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__access__7E02B4CC]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__last_name__7D0E9093]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__first_nam__7C1A6C5A]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__assigned___7B264821]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__campaign___7A3223E8]
GO
ALTER TABLE [dbo].[leads] DROP CONSTRAINT [DF__leads__user_id__793DFFAF]
GO
ALTER TABLE [dbo].[groups_users] DROP CONSTRAINT [DF__groups_us__user___7849DB76]
GO
ALTER TABLE [dbo].[groups_users] DROP CONSTRAINT [DF__groups_us__group__7755B73D]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__updated___76619304]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__created___756D6ECB]
GO
ALTER TABLE [dbo].[groups] DROP CONSTRAINT [DF__groups__name__74794A92]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__minlengt__73852659]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__pair_id__72910220]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__updated___719CDDE7]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__created___70A8B9AE]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__maxlengt__6FB49575]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__required__6EC0713C]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__disabled__6DCC4D03]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__as__6CD828CA]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__placehol__6BE40491]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__hint__6AEFE058]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__label__69FBBC1F]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__name__690797E6]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__position__681373AD]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__field_gr__671F4F74]
GO
ALTER TABLE [dbo].[fields] DROP CONSTRAINT [DF__fields__type__662B2B3B]
GO
ALTER TABLE [dbo].[field_groups] DROP CONSTRAINT [DF__field_gro__klass__65370702]
GO
ALTER TABLE [dbo].[field_groups] DROP CONSTRAINT [DF__field_gro__tag_i__6442E2C9]
GO
ALTER TABLE [dbo].[field_groups] DROP CONSTRAINT [DF__field_gro__updat__634EBE90]
GO
ALTER TABLE [dbo].[field_groups] DROP CONSTRAINT [DF__field_gro__creat__625A9A57]
GO
ALTER TABLE [dbo].[field_groups] DROP CONSTRAINT [DF__field_grou__hint__6166761E]
GO
ALTER TABLE [dbo].[field_groups] DROP CONSTRAINT [DF__field_gro__posit__607251E5]
GO
ALTER TABLE [dbo].[field_groups] DROP CONSTRAINT [DF__field_gro__label__5F7E2DAC]
GO
ALTER TABLE [dbo].[field_groups] DROP CONSTRAINT [DF__field_grou__name__5E8A0973]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__state__5D95E53A]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__updated___5CA1C101]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__created___5BAD9CC8]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__deleted___5AB9788F]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__received__59C55456]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__sent_at__58D1301D]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__subject__57DD0BE4]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__bcc__56E8E7AB]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__cc__55F4C372]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__mediator__55009F39]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__mediator__540C7B00]
GO
ALTER TABLE [dbo].[emails] DROP CONSTRAINT [DF__emails__user_id__531856C7]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__skype__5224328E]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__backgr__51300E55]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__update__503BEA1C]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__create__4F47C5E3]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__delete__4E53A1AA]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__do_not__4D5F7D71]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__born_o__4C6B5938]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__twitte__4B7734FF]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__facebo__4A8310C6]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__linked__498EEC8D]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__blog__489AC854]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__fax__47A6A41B]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__mobile__46B27FE2]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__phone__45BE5BA9]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__alt_em__44CA3770]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__email__43D61337]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__source__42E1EEFE]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__depart__41EDCAC5]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__title__40F9A68C]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__access__40058253]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__last_n__3F115E1A]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__first___3E1D39E1]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__report__3D2915A8]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__assign__3C34F16F]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__lead_i__3B40CD36]
GO
ALTER TABLE [dbo].[contacts] DROP CONSTRAINT [DF__contacts__user_i__3A4CA8FD]
GO
ALTER TABLE [dbo].[contact_opportunities] DROP CONSTRAINT [DF__contact_o__updat__395884C4]
GO
ALTER TABLE [dbo].[contact_opportunities] DROP CONSTRAINT [DF__contact_o__creat__3864608B]
GO
ALTER TABLE [dbo].[contact_opportunities] DROP CONSTRAINT [DF__contact_o__delet__37703C52]
GO
ALTER TABLE [dbo].[contact_opportunities] DROP CONSTRAINT [DF__contact_op__role__367C1819]
GO
ALTER TABLE [dbo].[contact_opportunities] DROP CONSTRAINT [DF__contact_o__oppor__3587F3E0]
GO
ALTER TABLE [dbo].[contact_opportunities] DROP CONSTRAINT [DF__contact_o__conta__3493CFA7]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__state__339FAB6E]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__update__32AB8735]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__create__31B762FC]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__title__30C33EC3]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__privat__2FCF1A8A]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__commen__2EDAF651]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__commen__2DE6D218]
GO
ALTER TABLE [dbo].[comments] DROP CONSTRAINT [DF__comments__user_i__2CF2ADDF]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__backg__2BFE89A6]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__updat__2B0A656D]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__creat__2A164134]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__delet__29221CFB]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__ends___282DF8C2]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__start__2739D489]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__reven__2645B050]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__oppor__25518C17]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__leads__245D67DE]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__targe__236943A5]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__targe__22751F6C]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__targe__2180FB33]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__budge__208CD6FA]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__statu__1F98B2C1]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__acces__1EA48E88]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__name__1DB06A4F]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__assig__1CBC4616]
GO
ALTER TABLE [dbo].[campaigns] DROP CONSTRAINT [DF__campaigns__user___1BC821DD]
GO
ALTER TABLE [dbo].[avatars] DROP CONSTRAINT [DF__avatars__updated__1AD3FDA4]
GO
ALTER TABLE [dbo].[avatars] DROP CONSTRAINT [DF__avatars__created__19DFD96B]
GO
ALTER TABLE [dbo].[avatars] DROP CONSTRAINT [DF__avatars__image_c__18EBB532]
GO
ALTER TABLE [dbo].[avatars] DROP CONSTRAINT [DF__avatars__image_f__17F790F9]
GO
ALTER TABLE [dbo].[avatars] DROP CONSTRAINT [DF__avatars__image_f__17036CC0]
GO
ALTER TABLE [dbo].[avatars] DROP CONSTRAINT [DF__avatars__entity___160F4887]
GO
ALTER TABLE [dbo].[avatars] DROP CONSTRAINT [DF__avatars__entity___151B244E]
GO
ALTER TABLE [dbo].[avatars] DROP CONSTRAINT [DF__avatars__user_id__14270015]
GO
ALTER TABLE [dbo].[ar_internal_metadata] DROP CONSTRAINT [DF__ar_intern__value__1332DBDC]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__delet__123EB7A3]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__updat__114A936A]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__creat__10566F31]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__addre__0F624AF8]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__addre__0E6E26BF]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__addre__0D7A0286]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__full___0C85DE4D]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__count__0B91BA14]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__zipco__0A9D95DB]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__state__09A971A2]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__city__08B54D69]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__stree__07C12930]
GO
ALTER TABLE [dbo].[addresses] DROP CONSTRAINT [DF__addresses__stree__06CD04F7]
GO
ALTER TABLE [dbo].[activities] DROP CONSTRAINT [DF__activitie__updat__05D8E0BE]
GO
ALTER TABLE [dbo].[activities] DROP CONSTRAINT [DF__activitie__creat__04E4BC85]
GO
ALTER TABLE [dbo].[activities] DROP CONSTRAINT [DF__activitie__priva__03F0984C]
GO
ALTER TABLE [dbo].[activities] DROP CONSTRAINT [DF__activities__info__02FC7413]
GO
ALTER TABLE [dbo].[activities] DROP CONSTRAINT [DF__activitie__actio__02084FDA]
GO
ALTER TABLE [dbo].[activities] DROP CONSTRAINT [DF__activitie__subje__01142BA1]
GO
ALTER TABLE [dbo].[activities] DROP CONSTRAINT [DF__activitie__subje__00200768]
GO
ALTER TABLE [dbo].[activities] DROP CONSTRAINT [DF__activitie__user___7F2BE32F]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__opport__7E37BEF6]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__contac__7D439ABD]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__catego__7C4F7684]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__rating__7B5B524B]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__backgr__7A672E12]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__email__797309D9]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__update__787EE5A0]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__create__778AC167]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__delete__76969D2E]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__fax__75A278F5]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__phone__74AE54BC]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__toll_f__73BA3083]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__websit__72C60C4A]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__access__71D1E811]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__name__70DDC3D8]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__assign__6FE99F9F]
GO
ALTER TABLE [dbo].[accounts] DROP CONSTRAINT [DF__accounts__user_i__6EF57B66]
GO
ALTER TABLE [dbo].[account_opportunities] DROP CONSTRAINT [DF__account_o__updat__6E01572D]
GO
ALTER TABLE [dbo].[account_opportunities] DROP CONSTRAINT [DF__account_o__creat__6D0D32F4]
GO
ALTER TABLE [dbo].[account_opportunities] DROP CONSTRAINT [DF__account_o__delet__6C190EBB]
GO
ALTER TABLE [dbo].[account_opportunities] DROP CONSTRAINT [DF__account_o__oppor__6B24EA82]
GO
ALTER TABLE [dbo].[account_opportunities] DROP CONSTRAINT [DF__account_o__accou__6A30C649]
GO
ALTER TABLE [dbo].[account_contacts] DROP CONSTRAINT [DF__account_c__updat__693CA210]
GO
ALTER TABLE [dbo].[account_contacts] DROP CONSTRAINT [DF__account_c__creat__68487DD7]
GO
ALTER TABLE [dbo].[account_contacts] DROP CONSTRAINT [DF__account_c__delet__6754599E]
GO
ALTER TABLE [dbo].[account_contacts] DROP CONSTRAINT [DF__account_c__conta__66603565]
GO
ALTER TABLE [dbo].[account_contacts] DROP CONSTRAINT [DF__account_c__accou__656C112C]
GO
/****** Object:  Table [dbo].[versions]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[versions]') AND type in (N'U'))
DROP TABLE [dbo].[versions]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[tasks]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tasks]') AND type in (N'U'))
DROP TABLE [dbo].[tasks]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tags]') AND type in (N'U'))
DROP TABLE [dbo].[tags]
GO
/****** Object:  Table [dbo].[taggings]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[taggings]') AND type in (N'U'))
DROP TABLE [dbo].[taggings]
GO
/****** Object:  Table [dbo].[settings]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[settings]') AND type in (N'U'))
DROP TABLE [dbo].[settings]
GO
/****** Object:  Table [dbo].[sessions]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sessions]') AND type in (N'U'))
DROP TABLE [dbo].[sessions]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schema_migrations]') AND type in (N'U'))
DROP TABLE [dbo].[schema_migrations]
GO
/****** Object:  Table [dbo].[preferences]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[preferences]') AND type in (N'U'))
DROP TABLE [dbo].[preferences]
GO
/****** Object:  Table [dbo].[permissions]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permissions]') AND type in (N'U'))
DROP TABLE [dbo].[permissions]
GO
/****** Object:  Table [dbo].[opportunities]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[opportunities]') AND type in (N'U'))
DROP TABLE [dbo].[opportunities]
GO
/****** Object:  Table [dbo].[lists]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lists]') AND type in (N'U'))
DROP TABLE [dbo].[lists]
GO
/****** Object:  Table [dbo].[leads]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[leads]') AND type in (N'U'))
DROP TABLE [dbo].[leads]
GO
/****** Object:  Table [dbo].[groups_users]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[groups_users]') AND type in (N'U'))
DROP TABLE [dbo].[groups_users]
GO
/****** Object:  Table [dbo].[groups]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[groups]') AND type in (N'U'))
DROP TABLE [dbo].[groups]
GO
/****** Object:  Table [dbo].[fields]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fields]') AND type in (N'U'))
DROP TABLE [dbo].[fields]
GO
/****** Object:  Table [dbo].[field_groups]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[field_groups]') AND type in (N'U'))
DROP TABLE [dbo].[field_groups]
GO
/****** Object:  Table [dbo].[emails]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emails]') AND type in (N'U'))
DROP TABLE [dbo].[emails]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contacts]') AND type in (N'U'))
DROP TABLE [dbo].[contacts]
GO
/****** Object:  Table [dbo].[contact_opportunities]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[contact_opportunities]') AND type in (N'U'))
DROP TABLE [dbo].[contact_opportunities]
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[comments]') AND type in (N'U'))
DROP TABLE [dbo].[comments]
GO
/****** Object:  Table [dbo].[campaigns]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[campaigns]') AND type in (N'U'))
DROP TABLE [dbo].[campaigns]
GO
/****** Object:  Table [dbo].[avatars]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[avatars]') AND type in (N'U'))
DROP TABLE [dbo].[avatars]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ar_internal_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[ar_internal_metadata]
GO
/****** Object:  Table [dbo].[addresses]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[addresses]') AND type in (N'U'))
DROP TABLE [dbo].[addresses]
GO
/****** Object:  Table [dbo].[activities]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[activities]') AND type in (N'U'))
DROP TABLE [dbo].[activities]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[accounts]') AND type in (N'U'))
DROP TABLE [dbo].[accounts]
GO
/****** Object:  Table [dbo].[account_opportunities]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[account_opportunities]') AND type in (N'U'))
DROP TABLE [dbo].[account_opportunities]
GO
/****** Object:  Table [dbo].[account_contacts]    Script Date: 2021/8/5 10:04:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[account_contacts]') AND type in (N'U'))
DROP TABLE [dbo].[account_contacts]
GO
/****** Object:  Table [dbo].[account_contacts]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_contacts](
	[id] [int]  NOT NULL,
	[account_id] [int] NULL,
	[contact_id] [int] NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_account_contacts_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[account_opportunities]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[account_opportunities](
	[id] [int]  NOT NULL,
	[account_id] [int] NULL,
	[opportunity_id] [int] NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_account_opportunities_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[accounts]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[accounts](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[assigned_to] [int] NULL,
	[name] [nvarchar](64) NOT NULL,
	[access] [nvarchar](8) NULL,
	[website] [nvarchar](64) NULL,
	[toll_free_phone] [nvarchar](32) NULL,
	[phone] [nvarchar](32) NULL,
	[fax] [nvarchar](32) NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[email] [nvarchar](254) NULL,
	[background_info] [nvarchar](255) NULL,
	[rating] [int] NOT NULL,
	[category] [nvarchar](32) NULL,
	[subscribed_users] [nvarchar](max) NULL,
	[contacts_count] [int] NULL,
	[opportunities_count] [int] NULL,
 CONSTRAINT [PK_accounts_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [accounts$index_accounts_on_user_id_and_name_and_deleted_at] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[name] ASC,
	[deleted_at] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[activities]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[activities](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[subject_type] [nvarchar](255) NULL,
	[subject_id] [int] NULL,
	[action] [nvarchar](32) NULL,
	[info] [nvarchar](255) NULL,
	[private] [smallint] NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_activities_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[addresses]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[addresses](
	[id] [int]  NOT NULL,
	[street1] [nvarchar](255) NULL,
	[street2] [nvarchar](255) NULL,
	[city] [nvarchar](64) NULL,
	[state] [nvarchar](64) NULL,
	[zipcode] [nvarchar](16) NULL,
	[country] [nvarchar](64) NULL,
	[full_address] [nvarchar](255) NULL,
	[address_type] [nvarchar](16) NULL,
	[addressable_type] [nvarchar](255) NULL,
	[addressable_id] [int] NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_addresses_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 10:04:36 ******/
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
/****** Object:  Table [dbo].[avatars]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[avatars](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[entity_type] [nvarchar](255) NULL,
	[entity_id] [int] NULL,
	[image_file_size] [int] NULL,
	[image_file_name] [nvarchar](255) NULL,
	[image_content_type] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_avatars_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[campaigns]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[campaigns](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[assigned_to] [int] NULL,
	[name] [nvarchar](64) NOT NULL,
	[access] [nvarchar](8) NULL,
	[status] [nvarchar](64) NULL,
	[budget] [decimal](12, 2) NULL,
	[target_leads] [int] NULL,
	[target_conversion] [real] NULL,
	[target_revenue] [decimal](12, 2) NULL,
	[leads_count] [int] NULL,
	[opportunities_count] [int] NULL,
	[revenue] [decimal](12, 2) NULL,
	[starts_on] [date] NULL,
	[ends_on] [date] NULL,
	[objectives] [nvarchar](max) NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[background_info] [nvarchar](255) NULL,
	[subscribed_users] [nvarchar](max) NULL,
 CONSTRAINT [PK_campaigns_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [campaigns$index_campaigns_on_user_id_and_name_and_deleted_at] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[name] ASC,
	[deleted_at] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[comments]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[comments](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[commentable_type] [nvarchar](255) NULL,
	[commentable_id] [int] NULL,
	[private] [smallint] NULL,
	[title] [nvarchar](255) NULL,
	[comment] [nvarchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[state] [nvarchar](16) NOT NULL,
 CONSTRAINT [PK_comments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[contact_opportunities]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact_opportunities](
	[id] [int]  NOT NULL,
	[contact_id] [int] NULL,
	[opportunity_id] [int] NULL,
	[role] [nvarchar](32) NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_contact_opportunities_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[contacts]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contacts](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[lead_id] [int] NULL,
	[assigned_to] [int] NULL,
	[reports_to] [int] NULL,
	[first_name] [nvarchar](64) NOT NULL,
	[last_name] [nvarchar](64) NOT NULL,
	[access] [nvarchar](8) NULL,
	[title] [nvarchar](64) NULL,
	[department] [nvarchar](64) NULL,
	[source] [nvarchar](32) NULL,
	[email] [nvarchar](254) NULL,
	[alt_email] [nvarchar](254) NULL,
	[phone] [nvarchar](32) NULL,
	[mobile] [nvarchar](32) NULL,
	[fax] [nvarchar](32) NULL,
	[blog] [nvarchar](128) NULL,
	[linkedin] [nvarchar](128) NULL,
	[facebook] [nvarchar](128) NULL,
	[twitter] [nvarchar](128) NULL,
	[born_on] [date] NULL,
	[do_not_call] [smallint] NOT NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[background_info] [nvarchar](255) NULL,
	[skype] [nvarchar](128) NULL,
	[subscribed_users] [nvarchar](max) NULL,
 CONSTRAINT [PK_contacts_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [contacts$id_last_name_deleted] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[last_name] ASC,
	[deleted_at] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[emails]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emails](
	[id] [int]  NOT NULL,
	[imap_message_id] [nvarchar](255) NOT NULL,
	[user_id] [int] NULL,
	[mediator_type] [nvarchar](255) NULL,
	[mediator_id] [int] NULL,
	[sent_from] [nvarchar](255) NOT NULL,
	[sent_to] [nvarchar](255) NOT NULL,
	[cc] [nvarchar](255) NULL,
	[bcc] [nvarchar](255) NULL,
	[subject] [nvarchar](255) NULL,
	[body] [nvarchar](max) NULL,
	[header] [nvarchar](max) NULL,
	[sent_at] [datetime2](0) NULL,
	[received_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[state] [nvarchar](16) NOT NULL,
 CONSTRAINT [PK_emails_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[field_groups]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[field_groups](
	[id] [int]  NOT NULL,
	[name] [nvarchar](64) NULL,
	[label] [nvarchar](128) NULL,
	[position] [int] NULL,
	[hint] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[tag_id] [int] NULL,
	[klass_name] [nvarchar](32) NULL,
 CONSTRAINT [PK_field_groups_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fields]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fields](
	[id] [int]  NOT NULL,
	[type] [nvarchar](255) NULL,
	[field_group_id] [int] NULL,
	[position] [int] NULL,
	[name] [nvarchar](64) NULL,
	[label] [nvarchar](128) NULL,
	[hint] [nvarchar](255) NULL,
	[placeholder] [nvarchar](255) NULL,
	[as] [nvarchar](32) NULL,
	[collection] [nvarchar](max) NULL,
	[disabled] [smallint] NULL,
	[required] [smallint] NULL,
	[maxlength] [int] NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[pair_id] [int] NULL,
	[settings] [nvarchar](max) NULL,
	[minlength] [int] NULL,
 CONSTRAINT [PK_fields_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[groups]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groups](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_groups_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[groups_users]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[groups_users](
	[group_id] [int] NOT NULL,
	[user_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[leads]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[leads](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[campaign_id] [int] NULL,
	[assigned_to] [int] NULL,
	[first_name] [nvarchar](64) NOT NULL,
	[last_name] [nvarchar](64) NOT NULL,
	[access] [nvarchar](8) NULL,
	[title] [nvarchar](64) NULL,
	[company] [nvarchar](64) NULL,
	[source] [nvarchar](32) NULL,
	[status] [nvarchar](32) NULL,
	[referred_by] [nvarchar](64) NULL,
	[email] [nvarchar](254) NULL,
	[alt_email] [nvarchar](254) NULL,
	[phone] [nvarchar](32) NULL,
	[mobile] [nvarchar](32) NULL,
	[blog] [nvarchar](128) NULL,
	[linkedin] [nvarchar](128) NULL,
	[facebook] [nvarchar](128) NULL,
	[twitter] [nvarchar](128) NULL,
	[rating] [int] NOT NULL,
	[do_not_call] [smallint] NOT NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[background_info] [nvarchar](255) NULL,
	[skype] [nvarchar](128) NULL,
	[subscribed_users] [nvarchar](max) NULL,
 CONSTRAINT [PK_leads_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [leads$index_leads_on_user_id_and_last_name_and_deleted_at] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[last_name] ASC,
	[deleted_at] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[lists]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lists](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[url] [nvarchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[user_id] [int] NULL,
 CONSTRAINT [PK_lists_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[opportunities]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[opportunities](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[campaign_id] [int] NULL,
	[assigned_to] [int] NULL,
	[name] [nvarchar](64) NOT NULL,
	[access] [nvarchar](8) NULL,
	[source] [nvarchar](32) NULL,
	[stage] [nvarchar](32) NULL,
	[probability] [int] NULL,
	[amount] [decimal](12, 2) NULL,
	[discount] [decimal](12, 2) NULL,
	[closes_on] [date] NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[background_info] [nvarchar](255) NULL,
	[subscribed_users] [nvarchar](max) NULL,
 CONSTRAINT [PK_opportunities_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [opportunities$id_name_deleted] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[name] ASC,
	[deleted_at] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[permissions]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permissions](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[asset_type] [nvarchar](255) NULL,
	[asset_id] [int] NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[group_id] [int] NULL,
 CONSTRAINT [PK_permissions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[preferences]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[preferences](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[name] [nvarchar](32) NOT NULL,
	[value] [nvarchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_preferences_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 10:04:36 ******/
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
/****** Object:  Table [dbo].[sessions]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sessions](
	[id] [int]  NOT NULL,
	[session_id] [nvarchar](255) NOT NULL,
	[data] [nvarchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_sessions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[settings]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[settings](
	[id] [int]  NOT NULL,
	[name] [nvarchar](32) NOT NULL,
	[value] [nvarchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_settings_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[taggings]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taggings](
	[id] [int]  NOT NULL,
	[tag_id] [int] NOT NULL,
	[taggable_id] [int] NULL,
	[tagger_id] [int] NULL,
	[tagger_type] [nvarchar](255) NULL,
	[taggable_type] [nvarchar](50) NULL,
	[context] [nvarchar](50) NULL,
	[created_at] [datetime2](0) NULL,
 CONSTRAINT [PK_taggings_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_taggings] UNIQUE NONCLUSTERED 
(
	[tag_id] ASC,
	[taggable_id] ASC,
	[taggable_type] ASC,
	[context] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tags](
	[id] [int]  NOT NULL,
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
/****** Object:  Table [dbo].[tasks]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tasks](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[assigned_to] [int] NULL,
	[completed_by] [int] NULL,
	[name] [nvarchar](255) NOT NULL,
	[asset_type] [nvarchar](255) NULL,
	[asset_id] [int] NULL,
	[priority] [nvarchar](32) NULL,
	[category] [nvarchar](32) NULL,
	[bucket] [nvarchar](32) NULL,
	[due_at] [datetime2](0) NULL,
	[completed_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[background_info] [nvarchar](255) NULL,
	[subscribed_users] [nvarchar](max) NULL,
 CONSTRAINT [PK_tasks_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [tasks$index_tasks_on_user_id_and_name_and_deleted_at] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[name] ASC,
	[deleted_at] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int]  NOT NULL,
	[username] [nvarchar](32) NOT NULL,
	[email] [nvarchar](254) NOT NULL,
	[first_name] [nvarchar](32) NULL,
	[last_name] [nvarchar](32) NULL,
	[title] [nvarchar](64) NULL,
	[company] [nvarchar](64) NULL,
	[alt_email] [nvarchar](254) NULL,
	[phone] [nvarchar](32) NULL,
	[mobile] [nvarchar](32) NULL,
	[aim] [nvarchar](32) NULL,
	[yahoo] [nvarchar](32) NULL,
	[google] [nvarchar](32) NULL,
	[skype] [nvarchar](32) NULL,
	[encrypted_password] [nvarchar](255) NOT NULL,
	[password_salt] [nvarchar](255) NOT NULL,
	[last_sign_in_at] [datetime2](0) NULL,
	[current_sign_in_at] [datetime2](0) NULL,
	[last_sign_in_ip] [nvarchar](255) NULL,
	[current_sign_in_ip] [nvarchar](255) NULL,
	[sign_in_count] [int] NOT NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[admin] [smallint] NOT NULL,
	[suspended_at] [datetime2](0) NULL,
	[unconfirmed_email] [nvarchar](254) NULL,
	[reset_password_token] [nvarchar](255) NULL,
	[reset_password_sent_at] [datetime2](0) NULL,
	[remember_token] [nvarchar](255) NULL,
	[remember_created_at] [datetime2](0) NULL,
	[authentication_token] [nvarchar](255) NULL,
	[confirmation_token] [nvarchar](255) NULL,
	[confirmed_at] [datetime] NULL,
	[confirmation_sent_at] [datetime] NULL,
 CONSTRAINT [PK_users_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$index_users_on_authentication_token] UNIQUE NONCLUSTERED 
(
	[authentication_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$index_users_on_confirmation_token] UNIQUE NONCLUSTERED 
(
	[confirmation_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$index_users_on_remember_token] UNIQUE NONCLUSTERED 
(
	[remember_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$index_users_on_reset_password_token] UNIQUE NONCLUSTERED 
(
	[reset_password_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [users$index_users_on_username_and_deleted_at] UNIQUE NONCLUSTERED 
(
	[username] ASC,
	[deleted_at] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[versions]    Script Date: 2021/8/5 10:04:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[versions](
	[id] [int]  NOT NULL,
	[item_type] [nvarchar](255) NOT NULL,
	[item_id] [int] NOT NULL,
	[event] [nvarchar](512) NOT NULL,
	[whodunnit] [nvarchar](255) NULL,
	[object] [nvarchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[object_changes] [nvarchar](max) NULL,
	[related_id] [int] NULL,
	[related_type] [nvarchar](255) NULL,
	[transaction_id] [int] NULL,
 CONSTRAINT [PK_versions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
ALTER TABLE [dbo].[account_contacts] ADD  DEFAULT (NULL) FOR [account_id]
GO
ALTER TABLE [dbo].[account_contacts] ADD  DEFAULT (NULL) FOR [contact_id]
GO
ALTER TABLE [dbo].[account_contacts] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[account_contacts] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[account_contacts] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[account_opportunities] ADD  DEFAULT (NULL) FOR [account_id]
GO
ALTER TABLE [dbo].[account_opportunities] ADD  DEFAULT (NULL) FOR [opportunity_id]
GO
ALTER TABLE [dbo].[account_opportunities] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[account_opportunities] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[account_opportunities] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [assigned_to]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (N'Public') FOR [access]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [website]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [toll_free_phone]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [fax]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [background_info]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT ((0)) FOR [rating]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT (NULL) FOR [category]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT ((0)) FOR [contacts_count]
GO
ALTER TABLE [dbo].[accounts] ADD  DEFAULT ((0)) FOR [opportunities_count]
GO
ALTER TABLE [dbo].[activities] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[activities] ADD  DEFAULT (NULL) FOR [subject_type]
GO
ALTER TABLE [dbo].[activities] ADD  DEFAULT (NULL) FOR [subject_id]
GO
ALTER TABLE [dbo].[activities] ADD  DEFAULT (N'created') FOR [action]
GO
ALTER TABLE [dbo].[activities] ADD  DEFAULT (N'') FOR [info]
GO
ALTER TABLE [dbo].[activities] ADD  DEFAULT ((0)) FOR [private]
GO
ALTER TABLE [dbo].[activities] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[activities] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [street1]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [street2]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [city]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [zipcode]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [country]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [full_address]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [address_type]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [addressable_type]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [addressable_id]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[addresses] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[ar_internal_metadata] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[avatars] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[avatars] ADD  DEFAULT (NULL) FOR [entity_type]
GO
ALTER TABLE [dbo].[avatars] ADD  DEFAULT (NULL) FOR [entity_id]
GO
ALTER TABLE [dbo].[avatars] ADD  DEFAULT (NULL) FOR [image_file_size]
GO
ALTER TABLE [dbo].[avatars] ADD  DEFAULT (NULL) FOR [image_file_name]
GO
ALTER TABLE [dbo].[avatars] ADD  DEFAULT (NULL) FOR [image_content_type]
GO
ALTER TABLE [dbo].[avatars] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[avatars] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [assigned_to]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (N'Public') FOR [access]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [budget]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [target_leads]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [target_conversion]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [target_revenue]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [leads_count]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [opportunities_count]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [revenue]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [starts_on]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [ends_on]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[campaigns] ADD  DEFAULT (NULL) FOR [background_info]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (NULL) FOR [commentable_type]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (NULL) FOR [commentable_id]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (NULL) FOR [private]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (N'') FOR [title]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[comments] ADD  DEFAULT (N'Expanded') FOR [state]
GO
ALTER TABLE [dbo].[contact_opportunities] ADD  DEFAULT (NULL) FOR [contact_id]
GO
ALTER TABLE [dbo].[contact_opportunities] ADD  DEFAULT (NULL) FOR [opportunity_id]
GO
ALTER TABLE [dbo].[contact_opportunities] ADD  DEFAULT (NULL) FOR [role]
GO
ALTER TABLE [dbo].[contact_opportunities] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[contact_opportunities] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[contact_opportunities] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [lead_id]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [assigned_to]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [reports_to]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (N'') FOR [first_name]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (N'') FOR [last_name]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (N'Public') FOR [access]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [department]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [source]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [alt_email]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [mobile]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [fax]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [blog]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [linkedin]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [facebook]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [twitter]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [born_on]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT ((0)) FOR [do_not_call]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [background_info]
GO
ALTER TABLE [dbo].[contacts] ADD  DEFAULT (NULL) FOR [skype]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (NULL) FOR [mediator_type]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (NULL) FOR [mediator_id]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (NULL) FOR [cc]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (NULL) FOR [bcc]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (NULL) FOR [subject]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (NULL) FOR [sent_at]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (NULL) FOR [received_at]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[emails] ADD  DEFAULT (N'Expanded') FOR [state]
GO
ALTER TABLE [dbo].[field_groups] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[field_groups] ADD  DEFAULT (NULL) FOR [label]
GO
ALTER TABLE [dbo].[field_groups] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[field_groups] ADD  DEFAULT (NULL) FOR [hint]
GO
ALTER TABLE [dbo].[field_groups] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[field_groups] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[field_groups] ADD  DEFAULT (NULL) FOR [tag_id]
GO
ALTER TABLE [dbo].[field_groups] ADD  DEFAULT (NULL) FOR [klass_name]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [field_group_id]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [label]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [hint]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [placeholder]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [as]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [disabled]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [required]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [maxlength]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT (NULL) FOR [pair_id]
GO
ALTER TABLE [dbo].[fields] ADD  DEFAULT ((0)) FOR [minlength]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[groups] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[groups_users] ADD  DEFAULT (NULL) FOR [group_id]
GO
ALTER TABLE [dbo].[groups_users] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [campaign_id]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [assigned_to]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (N'') FOR [first_name]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (N'') FOR [last_name]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (N'Public') FOR [access]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [company]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [source]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [status]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [referred_by]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [alt_email]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [mobile]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [blog]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [linkedin]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [facebook]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [twitter]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT ((0)) FOR [rating]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT ((0)) FOR [do_not_call]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [background_info]
GO
ALTER TABLE [dbo].[leads] ADD  DEFAULT (NULL) FOR [skype]
GO
ALTER TABLE [dbo].[lists] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[lists] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[lists] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[lists] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [campaign_id]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [assigned_to]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (N'Public') FOR [access]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [source]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [stage]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [probability]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [amount]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [discount]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [closes_on]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[opportunities] ADD  DEFAULT (NULL) FOR [background_info]
GO
ALTER TABLE [dbo].[permissions] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[permissions] ADD  DEFAULT (NULL) FOR [asset_type]
GO
ALTER TABLE [dbo].[permissions] ADD  DEFAULT (NULL) FOR [asset_id]
GO
ALTER TABLE [dbo].[permissions] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[permissions] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[permissions] ADD  DEFAULT (NULL) FOR [group_id]
GO
ALTER TABLE [dbo].[preferences] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[preferences] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[preferences] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[preferences] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[sessions] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[sessions] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[settings] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[settings] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[settings] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [tag_id]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [taggable_id]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [tagger_id]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [tagger_type]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [taggable_type]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [context]
GO
ALTER TABLE [dbo].[taggings] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT ((0)) FOR [taggings_count]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [assigned_to]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [completed_by]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [asset_type]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [asset_id]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [priority]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [category]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [bucket]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [due_at]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [completed_at]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[tasks] ADD  DEFAULT (NULL) FOR [background_info]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [username]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [email]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [first_name]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [last_name]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [title]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [company]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [alt_email]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [mobile]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [aim]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [yahoo]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [google]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [skype]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [encrypted_password]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (N'') FOR [password_salt]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [last_sign_in_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [current_sign_in_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [last_sign_in_ip]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [current_sign_in_ip]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [sign_in_count]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [admin]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [suspended_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [unconfirmed_email]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [reset_password_token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [reset_password_sent_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [remember_token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [remember_created_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [authentication_token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [confirmation_token]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [confirmed_at]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT (NULL) FOR [confirmation_sent_at]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [whodunnit]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [related_id]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [related_type]
GO
ALTER TABLE [dbo].[versions] ADD  DEFAULT (NULL) FOR [transaction_id]
GO
ALTER TABLE [dbo].[groups_users]  WITH NOCHECK ADD  CONSTRAINT [FK_groups_users_groups] FOREIGN KEY([group_id])
REFERENCES [dbo].[groups] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[groups_users] CHECK CONSTRAINT [FK_groups_users_groups]
GO
ALTER TABLE [dbo].[taggings]  WITH NOCHECK ADD  CONSTRAINT [FK_taggings_tags] FOREIGN KEY([tag_id])
REFERENCES [dbo].[tags] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[taggings] CHECK CONSTRAINT [FK_taggings_tags]
GO
