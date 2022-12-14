-- USE [spree_base]
GO
ALTER TABLE [spree_base].[spree_order_promotions_notnull] DROP CONSTRAINT [FK_spree_order_promotions_notnull_spree_promotions]
GO
ALTER TABLE [spree_base].[spree_order_promotions_notnull] DROP CONSTRAINT [FK_spree_order_promotions_notnull_spree_orders]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] DROP CONSTRAINT [FK_spree_promotion_rule_taxons_spree_taxons]
GO
ALTER TABLE [dbo].[spree_products_taxons] DROP CONSTRAINT [fk_spree_products_taxons_taxon_id]
GO
ALTER TABLE [dbo].[spree_order_promotions] DROP CONSTRAINT [FK_spree_order_promotions_spree_promotions]
GO
ALTER TABLE [dbo].[spree_order_promotions] DROP CONSTRAINT [FK_spree_order_promotions_spree_orders]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] DROP CONSTRAINT [spree_oauth_access_tokens$fk_rails_c9894c7021]
GO
ALTER TABLE [dbo].[spree_oauth_access_grants] DROP CONSTRAINT [spree_oauth_access_grants$fk_rails_8049be136c]
GO
ALTER TABLE [dbo].[active_storage_attachments] DROP CONSTRAINT [active_storage_attachments$fk_rails_c3b3935057]
GO
ALTER TABLE [dbo].[spree_zones] DROP CONSTRAINT [DF__spree_zone__kind__18F6A22A]
GO
ALTER TABLE [dbo].[spree_zones] DROP CONSTRAINT [DF__spree_zon__zone___18027DF1]
GO
ALTER TABLE [dbo].[spree_zones] DROP CONSTRAINT [DF__spree_zon__defau__170E59B8]
GO
ALTER TABLE [dbo].[spree_zones] DROP CONSTRAINT [DF__spree_zon__descr__161A357F]
GO
ALTER TABLE [dbo].[spree_zones] DROP CONSTRAINT [DF__spree_zone__name__15261146]
GO
ALTER TABLE [dbo].[spree_zone_members] DROP CONSTRAINT [DF__spree_zon__zone___1431ED0D]
GO
ALTER TABLE [dbo].[spree_zone_members] DROP CONSTRAINT [DF__spree_zon__zonea__133DC8D4]
GO
ALTER TABLE [dbo].[spree_zone_members] DROP CONSTRAINT [DF__spree_zon__zonea__1249A49B]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__tax_c__11558062]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__track__10615C29]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__posit__0F6D37F0]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__cost___0E7913B7]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__cost___0D84EF7E]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__produ__0C90CB45]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__is_ma__0B9CA70C]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__disco__0AA882D3]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__delet__09B45E9A]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__depth__08C03A61]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__width__07CC1628]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__heigh__06D7F1EF]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__weigh__05E3CDB6]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_varia__sku__04EFA97D]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__spree__03FB8544]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__reset__0307610B]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__remem__02133CD2]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__locke__011F1899]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__unloc__002AF460]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__authe__7F36D027]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__bill___7E42ABEE]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__ship___7D4E87B5]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__login__7C5A637C]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__last___7B663F43]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__curre__7A721B0A]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__last___797DF6D1]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__curre__7889D298]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__last___7795AE5F]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__faile__76A18A26]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__sign___75AD65ED]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__peris__74B941B4]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__reset__73C51D7B]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__persi__72D0F942]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__remem__71DCD509]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__email__70E8B0D0]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__passw__6FF48C97]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__encry__6F00685E]
GO
ALTER TABLE [dbo].[spree_trackers] DROP CONSTRAINT [DF__spree_tra__engin__6E0C4425]
GO
ALTER TABLE [dbo].[spree_trackers] DROP CONSTRAINT [DF__spree_tra__activ__6D181FEC]
GO
ALTER TABLE [dbo].[spree_trackers] DROP CONSTRAINT [DF__spree_tra__analy__6C23FBB3]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__hide___6B2FD77A]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__depth__6A3BB341]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__meta___69478F08]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__meta___68536ACF]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__meta___675F4696]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_taxon__rgt__666B225D]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_taxon__lft__6576FE24]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__taxon__6482D9EB]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__perma__638EB5B2]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__posit__629A9179]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__paren__61A66D40]
GO
ALTER TABLE [dbo].[spree_taxonomies] DROP CONSTRAINT [DF__spree_tax__posit__60B24907]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__delet__5FBE24CE]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__show___5ECA0095]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax___name__5DD5DC5C]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__inclu__5CE1B823]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__tax_c__5BED93EA]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__zone___5AF96FB1]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__amoun__5A054B78]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax__tax_c__5911273F]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax__delet__581D0306]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax__is_de__5728DECD]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax__descr__5634BA94]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax___name__5540965B]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__custo__544C7222]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__defau__53584DE9]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__insta__526429B0]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__twitt__51700577]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__faceb__507BE13E]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__defau__4F87BD05]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_stor__code__4E9398CC]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__defau__4D9F7493]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__mail___4CAB505A]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__seo_t__4BB72C21]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_store__url__4AC307E8]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_stor__name__49CEE3AF]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__type___48DABF76]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__origi__47E69B3D]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__origi__46F27704]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__amoun__45FE52CB]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__curre__450A2E92]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__delet__44160A59]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__amoun__4321E620]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__amoun__422DC1E7]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__creat__41399DAE]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__categ__40457975]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__user___3F51553C]
GO
ALTER TABLE [dbo].[spree_store_credit_types] DROP CONSTRAINT [DF__spree_sto__prior__3E5D3103]
GO
ALTER TABLE [dbo].[spree_store_credit_types] DROP CONSTRAINT [DF__spree_stor__name__3D690CCA]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__delet__3C74E891]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__origi__3B80C458]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__origi__3A8CA01F]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__user___39987BE6]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__amoun__38A457AD]
GO
ALTER TABLE [dbo].[spree_store_credit_categories] DROP CONSTRAINT [DF__spree_stor__name__37B03374]
GO
ALTER TABLE [dbo].[spree_stock_transfers] DROP CONSTRAINT [DF__spree_sto__numbe__36BC0F3B]
GO
ALTER TABLE [dbo].[spree_stock_transfers] DROP CONSTRAINT [DF__spree_sto__desti__35C7EB02]
GO
ALTER TABLE [dbo].[spree_stock_transfers] DROP CONSTRAINT [DF__spree_sto__sourc__34D3C6C9]
GO
ALTER TABLE [dbo].[spree_stock_transfers] DROP CONSTRAINT [DF__spree_sto__refer__33DFA290]
GO
ALTER TABLE [dbo].[spree_stock_transfers] DROP CONSTRAINT [DF__spree_stoc__type__32EB7E57]
GO
ALTER TABLE [dbo].[spree_stock_movements] DROP CONSTRAINT [DF__spree_sto__origi__31F75A1E]
GO
ALTER TABLE [dbo].[spree_stock_movements] DROP CONSTRAINT [DF__spree_sto__origi__310335E5]
GO
ALTER TABLE [dbo].[spree_stock_movements] DROP CONSTRAINT [DF__spree_sto__actio__300F11AC]
GO
ALTER TABLE [dbo].[spree_stock_movements] DROP CONSTRAINT [DF__spree_sto__quant__2F1AED73]
GO
ALTER TABLE [dbo].[spree_stock_movements] DROP CONSTRAINT [DF__spree_sto__stock__2E26C93A]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__admin__2D32A501]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__propa__2C3E80C8]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__backo__2B4A5C8F]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__activ__2A563856]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__phone__2962141D]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__zipco__286DEFE4]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__count__2779CBAB]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__state__2685A772]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__state__25918339]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_stoc__city__249D5F00]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__addre__23A93AC7]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__addre__22B5168E]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__defau__21C0F255]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_stoc__name__20CCCE1C]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__delet__1FD8A9E3]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__backo__1EE485AA]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__count__1DF06171]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__varia__1CFC3D38]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__stock__1C0818FF]
GO
ALTER TABLE [dbo].[spree_states] DROP CONSTRAINT [DF__spree_sta__updat__1B13F4C6]
GO
ALTER TABLE [dbo].[spree_states] DROP CONSTRAINT [DF__spree_sta__count__1A1FD08D]
GO
ALTER TABLE [dbo].[spree_states] DROP CONSTRAINT [DF__spree_stat__abbr__192BAC54]
GO
ALTER TABLE [dbo].[spree_states] DROP CONSTRAINT [DF__spree_stat__name__1837881B]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__next___174363E2]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__state__164F3FA9]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__user___155B1B70]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__state__1466F737]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__previ__1372D2FE]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_stat__name__127EAEC5]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_shi__tax_r__118A8A8C]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_ship__cost__10966653]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_shi__selec__0FA2421A]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_shi__shipp__0EAE1DE1]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_shi__shipm__0DB9F9A8]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_ship__code__0CC5D56F]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__tax_c__0BD1B136]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__admin__0ADD8CFD]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__track__09E968C4]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__delet__08F5448B]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__displ__08012052]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_ship__name__070CFC19]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] DROP CONSTRAINT [DF__spree_shi__zone___0618D7E0]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] DROP CONSTRAINT [DF__spree_shi__shipp__0524B3A7]
GO
ALTER TABLE [dbo].[spree_shipping_categories] DROP CONSTRAINT [DF__spree_ship__name__04308F6E]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__non_t__033C6B35]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__taxab__024846FC]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__pre_t__015422C3]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__inclu__005FFE8A]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__promo__7F6BDA51]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__addit__7E77B618]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__adjus__7D8391DF]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__stock__7C8F6DA6]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__state__7B9B496D]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__addre__7AA72534]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__order__79B300FB]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__shipp__78BEDCC2]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_ship__cost__77CAB889]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__numbe__76D69450]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__track__75E27017]
GO
ALTER TABLE [dbo].[spree_roles] DROP CONSTRAINT [DF__spree_role__name__74EE4BDE]
GO
ALTER TABLE [dbo].[spree_role_users] DROP CONSTRAINT [DF__spree_rol__user___73FA27A5]
GO
ALTER TABLE [dbo].[spree_role_users] DROP CONSTRAINT [DF__spree_rol__role___7306036C]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__resel__7211DF33]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__overr__711DBAFA]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__prefe__702996C1]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__reimb__6F357288]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__custo__6E414E4F]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__accep__6D4D2A16]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__recep__6C5905DD]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__addit__6B64E1A4]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__inclu__6A70BD6B]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__pre_t__697C9932]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__excha__688874F9]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__inven__679450C0]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__retur__66A02C87]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__retur__65AC084E]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__stock__64B7E415]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__updat__63C3BFDC]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__creat__62CF9BA3]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__order__61DB776A]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__state__60E75331]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__numbe__5FF32EF8]
GO
ALTER TABLE [dbo].[spree_return_authorization_reasons] DROP CONSTRAINT [DF__spree_ret__mutab__5EFF0ABF]
GO
ALTER TABLE [dbo].[spree_return_authorization_reasons] DROP CONSTRAINT [DF__spree_ret__activ__5E0AE686]
GO
ALTER TABLE [dbo].[spree_return_authorization_reasons] DROP CONSTRAINT [DF__spree_retu__name__5D16C24D]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__total__5C229E14]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__order__5B2E79DB]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__custo__5A3A55A2]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__reimb__59463169]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__numbe__58520D30]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] DROP CONSTRAINT [DF__spree_reim__type__575DE8F7]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] DROP CONSTRAINT [DF__spree_rei__mutab__5669C4BE]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] DROP CONSTRAINT [DF__spree_rei__activ__5575A085]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] DROP CONSTRAINT [DF__spree_reim__name__54817C4C]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] DROP CONSTRAINT [DF__spree_rei__credi__538D5813]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] DROP CONSTRAINT [DF__spree_rei__credi__529933DA]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] DROP CONSTRAINT [DF__spree_rei__reimb__51A50FA1]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] DROP CONSTRAINT [DF__spree_rei__amoun__50B0EB68]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__reimb__4FBCC72F]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__refun__4EC8A2F6]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__trans__4DD47EBD]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__amoun__4CE05A84]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__payme__4BEC364B]
GO
ALTER TABLE [dbo].[spree_refund_reasons] DROP CONSTRAINT [DF__spree_ref__mutab__4AF81212]
GO
ALTER TABLE [dbo].[spree_refund_reasons] DROP CONSTRAINT [DF__spree_ref__activ__4A03EDD9]
GO
ALTER TABLE [dbo].[spree_refund_reasons] DROP CONSTRAINT [DF__spree_refu__name__490FC9A0]
GO
ALTER TABLE [dbo].[spree_prototypes] DROP CONSTRAINT [DF__spree_prot__name__481BA567]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] DROP CONSTRAINT [DF__spree_pro__proto__4727812E]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] DROP CONSTRAINT [DF__spree_pro__taxon__46335CF5]
GO
ALTER TABLE [dbo].[spree_property_prototypes] DROP CONSTRAINT [DF__spree_pro__prope__453F38BC]
GO
ALTER TABLE [dbo].[spree_property_prototypes] DROP CONSTRAINT [DF__spree_pro__proto__444B1483]
GO
ALTER TABLE [dbo].[spree_properties] DROP CONSTRAINT [DF__spree_prop__name__4356F04A]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__promo__4262CC11]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_prom__path__416EA7D8]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__adver__407A839F]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_prom__code__3F865F66]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__match__3E923B2D]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__usage__3D9E16F4]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_prom__type__3CA9F2BB]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_prom__name__3BB5CE82]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__start__3AC1AA49]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__expir__39CD8610]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__descr__38D961D7]
GO
ALTER TABLE [dbo].[spree_promotion_rules] DROP CONSTRAINT [DF__spree_prom__code__37E53D9E]
GO
ALTER TABLE [dbo].[spree_promotion_rules] DROP CONSTRAINT [DF__spree_prom__type__36F11965]
GO
ALTER TABLE [dbo].[spree_promotion_rules] DROP CONSTRAINT [DF__spree_pro__produ__35FCF52C]
GO
ALTER TABLE [dbo].[spree_promotion_rules] DROP CONSTRAINT [DF__spree_pro__user___3508D0F3]
GO
ALTER TABLE [dbo].[spree_promotion_rules] DROP CONSTRAINT [DF__spree_pro__promo__3414ACBA]
GO
ALTER TABLE [dbo].[spree_promotion_rule_users] DROP CONSTRAINT [DF__spree_pro__promo__33208881]
GO
ALTER TABLE [dbo].[spree_promotion_rule_users] DROP CONSTRAINT [DF__spree_pro__user___322C6448]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] DROP CONSTRAINT [DF__spree_pro__promo__3138400F]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] DROP CONSTRAINT [DF__spree_pro__taxon__30441BD6]
GO
ALTER TABLE [dbo].[spree_promotion_categories] DROP CONSTRAINT [DF__spree_prom__code__2F4FF79D]
GO
ALTER TABLE [dbo].[spree_promotion_categories] DROP CONSTRAINT [DF__spree_prom__name__2E5BD364]
GO
ALTER TABLE [dbo].[spree_promotion_actions] DROP CONSTRAINT [DF__spree_pro__delet__2D67AF2B]
GO
ALTER TABLE [dbo].[spree_promotion_actions] DROP CONSTRAINT [DF__spree_prom__type__2C738AF2]
GO
ALTER TABLE [dbo].[spree_promotion_actions] DROP CONSTRAINT [DF__spree_pro__posit__2B7F66B9]
GO
ALTER TABLE [dbo].[spree_promotion_actions] DROP CONSTRAINT [DF__spree_pro__promo__2A8B4280]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] DROP CONSTRAINT [DF__spree_pro__quant__29971E47]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] DROP CONSTRAINT [DF__spree_pro__varia__28A2FA0E]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] DROP CONSTRAINT [DF__spree_pro__promo__27AED5D5]
GO
ALTER TABLE [dbo].[spree_products_taxons] DROP CONSTRAINT [DF__spree_pro__posit__26BAB19C]
GO
ALTER TABLE [dbo].[spree_products_taxons] DROP CONSTRAINT [DF__spree_pro__taxon__25C68D63]
GO
ALTER TABLE [dbo].[spree_products_taxons] DROP CONSTRAINT [DF__spree_pro__produ__24D2692A]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__meta___23DE44F1]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__promo__22EA20B8]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__shipp__21F5FC7F]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__tax_c__2101D846]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__meta___200DB40D]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_prod__slug__1F198FD4]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__delet__1E256B9B]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__disco__1D314762]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__avail__1C3D2329]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_prod__name__1B48FEF0]
GO
ALTER TABLE [dbo].[spree_product_properties] DROP CONSTRAINT [DF__spree_pro__posit__1A54DAB7]
GO
ALTER TABLE [dbo].[spree_product_properties] DROP CONSTRAINT [DF__spree_pro__prope__1960B67E]
GO
ALTER TABLE [dbo].[spree_product_properties] DROP CONSTRAINT [DF__spree_pro__produ__186C9245]
GO
ALTER TABLE [dbo].[spree_product_properties] DROP CONSTRAINT [DF__spree_pro__value__17786E0C]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] DROP CONSTRAINT [DF__spree_pro__promo__168449D3]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] DROP CONSTRAINT [DF__spree_pro__produ__1590259A]
GO
ALTER TABLE [dbo].[spree_product_option_types] DROP CONSTRAINT [DF__spree_pro__optio__149C0161]
GO
ALTER TABLE [dbo].[spree_product_option_types] DROP CONSTRAINT [DF__spree_pro__produ__13A7DD28]
GO
ALTER TABLE [dbo].[spree_product_option_types] DROP CONSTRAINT [DF__spree_pro__posit__12B3B8EF]
GO
ALTER TABLE [dbo].[spree_prices] DROP CONSTRAINT [DF__spree_pri__delet__11BF94B6]
GO
ALTER TABLE [dbo].[spree_prices] DROP CONSTRAINT [DF__spree_pri__curre__10CB707D]
GO
ALTER TABLE [dbo].[spree_prices] DROP CONSTRAINT [DF__spree_pri__amoun__0FD74C44]
GO
ALTER TABLE [dbo].[spree_preferences] DROP CONSTRAINT [DF__spree_prefe__key__0EE3280B]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__cvv_r__0DEF03D2]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__cvv_r__0CFADF99]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__numbe__0C06BB60]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__avs_r__0B129727]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__respo__0A1E72EE]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__state__092A4EB5]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__payme__08362A7C]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__sourc__07420643]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__sourc__064DE20A]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__order__0559BDD1]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__amoun__04659998]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__store__0371755F]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__posit__027D5126]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__auto___01892CED]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__displ__009508B4]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__delet__7FA0E47B]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__activ__7EACC042]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_paym__name__7DB89C09]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_paym__type__7CC477D0]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] DROP CONSTRAINT [DF__spree_pay__payme__7BD05397]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] DROP CONSTRAINT [DF__spree_pay__amoun__7ADC2F5E]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__non_t__79E80B25]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__taxab__78F3E6EC]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__state__77FFC2B3]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__store__770B9E7A]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__cance__76177A41]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__cance__75235608]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__token__742F31CF]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__consi__733B0D96]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__confi__7246E95D]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__appro__7152C524]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__appro__705EA0EB]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__item___6F6A7CB2]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__inclu__6E765879]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__chann__6D823440]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__promo__6C8E1007]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__addit__6B99EBCE]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__shipm__6AA5C795]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__creat__69B1A35C]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__last___68BD7F23]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__curre__67C95AEA]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__email__66D536B1]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__payme__65E11278]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__shipm__64ECEE3F]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__payme__63F8CA06]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__ship___6304A5CD]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__bill___62108194]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__compl__611C5D5B]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__user___60283922]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__adjus__5F3414E9]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__state__5E3FF0B0]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__total__5D4BCC77]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__item___5C57A83E]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__numbe__5B638405]
GO
ALTER TABLE [dbo].[spree_order_promotions] DROP CONSTRAINT [DF__spree_ord__promo__5A6F5FCC]
GO
ALTER TABLE [dbo].[spree_order_promotions] DROP CONSTRAINT [DF__spree_ord__order__597B3B93]
GO
ALTER TABLE [dbo].[spree_option_values] DROP CONSTRAINT [DF__spree_opt__optio__5887175A]
GO
ALTER TABLE [dbo].[spree_option_values] DROP CONSTRAINT [DF__spree_opt__prese__5792F321]
GO
ALTER TABLE [dbo].[spree_option_values] DROP CONSTRAINT [DF__spree_opti__name__569ECEE8]
GO
ALTER TABLE [dbo].[spree_option_values] DROP CONSTRAINT [DF__spree_opt__posit__55AAAAAF]
GO
ALTER TABLE [dbo].[spree_option_value_variants] DROP CONSTRAINT [DF__spree_opt__optio__54B68676]
GO
ALTER TABLE [dbo].[spree_option_value_variants] DROP CONSTRAINT [DF__spree_opt__varia__53C2623D]
GO
ALTER TABLE [dbo].[spree_option_types] DROP CONSTRAINT [DF__spree_opt__posit__52CE3E04]
GO
ALTER TABLE [dbo].[spree_option_types] DROP CONSTRAINT [DF__spree_opt__prese__51DA19CB]
GO
ALTER TABLE [dbo].[spree_option_types] DROP CONSTRAINT [DF__spree_opti__name__50E5F592]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] DROP CONSTRAINT [DF__spree_opt__optio__4FF1D159]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] DROP CONSTRAINT [DF__spree_opt__proto__4EFDAD20]
GO
ALTER TABLE [dbo].[spree_oauth_applications] DROP CONSTRAINT [DF__spree_oau__confi__4E0988E7]
GO
ALTER TABLE [dbo].[spree_oauth_applications] DROP CONSTRAINT [DF__spree_oau__scope__4D1564AE]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] DROP CONSTRAINT [DF__spree_oau__previ__4C214075]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] DROP CONSTRAINT [DF__spree_oau__scope__4B2D1C3C]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] DROP CONSTRAINT [DF__spree_oau__revok__4A38F803]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] DROP CONSTRAINT [DF__spree_oau__expir__4944D3CA]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] DROP CONSTRAINT [DF__spree_oau__refre__4850AF91]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] DROP CONSTRAINT [DF__spree_oau__appli__475C8B58]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] DROP CONSTRAINT [DF__spree_oau__resou__4668671F]
GO
ALTER TABLE [dbo].[spree_oauth_access_grants] DROP CONSTRAINT [DF__spree_oau__scope__457442E6]
GO
ALTER TABLE [dbo].[spree_oauth_access_grants] DROP CONSTRAINT [DF__spree_oau__revok__44801EAD]
GO
ALTER TABLE [dbo].[spree_log_entries] DROP CONSTRAINT [DF__spree_log__sourc__438BFA74]
GO
ALTER TABLE [dbo].[spree_log_entries] DROP CONSTRAINT [DF__spree_log__sourc__4297D63B]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__non_t__41A3B202]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__taxab__40AF8DC9]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__pre_t__3FBB6990]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__inclu__3EC74557]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__promo__3DD3211E]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__addit__3CDEFCE5]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__adjus__3BEAD8AC]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__tax_c__3AF6B473]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__cost___3A02903A]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__curre__390E6C01]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__order__381A47C8]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__varia__3726238F]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__origi__3631FF56]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__quant__353DDB1D]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__line___3449B6E4]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__pendi__335592AB]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__shipm__32616E72]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__order__316D4A39]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__varia__30792600]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__state__2F8501C7]
GO
ALTER TABLE [dbo].[spree_gateways] DROP CONSTRAINT [DF__spree_gat__test___2E90DD8E]
GO
ALTER TABLE [dbo].[spree_gateways] DROP CONSTRAINT [DF__spree_gat__serve__2D9CB955]
GO
ALTER TABLE [dbo].[spree_gateways] DROP CONSTRAINT [DF__spree_gat__envir__2CA8951C]
GO
ALTER TABLE [dbo].[spree_gateways] DROP CONSTRAINT [DF__spree_gat__activ__2BB470E3]
GO
ALTER TABLE [dbo].[spree_gateways] DROP CONSTRAINT [DF__spree_gate__name__2AC04CAA]
GO
ALTER TABLE [dbo].[spree_gateways] DROP CONSTRAINT [DF__spree_gate__type__29CC2871]
GO
ALTER TABLE [dbo].[spree_dummy_models] DROP CONSTRAINT [DF__spree_dum__posit__28D80438]
GO
ALTER TABLE [dbo].[spree_dummy_models] DROP CONSTRAINT [DF__spree_dumm__name__27E3DFFF]
GO
ALTER TABLE [dbo].[spree_customer_returns] DROP CONSTRAINT [DF__spree_cus__stock__26EFBBC6]
GO
ALTER TABLE [dbo].[spree_customer_returns] DROP CONSTRAINT [DF__spree_cus__numbe__25FB978D]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__delet__25077354]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__defau__24134F1B]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__payme__231F2AE2]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__user___222B06A9]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cred__name__2136E270]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__gatew__2042BE37]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__gatew__1F4E99FE]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__addre__1E5A75C5]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__last___1D66518C]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__cc_ty__1C722D53]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cred__year__1B7E091A]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__month__1A89E4E1]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_cou__zipco__1995C0A8]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_cou__updat__18A19C6F]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_cou__state__17AD7836]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_cou__numco__16B953FD]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_coun__name__15C52FC4]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_cou__iso_n__14D10B8B]
GO
ALTER TABLE [dbo].[spree_calculators] DROP CONSTRAINT [DF__spree_cal__delet__13DCE752]
GO
ALTER TABLE [dbo].[spree_calculators] DROP CONSTRAINT [DF__spree_cal__calcu__12E8C319]
GO
ALTER TABLE [dbo].[spree_calculators] DROP CONSTRAINT [DF__spree_cal__calcu__11F49EE0]
GO
ALTER TABLE [dbo].[spree_calculators] DROP CONSTRAINT [DF__spree_calc__type__11007AA7]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__updat__100C566E]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__creat__0F183235]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__0E240DFC]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_asse__type__0D2FE9C3]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__0C3BC58A]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__0B47A151]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__posit__0A537D18]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__095F58DF]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__086B34A6]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__0777106D]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__viewa__0682EC34]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__viewa__058EC7FB]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__inclu__049AA3C2]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__state__03A67F89]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__eligi__02B25B50]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__manda__01BE3717]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__label__00CA12DE]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__amoun__7FD5EEA5]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__adjus__7EE1CA6C]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__adjus__7DEDA633]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__sourc__7CF981FA]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__sourc__7C055DC1]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__delet__7B113988]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__user___7A1D154F]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__count__7928F116]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__state__7834CCDD]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__compa__7740A8A4]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__alter__764C846B]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__state__75586032]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__phone__74643BF9]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__zipco__737017C0]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_addr__city__727BF387]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__addre__7187CF4E]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__addre__7093AB15]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__lastn__6F9F86DC]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__first__6EAB62A3]
GO
ALTER TABLE [dbo].[friendly_id_slugs] DROP CONSTRAINT [DF__friendly___delet__6DB73E6A]
GO
ALTER TABLE [dbo].[friendly_id_slugs] DROP CONSTRAINT [DF__friendly___creat__6CC31A31]
GO
ALTER TABLE [dbo].[friendly_id_slugs] DROP CONSTRAINT [DF__friendly___scope__6BCEF5F8]
GO
ALTER TABLE [dbo].[friendly_id_slugs] DROP CONSTRAINT [DF__friendly___slugg__6ADAD1BF]
GO
ALTER TABLE [dbo].[ar_internal_metadata] DROP CONSTRAINT [DF__ar_intern__value__69E6AD86]
GO
ALTER TABLE [dbo].[active_storage_blobs] DROP CONSTRAINT [DF__active_st__conte__68F2894D]
GO
ALTER TABLE [dbo].[action_mailbox_inbound_emails] DROP CONSTRAINT [DF__action_ma__statu__67FE6514]
GO
/****** Object:  Table [spree_base].[spree_order_promotions_notnull]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[spree_base].[spree_order_promotions_notnull]') AND type in (N'U'))
DROP TABLE [spree_base].[spree_order_promotions_notnull]
GO
/****** Object:  Table [dbo].[spree_zones]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_zones]') AND type in (N'U'))
DROP TABLE [dbo].[spree_zones]
GO
/****** Object:  Table [dbo].[spree_zone_members]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_zone_members]') AND type in (N'U'))
DROP TABLE [dbo].[spree_zone_members]
GO
/****** Object:  Table [dbo].[spree_variants]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_variants]') AND type in (N'U'))
DROP TABLE [dbo].[spree_variants]
GO
/****** Object:  Table [dbo].[spree_users]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_users]') AND type in (N'U'))
DROP TABLE [dbo].[spree_users]
GO
/****** Object:  Table [dbo].[spree_trackers]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_trackers]') AND type in (N'U'))
DROP TABLE [dbo].[spree_trackers]
GO
/****** Object:  Table [dbo].[spree_taxons]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_taxons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_taxons]
GO
/****** Object:  Table [dbo].[spree_taxonomies]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_taxonomies]') AND type in (N'U'))
DROP TABLE [dbo].[spree_taxonomies]
GO
/****** Object:  Table [dbo].[spree_tax_rates]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_tax_rates]') AND type in (N'U'))
DROP TABLE [dbo].[spree_tax_rates]
GO
/****** Object:  Table [dbo].[spree_tax_categories]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_tax_categories]') AND type in (N'U'))
DROP TABLE [dbo].[spree_tax_categories]
GO
/****** Object:  Table [dbo].[spree_stores]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_stores]') AND type in (N'U'))
DROP TABLE [dbo].[spree_stores]
GO
/****** Object:  Table [dbo].[spree_store_credits]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_store_credits]') AND type in (N'U'))
DROP TABLE [dbo].[spree_store_credits]
GO
/****** Object:  Table [dbo].[spree_store_credit_types]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_store_credit_types]') AND type in (N'U'))
DROP TABLE [dbo].[spree_store_credit_types]
GO
/****** Object:  Table [dbo].[spree_store_credit_events]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_store_credit_events]') AND type in (N'U'))
DROP TABLE [dbo].[spree_store_credit_events]
GO
/****** Object:  Table [dbo].[spree_store_credit_categories]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_store_credit_categories]') AND type in (N'U'))
DROP TABLE [dbo].[spree_store_credit_categories]
GO
/****** Object:  Table [dbo].[spree_stock_transfers]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_stock_transfers]') AND type in (N'U'))
DROP TABLE [dbo].[spree_stock_transfers]
GO
/****** Object:  Table [dbo].[spree_stock_movements]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_stock_movements]') AND type in (N'U'))
DROP TABLE [dbo].[spree_stock_movements]
GO
/****** Object:  Table [dbo].[spree_stock_locations]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_stock_locations]') AND type in (N'U'))
DROP TABLE [dbo].[spree_stock_locations]
GO
/****** Object:  Table [dbo].[spree_stock_items]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_stock_items]') AND type in (N'U'))
DROP TABLE [dbo].[spree_stock_items]
GO
/****** Object:  Table [dbo].[spree_states]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_states]') AND type in (N'U'))
DROP TABLE [dbo].[spree_states]
GO
/****** Object:  Table [dbo].[spree_state_changes]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_state_changes]') AND type in (N'U'))
DROP TABLE [dbo].[spree_state_changes]
GO
/****** Object:  Table [dbo].[spree_shipping_rates]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_rates]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_rates]
GO
/****** Object:  Table [dbo].[spree_shipping_methods]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_methods]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_methods]
GO
/****** Object:  Table [dbo].[spree_shipping_method_zones]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_method_zones]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_method_zones]
GO
/****** Object:  Table [dbo].[spree_shipping_method_categories]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_method_categories]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_method_categories]
GO
/****** Object:  Table [dbo].[spree_shipping_categories]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_categories]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_categories]
GO
/****** Object:  Table [dbo].[spree_shipments]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipments]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipments]
GO
/****** Object:  Table [dbo].[spree_roles]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_roles]') AND type in (N'U'))
DROP TABLE [dbo].[spree_roles]
GO
/****** Object:  Table [dbo].[spree_role_users]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_role_users]') AND type in (N'U'))
DROP TABLE [dbo].[spree_role_users]
GO
/****** Object:  Table [dbo].[spree_return_items]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_return_items]') AND type in (N'U'))
DROP TABLE [dbo].[spree_return_items]
GO
/****** Object:  Table [dbo].[spree_return_authorizations]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_return_authorizations]') AND type in (N'U'))
DROP TABLE [dbo].[spree_return_authorizations]
GO
/****** Object:  Table [dbo].[spree_return_authorization_reasons]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_return_authorization_reasons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_return_authorization_reasons]
GO
/****** Object:  Table [dbo].[spree_reimbursements]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_reimbursements]') AND type in (N'U'))
DROP TABLE [dbo].[spree_reimbursements]
GO
/****** Object:  Table [dbo].[spree_reimbursement_types]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_reimbursement_types]') AND type in (N'U'))
DROP TABLE [dbo].[spree_reimbursement_types]
GO
/****** Object:  Table [dbo].[spree_reimbursement_credits]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_reimbursement_credits]') AND type in (N'U'))
DROP TABLE [dbo].[spree_reimbursement_credits]
GO
/****** Object:  Table [dbo].[spree_refunds]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_refunds]') AND type in (N'U'))
DROP TABLE [dbo].[spree_refunds]
GO
/****** Object:  Table [dbo].[spree_refund_reasons]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_refund_reasons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_refund_reasons]
GO
/****** Object:  Table [dbo].[spree_prototypes]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_prototypes]') AND type in (N'U'))
DROP TABLE [dbo].[spree_prototypes]
GO
/****** Object:  Table [dbo].[spree_prototype_taxons]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_prototype_taxons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_prototype_taxons]
GO
/****** Object:  Table [dbo].[spree_property_prototypes]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_property_prototypes]') AND type in (N'U'))
DROP TABLE [dbo].[spree_property_prototypes]
GO
/****** Object:  Table [dbo].[spree_properties]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_properties]') AND type in (N'U'))
DROP TABLE [dbo].[spree_properties]
GO
/****** Object:  Table [dbo].[spree_promotions]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotions]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotions]
GO
/****** Object:  Table [dbo].[spree_promotion_rules]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_rules]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_rules]
GO
/****** Object:  Table [dbo].[spree_promotion_rule_users]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_rule_users]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_rule_users]
GO
/****** Object:  Table [dbo].[spree_promotion_rule_taxons]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_rule_taxons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_rule_taxons]
GO
/****** Object:  Table [dbo].[spree_promotion_categories]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_categories]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_categories]
GO
/****** Object:  Table [dbo].[spree_promotion_actions]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_actions]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_actions]
GO
/****** Object:  Table [dbo].[spree_promotion_action_line_items]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_action_line_items]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_action_line_items]
GO
/****** Object:  Table [dbo].[spree_products_taxons]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_products_taxons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_products_taxons]
GO
/****** Object:  Table [dbo].[spree_products]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_products]') AND type in (N'U'))
DROP TABLE [dbo].[spree_products]
GO
/****** Object:  Table [dbo].[spree_product_properties]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_product_properties]') AND type in (N'U'))
DROP TABLE [dbo].[spree_product_properties]
GO
/****** Object:  Table [dbo].[spree_product_promotion_rules]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_product_promotion_rules]') AND type in (N'U'))
DROP TABLE [dbo].[spree_product_promotion_rules]
GO
/****** Object:  Table [dbo].[spree_product_option_types]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_product_option_types]') AND type in (N'U'))
DROP TABLE [dbo].[spree_product_option_types]
GO
/****** Object:  Table [dbo].[spree_prices]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_prices]') AND type in (N'U'))
DROP TABLE [dbo].[spree_prices]
GO
/****** Object:  Table [dbo].[spree_preferences]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_preferences]') AND type in (N'U'))
DROP TABLE [dbo].[spree_preferences]
GO
/****** Object:  Table [dbo].[spree_payments]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_payments]') AND type in (N'U'))
DROP TABLE [dbo].[spree_payments]
GO
/****** Object:  Table [dbo].[spree_payment_methods]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_payment_methods]') AND type in (N'U'))
DROP TABLE [dbo].[spree_payment_methods]
GO
/****** Object:  Table [dbo].[spree_payment_capture_events]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_payment_capture_events]') AND type in (N'U'))
DROP TABLE [dbo].[spree_payment_capture_events]
GO
/****** Object:  Table [dbo].[spree_orders]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_orders]') AND type in (N'U'))
DROP TABLE [dbo].[spree_orders]
GO
/****** Object:  Table [dbo].[spree_order_promotions_notnull]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_order_promotions_notnull]') AND type in (N'U'))
DROP TABLE [dbo].[spree_order_promotions_notnull]
GO
/****** Object:  Table [dbo].[spree_order_promotions]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_order_promotions]') AND type in (N'U'))
DROP TABLE [dbo].[spree_order_promotions]
GO
/****** Object:  Table [dbo].[spree_option_values]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_option_values]') AND type in (N'U'))
DROP TABLE [dbo].[spree_option_values]
GO
/****** Object:  Table [dbo].[spree_option_value_variants]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_option_value_variants]') AND type in (N'U'))
DROP TABLE [dbo].[spree_option_value_variants]
GO
/****** Object:  Table [dbo].[spree_option_types]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_option_types]') AND type in (N'U'))
DROP TABLE [dbo].[spree_option_types]
GO
/****** Object:  Table [dbo].[spree_option_type_prototypes]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_option_type_prototypes]') AND type in (N'U'))
DROP TABLE [dbo].[spree_option_type_prototypes]
GO
/****** Object:  Table [dbo].[spree_oauth_applications]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_oauth_applications]') AND type in (N'U'))
DROP TABLE [dbo].[spree_oauth_applications]
GO
/****** Object:  Table [dbo].[spree_oauth_access_tokens]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_oauth_access_tokens]') AND type in (N'U'))
DROP TABLE [dbo].[spree_oauth_access_tokens]
GO
/****** Object:  Table [dbo].[spree_oauth_access_grants]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_oauth_access_grants]') AND type in (N'U'))
DROP TABLE [dbo].[spree_oauth_access_grants]
GO
/****** Object:  Table [dbo].[spree_log_entries]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_log_entries]') AND type in (N'U'))
DROP TABLE [dbo].[spree_log_entries]
GO
/****** Object:  Table [dbo].[spree_line_items]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_line_items]') AND type in (N'U'))
DROP TABLE [dbo].[spree_line_items]
GO
/****** Object:  Table [dbo].[spree_inventory_units]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_inventory_units]') AND type in (N'U'))
DROP TABLE [dbo].[spree_inventory_units]
GO
/****** Object:  Table [dbo].[spree_gateways]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_gateways]') AND type in (N'U'))
DROP TABLE [dbo].[spree_gateways]
GO
/****** Object:  Table [dbo].[spree_dummy_models]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_dummy_models]') AND type in (N'U'))
DROP TABLE [dbo].[spree_dummy_models]
GO
/****** Object:  Table [dbo].[spree_customer_returns]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_customer_returns]') AND type in (N'U'))
DROP TABLE [dbo].[spree_customer_returns]
GO
/****** Object:  Table [dbo].[spree_credit_cards]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_credit_cards]') AND type in (N'U'))
DROP TABLE [dbo].[spree_credit_cards]
GO
/****** Object:  Table [dbo].[spree_countries]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_countries]') AND type in (N'U'))
DROP TABLE [dbo].[spree_countries]
GO
/****** Object:  Table [dbo].[spree_calculators]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_calculators]') AND type in (N'U'))
DROP TABLE [dbo].[spree_calculators]
GO
/****** Object:  Table [dbo].[spree_assets]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_assets]') AND type in (N'U'))
DROP TABLE [dbo].[spree_assets]
GO
/****** Object:  Table [dbo].[spree_adjustments]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_adjustments]') AND type in (N'U'))
DROP TABLE [dbo].[spree_adjustments]
GO
/****** Object:  Table [dbo].[spree_addresses]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_addresses]') AND type in (N'U'))
DROP TABLE [dbo].[spree_addresses]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schema_migrations]') AND type in (N'U'))
DROP TABLE [dbo].[schema_migrations]
GO
/****** Object:  Table [dbo].[friendly_id_slugs]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[friendly_id_slugs]') AND type in (N'U'))
DROP TABLE [dbo].[friendly_id_slugs]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ar_internal_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[ar_internal_metadata]
GO
/****** Object:  Table [dbo].[active_storage_blobs]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[active_storage_blobs]') AND type in (N'U'))
DROP TABLE [dbo].[active_storage_blobs]
GO
/****** Object:  Table [dbo].[active_storage_attachments]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[active_storage_attachments]') AND type in (N'U'))
DROP TABLE [dbo].[active_storage_attachments]
GO
/****** Object:  Table [dbo].[action_text_rich_texts]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[action_text_rich_texts]') AND type in (N'U'))
DROP TABLE [dbo].[action_text_rich_texts]
GO
/****** Object:  Table [dbo].[action_mailbox_inbound_emails]    Script Date: 2021/8/5 10:47:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[action_mailbox_inbound_emails]') AND type in (N'U'))
DROP TABLE [dbo].[action_mailbox_inbound_emails]
GO
/****** Object:  Table [dbo].[action_mailbox_inbound_emails]    Script Date: 2021/8/5 10:47:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[action_mailbox_inbound_emails](
	[id] [bigint]  NOT NULL,
	[status] [int] NOT NULL,
	[message_id] [nvarchar](255) NOT NULL,
	[message_checksum] [nvarchar](255) NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_action_mailbox_inbound_emails_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [action_mailbox_inbound_emails$index_action_mailbox_inbound_emails_uniqueness] UNIQUE NONCLUSTERED 
(
	[message_id] ASC,
	[message_checksum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[action_text_rich_texts]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[action_text_rich_texts](
	[id] [bigint]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[body] [nvarchar](max) NULL,
	[record_type] [nvarchar](255) NOT NULL,
	[record_id] [bigint] NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_action_text_rich_texts_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [action_text_rich_texts$index_action_text_rich_texts_uniqueness] UNIQUE NONCLUSTERED 
(
	[record_type] ASC,
	[record_id] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[active_storage_attachments]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[active_storage_attachments](
	[id] [bigint]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[record_type] [nvarchar](255) NOT NULL,
	[record_id] [bigint] NOT NULL,
	[blob_id] [bigint] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_active_storage_attachments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [active_storage_attachments$index_active_storage_attachments_uniqueness] UNIQUE NONCLUSTERED 
(
	[record_type] ASC,
	[record_id] ASC,
	[name] ASC,
	[blob_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[active_storage_blobs]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[active_storage_blobs](
	[id] [bigint]  NOT NULL,
	[key] [nvarchar](255) NOT NULL,
	[filename] [nvarchar](255) NOT NULL,
	[content_type] [nvarchar](255) NULL,
	[metadata] [nvarchar](max) NULL,
	[byte_size] [bigint] NOT NULL,
	[checksum] [nvarchar](255) NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_active_storage_blobs_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [active_storage_blobs$index_active_storage_blobs_on_key] UNIQUE NONCLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ar_internal_metadata](
	[key] [nvarchar](255) NOT NULL,
	[value] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_ar_internal_metadata_key] PRIMARY KEY CLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[friendly_id_slugs]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[friendly_id_slugs](
	[id] [int]  NOT NULL,
	[slug] [nvarchar](255) NOT NULL,
	[sluggable_id] [int] NOT NULL,
	[sluggable_type] [nvarchar](50) NULL,
	[scope] [nvarchar](255) NULL,
	[created_at] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_friendly_id_slugs_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [friendly_id_slugs$index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope] UNIQUE NONCLUSTERED 
(
	[slug] ASC,
	[sluggable_type] ASC,
	[scope] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 10:47:19 ******/
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
/****** Object:  Table [dbo].[spree_addresses]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_addresses](
	[id] [int]  NOT NULL,
	[firstname] [nvarchar](255) NULL,
	[lastname] [nvarchar](255) NULL,
	[address1] [nvarchar](255) NULL,
	[address2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[zipcode] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[state_name] [nvarchar](255) NULL,
	[alternative_phone] [nvarchar](255) NULL,
	[company] [nvarchar](255) NULL,
	[state_id] [int] NULL,
	[country_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[user_id] [int] NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_spree_addresses_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_adjustments]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_adjustments](
	[id] [int]  NOT NULL,
	[source_type] [nvarchar](255) NULL,
	[source_id] [int] NULL,
	[adjustable_type] [nvarchar](255) NULL,
	[adjustable_id] [int] NULL,
	[amount] [decimal](10, 2) NULL,
	[label] [nvarchar](255) NULL,
	[mandatory] [smallint] NULL,
	[eligible] [smallint] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[state] [nvarchar](255) NULL,
	[order_id] [int] NOT NULL,
	[included] [smallint] NULL,
 CONSTRAINT [PK_spree_adjustments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_assets]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_assets](
	[id] [int]  NOT NULL,
	[viewable_type] [nvarchar](255) NULL,
	[viewable_id] [int] NULL,
	[attachment_width] [int] NULL,
	[attachment_height] [int] NULL,
	[attachment_file_size] [int] NULL,
	[position] [int] NULL,
	[attachment_content_type] [nvarchar](255) NULL,
	[attachment_file_name] [nvarchar](255) NULL,
	[type] [nvarchar](75) NULL,
	[attachment_updated_at] [datetime2](0) NULL,
	[alt] [nvarchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_spree_assets_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_calculators]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_calculators](
	[id] [int]  NOT NULL,
	[type] [nvarchar](255) NULL,
	[calculable_type] [nvarchar](255) NULL,
	[calculable_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[preferences] [nvarchar](max) NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_spree_calculators_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_countries]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_countries](
	[id] [int]  NOT NULL,
	[iso_name] [nvarchar](255) NULL,
	[iso] [nvarchar](255) NOT NULL,
	[iso3] [nvarchar](255) NOT NULL,
	[name] [nvarchar](255) NULL,
	[numcode] [int] NULL,
	[states_required] [smallint] NULL,
	[updated_at] [datetime2](0) NULL,
	[zipcode_required] [smallint] NULL,
 CONSTRAINT [PK_spree_countries_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_countries$index_spree_countries_on_iso] UNIQUE NONCLUSTERED 
(
	[iso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_countries$index_spree_countries_on_iso_name] UNIQUE NONCLUSTERED 
(
	[iso_name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_countries$index_spree_countries_on_iso3] UNIQUE NONCLUSTERED 
(
	[iso3] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_countries$index_spree_countries_on_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_credit_cards]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_credit_cards](
	[id] [int]  NOT NULL,
	[month] [nvarchar](255) NULL,
	[year] [nvarchar](255) NULL,
	[cc_type] [nvarchar](255) NULL,
	[last_digits] [nvarchar](255) NULL,
	[address_id] [int] NULL,
	[gateway_customer_profile_id] [nvarchar](255) NULL,
	[gateway_payment_profile_id] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[name] [nvarchar](255) NULL,
	[user_id] [int] NULL,
	[payment_method_id] [int] NULL,
	[default] [smallint] NOT NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_spree_credit_cards_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_customer_returns]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_customer_returns](
	[id] [int]  NOT NULL,
	[number] [nvarchar](255) NULL,
	[stock_location_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_customer_returns_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_customer_returns$index_spree_customer_returns_on_number] UNIQUE NONCLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_dummy_models]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_dummy_models](
	[id] [bigint]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[position] [int] NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_spree_dummy_models_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_gateways]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_gateways](
	[id] [int]  NOT NULL,
	[type] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[active] [smallint] NULL,
	[environment] [nvarchar](255) NULL,
	[server] [nvarchar](255) NULL,
	[test_mode] [smallint] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[preferences] [nvarchar](max) NULL,
 CONSTRAINT [PK_spree_gateways_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_inventory_units]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_inventory_units](
	[id] [int]  NOT NULL,
	[state] [nvarchar](255) NULL,
	[variant_id] [int] NULL,
	[order_id] [int] NULL,
	[shipment_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[pending] [smallint] NULL,
	[line_item_id] [int] NULL,
	[quantity] [int] NULL,
	[original_return_item_id] [int] NULL,
 CONSTRAINT [PK_spree_inventory_units_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_line_items]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_line_items](
	[id] [int]  NOT NULL,
	[variant_id] [int] NULL,
	[order_id] [int] NULL,
	[quantity] [int] NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[currency] [nvarchar](255) NULL,
	[cost_price] [decimal](10, 2) NULL,
	[tax_category_id] [int] NULL,
	[adjustment_total] [decimal](10, 2) NULL,
	[additional_tax_total] [decimal](10, 2) NULL,
	[promo_total] [decimal](10, 2) NULL,
	[included_tax_total] [decimal](10, 2) NOT NULL,
	[pre_tax_amount] [decimal](12, 4) NOT NULL,
	[taxable_adjustment_total] [decimal](10, 2) NOT NULL,
	[non_taxable_adjustment_total] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_spree_line_items_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_log_entries]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_log_entries](
	[id] [int]  NOT NULL,
	[source_type] [nvarchar](255) NULL,
	[source_id] [int] NULL,
	[details] [nvarchar](max) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_log_entries_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_oauth_access_grants]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_oauth_access_grants](
	[id] [bigint]  NOT NULL,
	[resource_owner_id] [int] NOT NULL,
	[application_id] [bigint] NOT NULL,
	[token] [nvarchar](255) NOT NULL,
	[expires_in] [int] NOT NULL,
	[redirect_uri] [nvarchar](max) NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[revoked_at] [datetime2](0) NULL,
	[scopes] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_oauth_access_grants_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_oauth_access_grants$index_spree_oauth_access_grants_on_token] UNIQUE NONCLUSTERED 
(
	[token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_oauth_access_tokens]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_oauth_access_tokens](
	[id] [bigint]  NOT NULL,
	[resource_owner_id] [int] NULL,
	[application_id] [bigint] NULL,
	[token] [nvarchar](255) NOT NULL,
	[refresh_token] [nvarchar](255) NULL,
	[expires_in] [int] NULL,
	[revoked_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[scopes] [nvarchar](255) NULL,
	[previous_refresh_token] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_spree_oauth_access_tokens_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_oauth_access_tokens$index_spree_oauth_access_tokens_on_refresh_token] UNIQUE NONCLUSTERED 
(
	[refresh_token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_oauth_access_tokens$index_spree_oauth_access_tokens_on_token] UNIQUE NONCLUSTERED 
(
	[token] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_oauth_applications]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_oauth_applications](
	[id] [bigint]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[uid] [nvarchar](255) NOT NULL,
	[secret] [nvarchar](255) NOT NULL,
	[redirect_uri] [nvarchar](max) NOT NULL,
	[scopes] [nvarchar](255) NOT NULL,
	[confidential] [smallint] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_spree_oauth_applications_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_oauth_applications$index_spree_oauth_applications_on_uid] UNIQUE NONCLUSTERED 
(
	[uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_option_type_prototypes]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_option_type_prototypes](
	[prototype_id] [int] NULL,
	[option_type_id] [int] NULL,
	[id] [int]  NOT NULL,
 CONSTRAINT [PK_spree_option_type_prototypes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_option_type_prototypes$spree_option_type_prototypes_prototype_id_option_type_id] UNIQUE NONCLUSTERED 
(
	[prototype_id] ASC,
	[option_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_option_types]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_option_types](
	[id] [int]  NOT NULL,
	[name] [nvarchar](100) NULL,
	[presentation] [nvarchar](100) NULL,
	[position] [int] NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_option_types_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_option_value_variants]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_option_value_variants](
	[variant_id] [int] NULL,
	[option_value_id] [int] NULL,
	[id] [int]  NOT NULL,
 CONSTRAINT [PK_spree_option_value_variants_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_option_value_variants$index_option_values_variants_on_variant_id_and_option_value_id] UNIQUE NONCLUSTERED 
(
	[variant_id] ASC,
	[option_value_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_option_values]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_option_values](
	[id] [int]  NOT NULL,
	[position] [int] NULL,
	[name] [nvarchar](255) NULL,
	[presentation] [nvarchar](255) NULL,
	[option_type_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_option_values_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_order_promotions]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_order_promotions](
	[order_id] [int] NULL,
	[promotion_id] [int] NULL,
	[id] [int]  NOT NULL,
 CONSTRAINT [PK_spree_order_promotions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_order_promotions_notnull]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_order_promotions_notnull](
	[order_id] [int] NOT NULL,
	[promotion_id] [int] NOT NULL,
	[id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_orders]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_orders](
	[id] [int]  NOT NULL,
	[number] [nvarchar](32) NULL,
	[item_total] [decimal](10, 2) NOT NULL,
	[total] [decimal](10, 2) NOT NULL,
	[state] [nvarchar](255) NULL,
	[adjustment_total] [decimal](10, 2) NOT NULL,
	[user_id] [int] NULL,
	[completed_at] [datetime2](0) NULL,
	[bill_address_id] [int] NULL,
	[ship_address_id] [int] NULL,
	[payment_total] [decimal](10, 2) NULL,
	[shipment_state] [nvarchar](255) NULL,
	[payment_state] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[special_instructions] [nvarchar](max) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[currency] [nvarchar](255) NULL,
	[last_ip_address] [nvarchar](255) NULL,
	[created_by_id] [int] NULL,
	[shipment_total] [decimal](10, 2) NOT NULL,
	[additional_tax_total] [decimal](10, 2) NULL,
	[promo_total] [decimal](10, 2) NULL,
	[channel] [nvarchar](255) NULL,
	[included_tax_total] [decimal](10, 2) NOT NULL,
	[item_count] [int] NULL,
	[approver_id] [int] NULL,
	[approved_at] [datetime2](0) NULL,
	[confirmation_delivered] [smallint] NULL,
	[considered_risky] [smallint] NULL,
	[token] [nvarchar](255) NULL,
	[canceled_at] [datetime2](0) NULL,
	[canceler_id] [int] NULL,
	[store_id] [int] NULL,
	[state_lock_version] [int] NOT NULL,
	[taxable_adjustment_total] [decimal](10, 2) NOT NULL,
	[non_taxable_adjustment_total] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_spree_orders_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_orders$index_spree_orders_on_number] UNIQUE NONCLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_payment_capture_events]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_payment_capture_events](
	[id] [int]  NOT NULL,
	[amount] [decimal](10, 2) NULL,
	[payment_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_payment_capture_events_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_payment_methods]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_payment_methods](
	[id] [int]  NOT NULL,
	[type] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](max) NULL,
	[active] [smallint] NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[display_on] [nvarchar](255) NULL,
	[auto_capture] [smallint] NULL,
	[preferences] [nvarchar](max) NULL,
	[position] [int] NULL,
	[store_id] [bigint] NULL,
 CONSTRAINT [PK_spree_payment_methods_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_payments]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_payments](
	[id] [int]  NOT NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[order_id] [int] NULL,
	[source_type] [nvarchar](255) NULL,
	[source_id] [int] NULL,
	[payment_method_id] [int] NULL,
	[state] [nvarchar](255) NULL,
	[response_code] [nvarchar](255) NULL,
	[avs_response] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[number] [nvarchar](255) NULL,
	[cvv_response_code] [nvarchar](255) NULL,
	[cvv_response_message] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_payments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_payments$index_spree_payments_on_number] UNIQUE NONCLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_preferences]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_preferences](
	[id] [int]  NOT NULL,
	[value] [nvarchar](max) NULL,
	[key] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_preferences_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_preferences$index_spree_preferences_on_key] UNIQUE NONCLUSTERED 
(
	[key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_prices]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_prices](
	[id] [int]  NOT NULL,
	[variant_id] [int] NOT NULL,
	[amount] [decimal](10, 2) NULL,
	[currency] [nvarchar](255) NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_spree_prices_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_product_option_types]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_product_option_types](
	[id] [int]  NOT NULL,
	[position] [int] NULL,
	[product_id] [int] NULL,
	[option_type_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_product_option_types_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_product_promotion_rules]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_product_promotion_rules](
	[product_id] [int] NULL,
	[promotion_rule_id] [int] NULL,
	[id] [int]  NOT NULL,
 CONSTRAINT [PK_spree_product_promotion_rules_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_product_properties]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_product_properties](
	[id] [int]  NOT NULL,
	[value] [nvarchar](255) NULL,
	[product_id] [int] NULL,
	[property_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[position] [int] NULL,
 CONSTRAINT [PK_spree_product_properties_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_products]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_products](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[description] [nvarchar](max) NULL,
	[available_on] [datetime2](0) NULL,
	[discontinue_on] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
	[slug] [nvarchar](255) NULL,
	[meta_description] [nvarchar](max) NULL,
	[meta_keywords] [nvarchar](255) NULL,
	[tax_category_id] [int] NULL,
	[shipping_category_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[promotionable] [smallint] NULL,
	[meta_title] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_products_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_products$index_spree_products_on_slug] UNIQUE NONCLUSTERED 
(
	[slug] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_products_taxons]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_products_taxons](
	[product_id] [int] NOT NULL,
	[taxon_id] [int] NOT NULL,
	[id] [int]  NOT NULL,
	[position] [int] NULL,
 CONSTRAINT [PK_spree_products_taxons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_action_line_items]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_action_line_items](
	[id] [int]  NOT NULL,
	[promotion_action_id] [int] NULL,
	[variant_id] [int] NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_spree_promotion_action_line_items_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_actions]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_actions](
	[id] [int]  NOT NULL,
	[promotion_id] [int] NULL,
	[position] [int] NULL,
	[type] [nvarchar](255) NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_spree_promotion_actions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_categories]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_categories](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[code] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_promotion_categories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_rule_taxons]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_rule_taxons](
	[id] [int]  NOT NULL,
	[taxon_id] [int] NOT NULL,
	[promotion_rule_id] [int] NULL,
 CONSTRAINT [PK_spree_promotion_rule_taxons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_rule_users]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_rule_users](
	[user_id] [int] NULL,
	[promotion_rule_id] [int] NULL,
	[id] [int]  NOT NULL,
 CONSTRAINT [PK_spree_promotion_rule_users_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_rules]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_rules](
	[id] [int]  NOT NULL,
	[promotion_id] [int] NULL,
	[user_id] [int] NULL,
	[product_group_id] [int] NULL,
	[type] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[code] [nvarchar](255) NULL,
	[preferences] [nvarchar](max) NULL,
 CONSTRAINT [PK_spree_promotion_rules_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_promotions]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotions](
	[id] [int]  NOT NULL,
	[description] [nvarchar](255) NULL,
	[expires_at] [datetime2](0) NULL,
	[starts_at] [datetime2](0) NULL,
	[name] [nvarchar](255) NULL,
	[type] [nvarchar](255) NULL,
	[usage_limit] [int] NULL,
	[match_policy] [nvarchar](255) NULL,
	[code] [nvarchar](255) NULL,
	[advertise] [smallint] NULL,
	[path] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[promotion_category_id] [int] NULL,
 CONSTRAINT [PK_spree_promotions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_promotions$index_spree_promotions_on_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_properties]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_properties](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[presentation] [nvarchar](255) NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_properties_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_property_prototypes]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_property_prototypes](
	[prototype_id] [int] NULL,
	[property_id] [int] NULL,
	[id] [int]  NOT NULL,
 CONSTRAINT [PK_spree_property_prototypes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_property_prototypes$index_property_prototypes_on_prototype_id_and_property_id] UNIQUE NONCLUSTERED 
(
	[prototype_id] ASC,
	[property_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_prototype_taxons]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_prototype_taxons](
	[id] [int]  NOT NULL,
	[taxon_id] [int] NULL,
	[prototype_id] [int] NULL,
 CONSTRAINT [PK_spree_prototype_taxons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_prototypes]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_prototypes](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_prototypes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_refund_reasons]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_refund_reasons](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[active] [smallint] NULL,
	[mutable] [smallint] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_refund_reasons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_refund_reasons$index_spree_refund_reasons_on_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_refunds]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_refunds](
	[id] [int]  NOT NULL,
	[payment_id] [int] NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[transaction_id] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[refund_reason_id] [int] NULL,
	[reimbursement_id] [int] NULL,
 CONSTRAINT [PK_spree_refunds_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_reimbursement_credits]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_reimbursement_credits](
	[id] [int]  NOT NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[reimbursement_id] [int] NULL,
	[creditable_id] [int] NULL,
	[creditable_type] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_reimbursement_credits_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_reimbursement_types]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_reimbursement_types](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[active] [smallint] NULL,
	[mutable] [smallint] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[type] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_reimbursement_types_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_reimbursement_types$index_spree_reimbursement_types_on_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_reimbursements]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_reimbursements](
	[id] [int]  NOT NULL,
	[number] [nvarchar](255) NULL,
	[reimbursement_status] [nvarchar](255) NULL,
	[customer_return_id] [int] NULL,
	[order_id] [int] NULL,
	[total] [decimal](10, 2) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_reimbursements_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_reimbursements$index_spree_reimbursements_on_number] UNIQUE NONCLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_return_authorization_reasons]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_return_authorization_reasons](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[active] [smallint] NULL,
	[mutable] [smallint] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_return_authorization_reasons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_return_authorization_reasons$index_spree_return_authorization_reasons_on_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_return_authorizations]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_return_authorizations](
	[id] [int]  NOT NULL,
	[number] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[order_id] [int] NULL,
	[memo] [nvarchar](max) NULL,
	[created_at] [datetime2](0) NULL,
	[updated_at] [datetime2](0) NULL,
	[stock_location_id] [int] NULL,
	[return_authorization_reason_id] [int] NULL,
 CONSTRAINT [PK_spree_return_authorizations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_return_authorizations$index_spree_return_authorizations_on_number] UNIQUE NONCLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_return_items]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_return_items](
	[id] [int]  NOT NULL,
	[return_authorization_id] [int] NULL,
	[inventory_unit_id] [int] NULL,
	[exchange_variant_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[pre_tax_amount] [decimal](12, 4) NOT NULL,
	[included_tax_total] [decimal](12, 4) NOT NULL,
	[additional_tax_total] [decimal](12, 4) NOT NULL,
	[reception_status] [nvarchar](255) NULL,
	[acceptance_status] [nvarchar](255) NULL,
	[customer_return_id] [int] NULL,
	[reimbursement_id] [int] NULL,
	[acceptance_status_errors] [nvarchar](max) NULL,
	[preferred_reimbursement_type_id] [int] NULL,
	[override_reimbursement_type_id] [int] NULL,
	[resellable] [smallint] NOT NULL,
 CONSTRAINT [PK_spree_return_items_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_role_users]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_role_users](
	[role_id] [int] NULL,
	[user_id] [int] NULL,
	[id] [int]  NOT NULL,
 CONSTRAINT [PK_spree_role_users_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_roles]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_roles](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_roles_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_roles$index_spree_roles_on_name] UNIQUE NONCLUSTERED 
(
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipments]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipments](
	[id] [int]  NOT NULL,
	[tracking] [nvarchar](255) NULL,
	[number] [nvarchar](255) NULL,
	[cost] [decimal](10, 2) NULL,
	[shipped_at] [datetime2](0) NULL,
	[order_id] [int] NULL,
	[address_id] [int] NULL,
	[state] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[stock_location_id] [int] NULL,
	[adjustment_total] [decimal](10, 2) NULL,
	[additional_tax_total] [decimal](10, 2) NULL,
	[promo_total] [decimal](10, 2) NULL,
	[included_tax_total] [decimal](10, 2) NOT NULL,
	[pre_tax_amount] [decimal](12, 4) NOT NULL,
	[taxable_adjustment_total] [decimal](10, 2) NOT NULL,
	[non_taxable_adjustment_total] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_spree_shipments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_shipments$index_spree_shipments_on_number] UNIQUE NONCLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipping_categories]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipping_categories](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_shipping_categories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipping_method_categories]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipping_method_categories](
	[id] [int]  NOT NULL,
	[shipping_method_id] [int] NOT NULL,
	[shipping_category_id] [int] NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_shipping_method_categories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_shipping_method_categories$unique_spree_shipping_method_categories] UNIQUE NONCLUSTERED 
(
	[shipping_category_id] ASC,
	[shipping_method_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipping_method_zones]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipping_method_zones](
	[shipping_method_id] [int] NULL,
	[zone_id] [int] NULL,
	[id] [int]  NOT NULL,
 CONSTRAINT [PK_spree_shipping_method_zones_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipping_methods]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipping_methods](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[display_on] [nvarchar](255) NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[tracking_url] [nvarchar](255) NULL,
	[admin_name] [nvarchar](255) NULL,
	[tax_category_id] [int] NULL,
	[code] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_shipping_methods_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipping_rates]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipping_rates](
	[id] [int]  NOT NULL,
	[shipment_id] [int] NULL,
	[shipping_method_id] [int] NULL,
	[selected] [smallint] NULL,
	[cost] [decimal](8, 2) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[tax_rate_id] [int] NULL,
 CONSTRAINT [PK_spree_shipping_rates_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_shipping_rates$spree_shipping_rates_join_index] UNIQUE NONCLUSTERED 
(
	[shipment_id] ASC,
	[shipping_method_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_state_changes]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_state_changes](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[previous_state] [nvarchar](255) NULL,
	[stateful_id] [int] NULL,
	[user_id] [int] NULL,
	[stateful_type] [nvarchar](255) NULL,
	[next_state] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_state_changes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_states]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_states](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[abbr] [nvarchar](255) NULL,
	[country_id] [int] NULL,
	[updated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_spree_states_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_stock_items]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_stock_items](
	[id] [int]  NOT NULL,
	[stock_location_id] [int] NULL,
	[variant_id] [int] NULL,
	[count_on_hand] [int] NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[backorderable] [smallint] NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_spree_stock_items_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_stock_locations]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_stock_locations](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[default] [smallint] NOT NULL,
	[address1] [nvarchar](255) NULL,
	[address2] [nvarchar](255) NULL,
	[city] [nvarchar](255) NULL,
	[state_id] [int] NULL,
	[state_name] [nvarchar](255) NULL,
	[country_id] [int] NULL,
	[zipcode] [nvarchar](255) NULL,
	[phone] [nvarchar](255) NULL,
	[active] [smallint] NULL,
	[backorderable_default] [smallint] NULL,
	[propagate_all_variants] [smallint] NULL,
	[admin_name] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_stock_locations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_stock_movements]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_stock_movements](
	[id] [int]  NOT NULL,
	[stock_item_id] [int] NULL,
	[quantity] [int] NULL,
	[action] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[originator_type] [nvarchar](255) NULL,
	[originator_id] [int] NULL,
 CONSTRAINT [PK_spree_stock_movements_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_stock_transfers]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_stock_transfers](
	[id] [int]  NOT NULL,
	[type] [nvarchar](255) NULL,
	[reference] [nvarchar](255) NULL,
	[source_location_id] [int] NULL,
	[destination_location_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[number] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_stock_transfers_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_stock_transfers$index_spree_stock_transfers_on_number] UNIQUE NONCLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_store_credit_categories]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_store_credit_categories](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_store_credit_categories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_store_credit_events]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_store_credit_events](
	[id] [int]  NOT NULL,
	[store_credit_id] [int] NOT NULL,
	[action] [nvarchar](255) NOT NULL,
	[amount] [decimal](8, 2) NULL,
	[authorization_code] [nvarchar](255) NOT NULL,
	[user_total_amount] [decimal](8, 2) NOT NULL,
	[originator_id] [int] NULL,
	[originator_type] [nvarchar](255) NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_store_credit_events_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_store_credit_types]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_store_credit_types](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[priority] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_store_credit_types_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_store_credits]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_store_credits](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[category_id] [int] NULL,
	[created_by_id] [int] NULL,
	[amount] [decimal](8, 2) NOT NULL,
	[amount_used] [decimal](8, 2) NOT NULL,
	[memo] [nvarchar](max) NULL,
	[deleted_at] [datetime2](0) NULL,
	[currency] [nvarchar](255) NULL,
	[amount_authorized] [decimal](8, 2) NOT NULL,
	[originator_id] [int] NULL,
	[originator_type] [nvarchar](255) NULL,
	[type_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_store_credits_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_stores]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_stores](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[url] [nvarchar](255) NULL,
	[meta_description] [nvarchar](max) NULL,
	[meta_keywords] [nvarchar](max) NULL,
	[seo_title] [nvarchar](255) NULL,
	[mail_from_address] [nvarchar](255) NULL,
	[default_currency] [nvarchar](255) NULL,
	[code] [nvarchar](255) NULL,
	[default] [smallint] NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[facebook] [nvarchar](255) NULL,
	[twitter] [nvarchar](255) NULL,
	[instagram] [nvarchar](255) NULL,
	[default_locale] [nvarchar](255) NULL,
	[customer_support_email] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_stores_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_stores$index_spree_stores_on_code] UNIQUE NONCLUSTERED 
(
	[code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_tax_categories]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_tax_categories](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[is_default] [smallint] NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[tax_code] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_tax_categories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_tax_rates]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_tax_rates](
	[id] [int]  NOT NULL,
	[amount] [decimal](8, 5) NULL,
	[zone_id] [int] NULL,
	[tax_category_id] [int] NULL,
	[included_in_price] [smallint] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[name] [nvarchar](255) NULL,
	[show_rate_in_label] [smallint] NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_spree_tax_rates_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_taxonomies]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_taxonomies](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[position] [int] NULL,
 CONSTRAINT [PK_spree_taxonomies_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_taxons]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_taxons](
	[id] [int]  NOT NULL,
	[parent_id] [int] NULL,
	[position] [int] NULL,
	[name] [nvarchar](255) NOT NULL,
	[permalink] [nvarchar](255) NULL,
	[taxonomy_id] [int] NULL,
	[lft] [int] NULL,
	[rgt] [int] NULL,
	[description] [nvarchar](max) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[meta_title] [nvarchar](255) NULL,
	[meta_description] [nvarchar](255) NULL,
	[meta_keywords] [nvarchar](255) NULL,
	[depth] [int] NULL,
	[hide_from_nav] [smallint] NULL,
 CONSTRAINT [PK_spree_taxons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_trackers]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_trackers](
	[id] [int]  NOT NULL,
	[analytics_id] [nvarchar](255) NULL,
	[active] [smallint] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[engine] [int] NOT NULL,
 CONSTRAINT [PK_spree_trackers_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_users]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_users](
	[id] [int]  NOT NULL,
	[encrypted_password] [nvarchar](128) NULL,
	[password_salt] [nvarchar](128) NULL,
	[email] [nvarchar](255) NULL,
	[remember_token] [nvarchar](255) NULL,
	[persistence_token] [nvarchar](255) NULL,
	[reset_password_token] [nvarchar](255) NULL,
	[perishable_token] [nvarchar](255) NULL,
	[sign_in_count] [int] NOT NULL,
	[failed_attempts] [int] NOT NULL,
	[last_request_at] [datetime2](0) NULL,
	[current_sign_in_at] [datetime2](0) NULL,
	[last_sign_in_at] [datetime2](0) NULL,
	[current_sign_in_ip] [nvarchar](255) NULL,
	[last_sign_in_ip] [nvarchar](255) NULL,
	[login] [nvarchar](255) NULL,
	[ship_address_id] [int] NULL,
	[bill_address_id] [int] NULL,
	[authentication_token] [nvarchar](255) NULL,
	[unlock_token] [nvarchar](255) NULL,
	[locked_at] [datetime2](0) NULL,
	[remember_created_at] [datetime2](0) NULL,
	[reset_password_sent_at] [datetime2](0) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[spree_api_key] [nvarchar](48) NULL,
 CONSTRAINT [PK_spree_users_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_variants]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_variants](
	[id] [int]  NOT NULL,
	[sku] [nvarchar](255) NOT NULL,
	[weight] [decimal](8, 2) NULL,
	[height] [decimal](8, 2) NULL,
	[width] [decimal](8, 2) NULL,
	[depth] [decimal](8, 2) NULL,
	[deleted_at] [datetime2](0) NULL,
	[discontinue_on] [datetime2](0) NULL,
	[is_master] [smallint] NULL,
	[product_id] [int] NULL,
	[cost_price] [decimal](10, 2) NULL,
	[cost_currency] [nvarchar](255) NULL,
	[position] [int] NULL,
	[track_inventory] [smallint] NULL,
	[tax_category_id] [int] NULL,
	[updated_at] [datetime2](0) NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[count_on_hand] [int] NOT NULL,
 CONSTRAINT [PK_spree_variants_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_zone_members]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_zone_members](
	[id] [int]  NOT NULL,
	[zoneable_type] [nvarchar](255) NULL,
	[zoneable_id] [int] NULL,
	[zone_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_zone_members_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_zones]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_zones](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[default_tax] [smallint] NULL,
	[zone_members_count] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[kind] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_zones_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [spree_base].[spree_order_promotions_notnull]    Script Date: 2021/8/5 10:47:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [spree_base].[spree_order_promotions_notnull](
	[order_id] [int] NOT NULL,
	[promotion_id] [int] NOT NULL,
	[id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[action_mailbox_inbound_emails] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[active_storage_blobs] ADD  DEFAULT (NULL) FOR [content_type]
GO
ALTER TABLE [dbo].[ar_internal_metadata] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[friendly_id_slugs] ADD  DEFAULT (NULL) FOR [sluggable_type]
GO
ALTER TABLE [dbo].[friendly_id_slugs] ADD  DEFAULT (NULL) FOR [scope]
GO
ALTER TABLE [dbo].[friendly_id_slugs] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[friendly_id_slugs] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [firstname]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [lastname]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [address1]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [address2]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [city]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [zipcode]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [state_name]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [alternative_phone]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [company]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [state_id]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [country_id]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [source_type]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [source_id]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [adjustable_type]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [adjustable_id]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [amount]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [label]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [mandatory]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT ((1)) FOR [eligible]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT ((0)) FOR [included]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [viewable_type]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [viewable_id]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [attachment_width]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [attachment_height]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [attachment_file_size]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [attachment_content_type]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [attachment_file_name]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [attachment_updated_at]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_assets] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_calculators] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_calculators] ADD  DEFAULT (NULL) FOR [calculable_type]
GO
ALTER TABLE [dbo].[spree_calculators] ADD  DEFAULT (NULL) FOR [calculable_id]
GO
ALTER TABLE [dbo].[spree_calculators] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT (NULL) FOR [iso_name]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT (NULL) FOR [numcode]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT ((0)) FOR [states_required]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT ((1)) FOR [zipcode_required]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [month]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [year]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [cc_type]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [last_digits]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [address_id]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [gateway_customer_profile_id]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [gateway_payment_profile_id]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [payment_method_id]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT ((0)) FOR [default]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_customer_returns] ADD  DEFAULT (NULL) FOR [number]
GO
ALTER TABLE [dbo].[spree_customer_returns] ADD  DEFAULT (NULL) FOR [stock_location_id]
GO
ALTER TABLE [dbo].[spree_dummy_models] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_dummy_models] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[spree_gateways] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_gateways] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_gateways] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_gateways] ADD  DEFAULT (N'development') FOR [environment]
GO
ALTER TABLE [dbo].[spree_gateways] ADD  DEFAULT (N'test') FOR [server]
GO
ALTER TABLE [dbo].[spree_gateways] ADD  DEFAULT ((1)) FOR [test_mode]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [variant_id]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [order_id]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [shipment_id]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT ((1)) FOR [pending]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [line_item_id]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT ((1)) FOR [quantity]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [original_return_item_id]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT (NULL) FOR [variant_id]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT (NULL) FOR [order_id]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT (NULL) FOR [currency]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT (NULL) FOR [cost_price]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT (NULL) FOR [tax_category_id]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT ((0.00)) FOR [adjustment_total]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT ((0.00)) FOR [additional_tax_total]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT ((0.00)) FOR [promo_total]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT ((0.00)) FOR [included_tax_total]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT ((0.0000)) FOR [pre_tax_amount]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT ((0.00)) FOR [taxable_adjustment_total]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT ((0.00)) FOR [non_taxable_adjustment_total]
GO
ALTER TABLE [dbo].[spree_log_entries] ADD  DEFAULT (NULL) FOR [source_type]
GO
ALTER TABLE [dbo].[spree_log_entries] ADD  DEFAULT (NULL) FOR [source_id]
GO
ALTER TABLE [dbo].[spree_oauth_access_grants] ADD  DEFAULT (NULL) FOR [revoked_at]
GO
ALTER TABLE [dbo].[spree_oauth_access_grants] ADD  DEFAULT (NULL) FOR [scopes]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] ADD  DEFAULT (NULL) FOR [resource_owner_id]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] ADD  DEFAULT (NULL) FOR [application_id]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] ADD  DEFAULT (NULL) FOR [refresh_token]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] ADD  DEFAULT (NULL) FOR [expires_in]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] ADD  DEFAULT (NULL) FOR [revoked_at]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] ADD  DEFAULT (NULL) FOR [scopes]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] ADD  DEFAULT (N'') FOR [previous_refresh_token]
GO
ALTER TABLE [dbo].[spree_oauth_applications] ADD  DEFAULT (N'') FOR [scopes]
GO
ALTER TABLE [dbo].[spree_oauth_applications] ADD  DEFAULT ((1)) FOR [confidential]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] ADD  DEFAULT (NULL) FOR [prototype_id]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] ADD  DEFAULT (NULL) FOR [option_type_id]
GO
ALTER TABLE [dbo].[spree_option_types] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_option_types] ADD  DEFAULT (NULL) FOR [presentation]
GO
ALTER TABLE [dbo].[spree_option_types] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[spree_option_value_variants] ADD  DEFAULT (NULL) FOR [variant_id]
GO
ALTER TABLE [dbo].[spree_option_value_variants] ADD  DEFAULT (NULL) FOR [option_value_id]
GO
ALTER TABLE [dbo].[spree_option_values] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[spree_option_values] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_option_values] ADD  DEFAULT (NULL) FOR [presentation]
GO
ALTER TABLE [dbo].[spree_option_values] ADD  DEFAULT (NULL) FOR [option_type_id]
GO
ALTER TABLE [dbo].[spree_order_promotions] ADD  DEFAULT (NULL) FOR [order_id]
GO
ALTER TABLE [dbo].[spree_order_promotions] ADD  DEFAULT (NULL) FOR [promotion_id]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [number]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0.00)) FOR [item_total]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0.00)) FOR [total]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0.00)) FOR [adjustment_total]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [completed_at]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [bill_address_id]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [ship_address_id]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0.00)) FOR [payment_total]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [shipment_state]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [payment_state]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [currency]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [last_ip_address]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [created_by_id]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0.00)) FOR [shipment_total]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0.00)) FOR [additional_tax_total]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0.00)) FOR [promo_total]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (N'spree') FOR [channel]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0.00)) FOR [included_tax_total]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0)) FOR [item_count]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [approver_id]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [approved_at]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0)) FOR [confirmation_delivered]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0)) FOR [considered_risky]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [token]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [canceled_at]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [canceler_id]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [store_id]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0)) FOR [state_lock_version]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0.00)) FOR [taxable_adjustment_total]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((0.00)) FOR [non_taxable_adjustment_total]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] ADD  DEFAULT ((0.00)) FOR [amount]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] ADD  DEFAULT (NULL) FOR [payment_id]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (N'both') FOR [display_on]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [auto_capture]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [store_id]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT ((0.00)) FOR [amount]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [order_id]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [source_type]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [source_id]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [payment_method_id]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [response_code]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [avs_response]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [number]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [cvv_response_code]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [cvv_response_message]
GO
ALTER TABLE [dbo].[spree_preferences] ADD  DEFAULT (NULL) FOR [key]
GO
ALTER TABLE [dbo].[spree_prices] ADD  DEFAULT (NULL) FOR [amount]
GO
ALTER TABLE [dbo].[spree_prices] ADD  DEFAULT (NULL) FOR [currency]
GO
ALTER TABLE [dbo].[spree_prices] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_product_option_types] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[spree_product_option_types] ADD  DEFAULT (NULL) FOR [product_id]
GO
ALTER TABLE [dbo].[spree_product_option_types] ADD  DEFAULT (NULL) FOR [option_type_id]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] ADD  DEFAULT (NULL) FOR [product_id]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] ADD  DEFAULT (NULL) FOR [promotion_rule_id]
GO
ALTER TABLE [dbo].[spree_product_properties] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[spree_product_properties] ADD  DEFAULT (NULL) FOR [product_id]
GO
ALTER TABLE [dbo].[spree_product_properties] ADD  DEFAULT (NULL) FOR [property_id]
GO
ALTER TABLE [dbo].[spree_product_properties] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (NULL) FOR [available_on]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (NULL) FOR [discontinue_on]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (NULL) FOR [slug]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (NULL) FOR [meta_keywords]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (NULL) FOR [tax_category_id]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (NULL) FOR [shipping_category_id]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT ((1)) FOR [promotionable]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (NULL) FOR [meta_title]
GO
ALTER TABLE [dbo].[spree_products_taxons] ADD  DEFAULT (NULL) FOR [product_id]
GO
ALTER TABLE [dbo].[spree_products_taxons] ADD  DEFAULT (NULL) FOR [taxon_id]
GO
ALTER TABLE [dbo].[spree_products_taxons] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] ADD  DEFAULT (NULL) FOR [promotion_action_id]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] ADD  DEFAULT (NULL) FOR [variant_id]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] ADD  DEFAULT ((1)) FOR [quantity]
GO
ALTER TABLE [dbo].[spree_promotion_actions] ADD  DEFAULT (NULL) FOR [promotion_id]
GO
ALTER TABLE [dbo].[spree_promotion_actions] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[spree_promotion_actions] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_promotion_actions] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_promotion_categories] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_promotion_categories] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] ADD  DEFAULT (NULL) FOR [taxon_id]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] ADD  DEFAULT (NULL) FOR [promotion_rule_id]
GO
ALTER TABLE [dbo].[spree_promotion_rule_users] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_promotion_rule_users] ADD  DEFAULT (NULL) FOR [promotion_rule_id]
GO
ALTER TABLE [dbo].[spree_promotion_rules] ADD  DEFAULT (NULL) FOR [promotion_id]
GO
ALTER TABLE [dbo].[spree_promotion_rules] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_promotion_rules] ADD  DEFAULT (NULL) FOR [product_group_id]
GO
ALTER TABLE [dbo].[spree_promotion_rules] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_promotion_rules] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [expires_at]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [starts_at]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [usage_limit]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (N'all') FOR [match_policy]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT ((0)) FOR [advertise]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [path]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [promotion_category_id]
GO
ALTER TABLE [dbo].[spree_properties] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_property_prototypes] ADD  DEFAULT (NULL) FOR [prototype_id]
GO
ALTER TABLE [dbo].[spree_property_prototypes] ADD  DEFAULT (NULL) FOR [property_id]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] ADD  DEFAULT (NULL) FOR [taxon_id]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] ADD  DEFAULT (NULL) FOR [prototype_id]
GO
ALTER TABLE [dbo].[spree_prototypes] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_refund_reasons] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_refund_reasons] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_refund_reasons] ADD  DEFAULT ((1)) FOR [mutable]
GO
ALTER TABLE [dbo].[spree_refunds] ADD  DEFAULT (NULL) FOR [payment_id]
GO
ALTER TABLE [dbo].[spree_refunds] ADD  DEFAULT ((0.00)) FOR [amount]
GO
ALTER TABLE [dbo].[spree_refunds] ADD  DEFAULT (NULL) FOR [transaction_id]
GO
ALTER TABLE [dbo].[spree_refunds] ADD  DEFAULT (NULL) FOR [refund_reason_id]
GO
ALTER TABLE [dbo].[spree_refunds] ADD  DEFAULT (NULL) FOR [reimbursement_id]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] ADD  DEFAULT ((0.00)) FOR [amount]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] ADD  DEFAULT (NULL) FOR [reimbursement_id]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] ADD  DEFAULT (NULL) FOR [creditable_id]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] ADD  DEFAULT (NULL) FOR [creditable_type]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] ADD  DEFAULT ((1)) FOR [mutable]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_reimbursements] ADD  DEFAULT (NULL) FOR [number]
GO
ALTER TABLE [dbo].[spree_reimbursements] ADD  DEFAULT (NULL) FOR [reimbursement_status]
GO
ALTER TABLE [dbo].[spree_reimbursements] ADD  DEFAULT (NULL) FOR [customer_return_id]
GO
ALTER TABLE [dbo].[spree_reimbursements] ADD  DEFAULT (NULL) FOR [order_id]
GO
ALTER TABLE [dbo].[spree_reimbursements] ADD  DEFAULT (NULL) FOR [total]
GO
ALTER TABLE [dbo].[spree_return_authorization_reasons] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_return_authorization_reasons] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_return_authorization_reasons] ADD  DEFAULT ((1)) FOR [mutable]
GO
ALTER TABLE [dbo].[spree_return_authorizations] ADD  DEFAULT (NULL) FOR [number]
GO
ALTER TABLE [dbo].[spree_return_authorizations] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[spree_return_authorizations] ADD  DEFAULT (NULL) FOR [order_id]
GO
ALTER TABLE [dbo].[spree_return_authorizations] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_return_authorizations] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_return_authorizations] ADD  DEFAULT (NULL) FOR [stock_location_id]
GO
ALTER TABLE [dbo].[spree_return_authorizations] ADD  DEFAULT (NULL) FOR [return_authorization_reason_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [return_authorization_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [inventory_unit_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [exchange_variant_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT ((0.0000)) FOR [pre_tax_amount]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT ((0.0000)) FOR [included_tax_total]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT ((0.0000)) FOR [additional_tax_total]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [reception_status]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [acceptance_status]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [customer_return_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [reimbursement_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [preferred_reimbursement_type_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [override_reimbursement_type_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT ((1)) FOR [resellable]
GO
ALTER TABLE [dbo].[spree_role_users] ADD  DEFAULT (NULL) FOR [role_id]
GO
ALTER TABLE [dbo].[spree_role_users] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_roles] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT (NULL) FOR [tracking]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT (NULL) FOR [number]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT ((0.00)) FOR [cost]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT (NULL) FOR [shipped_at]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT (NULL) FOR [order_id]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT (NULL) FOR [address_id]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT (NULL) FOR [stock_location_id]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT ((0.00)) FOR [adjustment_total]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT ((0.00)) FOR [additional_tax_total]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT ((0.00)) FOR [promo_total]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT ((0.00)) FOR [included_tax_total]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT ((0.0000)) FOR [pre_tax_amount]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT ((0.00)) FOR [taxable_adjustment_total]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT ((0.00)) FOR [non_taxable_adjustment_total]
GO
ALTER TABLE [dbo].[spree_shipping_categories] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] ADD  DEFAULT (NULL) FOR [shipping_method_id]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] ADD  DEFAULT (NULL) FOR [zone_id]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [display_on]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [tracking_url]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [admin_name]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [tax_category_id]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[spree_shipping_rates] ADD  DEFAULT (NULL) FOR [shipment_id]
GO
ALTER TABLE [dbo].[spree_shipping_rates] ADD  DEFAULT (NULL) FOR [shipping_method_id]
GO
ALTER TABLE [dbo].[spree_shipping_rates] ADD  DEFAULT ((0)) FOR [selected]
GO
ALTER TABLE [dbo].[spree_shipping_rates] ADD  DEFAULT ((0.00)) FOR [cost]
GO
ALTER TABLE [dbo].[spree_shipping_rates] ADD  DEFAULT (NULL) FOR [tax_rate_id]
GO
ALTER TABLE [dbo].[spree_state_changes] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_state_changes] ADD  DEFAULT (NULL) FOR [previous_state]
GO
ALTER TABLE [dbo].[spree_state_changes] ADD  DEFAULT (NULL) FOR [stateful_id]
GO
ALTER TABLE [dbo].[spree_state_changes] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_state_changes] ADD  DEFAULT (NULL) FOR [stateful_type]
GO
ALTER TABLE [dbo].[spree_state_changes] ADD  DEFAULT (NULL) FOR [next_state]
GO
ALTER TABLE [dbo].[spree_states] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_states] ADD  DEFAULT (NULL) FOR [abbr]
GO
ALTER TABLE [dbo].[spree_states] ADD  DEFAULT (NULL) FOR [country_id]
GO
ALTER TABLE [dbo].[spree_states] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT (NULL) FOR [stock_location_id]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT (NULL) FOR [variant_id]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT ((0)) FOR [count_on_hand]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT ((0)) FOR [backorderable]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT ((0)) FOR [default]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [address1]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [address2]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [city]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [state_id]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [state_name]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [country_id]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [zipcode]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [phone]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT ((0)) FOR [backorderable_default]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT ((1)) FOR [propagate_all_variants]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [admin_name]
GO
ALTER TABLE [dbo].[spree_stock_movements] ADD  DEFAULT (NULL) FOR [stock_item_id]
GO
ALTER TABLE [dbo].[spree_stock_movements] ADD  DEFAULT ((0)) FOR [quantity]
GO
ALTER TABLE [dbo].[spree_stock_movements] ADD  DEFAULT (NULL) FOR [action]
GO
ALTER TABLE [dbo].[spree_stock_movements] ADD  DEFAULT (NULL) FOR [originator_type]
GO
ALTER TABLE [dbo].[spree_stock_movements] ADD  DEFAULT (NULL) FOR [originator_id]
GO
ALTER TABLE [dbo].[spree_stock_transfers] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_stock_transfers] ADD  DEFAULT (NULL) FOR [reference]
GO
ALTER TABLE [dbo].[spree_stock_transfers] ADD  DEFAULT (NULL) FOR [source_location_id]
GO
ALTER TABLE [dbo].[spree_stock_transfers] ADD  DEFAULT (NULL) FOR [destination_location_id]
GO
ALTER TABLE [dbo].[spree_stock_transfers] ADD  DEFAULT (NULL) FOR [number]
GO
ALTER TABLE [dbo].[spree_store_credit_categories] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [amount]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT ((0.00)) FOR [user_total_amount]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [originator_id]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [originator_type]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_store_credit_types] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_store_credit_types] ADD  DEFAULT (NULL) FOR [priority]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [category_id]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [created_by_id]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT ((0.00)) FOR [amount]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT ((0.00)) FOR [amount_used]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [currency]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT ((0.00)) FOR [amount_authorized]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [originator_id]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [originator_type]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [type_id]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [url]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [seo_title]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [mail_from_address]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [default_currency]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT ((0)) FOR [default]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [facebook]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [twitter]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [instagram]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [default_locale]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [customer_support_email]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT ((0)) FOR [is_default]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT (NULL) FOR [tax_code]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [amount]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [zone_id]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [tax_category_id]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT ((0)) FOR [included_in_price]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT ((1)) FOR [show_rate_in_label]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_taxonomies] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [parent_id]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [permalink]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [taxonomy_id]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [lft]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [rgt]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [meta_title]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [meta_description]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [meta_keywords]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [depth]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT ((0)) FOR [hide_from_nav]
GO
ALTER TABLE [dbo].[spree_trackers] ADD  DEFAULT (NULL) FOR [analytics_id]
GO
ALTER TABLE [dbo].[spree_trackers] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_trackers] ADD  DEFAULT ((0)) FOR [engine]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [encrypted_password]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [password_salt]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [remember_token]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [persistence_token]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [reset_password_token]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [perishable_token]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT ((0)) FOR [sign_in_count]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT ((0)) FOR [failed_attempts]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [last_request_at]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [current_sign_in_at]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [last_sign_in_at]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [current_sign_in_ip]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [last_sign_in_ip]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [login]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [ship_address_id]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [bill_address_id]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [authentication_token]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [unlock_token]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [locked_at]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [remember_created_at]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [reset_password_sent_at]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [spree_api_key]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (N'') FOR [sku]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT ((0.00)) FOR [weight]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [height]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [width]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [depth]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [discontinue_on]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT ((0)) FOR [is_master]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [product_id]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [cost_price]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [cost_currency]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT ((1)) FOR [track_inventory]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [tax_category_id]
GO
ALTER TABLE [dbo].[spree_zone_members] ADD  DEFAULT (NULL) FOR [zoneable_type]
GO
ALTER TABLE [dbo].[spree_zone_members] ADD  DEFAULT (NULL) FOR [zoneable_id]
GO
ALTER TABLE [dbo].[spree_zone_members] ADD  DEFAULT (NULL) FOR [zone_id]
GO
ALTER TABLE [dbo].[spree_zones] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_zones] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[spree_zones] ADD  DEFAULT ((0)) FOR [default_tax]
GO
ALTER TABLE [dbo].[spree_zones] ADD  DEFAULT ((0)) FOR [zone_members_count]
GO
ALTER TABLE [dbo].[spree_zones] ADD  DEFAULT (NULL) FOR [kind]
GO
ALTER TABLE [dbo].[active_storage_attachments]  WITH NOCHECK ADD  CONSTRAINT [active_storage_attachments$fk_rails_c3b3935057] FOREIGN KEY([blob_id])
REFERENCES [dbo].[active_storage_blobs] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[active_storage_attachments] CHECK CONSTRAINT [active_storage_attachments$fk_rails_c3b3935057]
GO
ALTER TABLE [dbo].[spree_oauth_access_grants]  WITH NOCHECK ADD  CONSTRAINT [spree_oauth_access_grants$fk_rails_8049be136c] FOREIGN KEY([application_id])
REFERENCES [dbo].[spree_oauth_applications] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spree_oauth_access_grants] CHECK CONSTRAINT [spree_oauth_access_grants$fk_rails_8049be136c]
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens]  WITH NOCHECK ADD  CONSTRAINT [spree_oauth_access_tokens$fk_rails_c9894c7021] FOREIGN KEY([application_id])
REFERENCES [dbo].[spree_oauth_applications] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spree_oauth_access_tokens] CHECK CONSTRAINT [spree_oauth_access_tokens$fk_rails_c9894c7021]
GO
ALTER TABLE [dbo].[spree_order_promotions]  WITH NOCHECK ADD  CONSTRAINT [FK_spree_order_promotions_spree_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[spree_orders] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spree_order_promotions] CHECK CONSTRAINT [FK_spree_order_promotions_spree_orders]
GO
ALTER TABLE [dbo].[spree_order_promotions]  WITH NOCHECK ADD  CONSTRAINT [FK_spree_order_promotions_spree_promotions] FOREIGN KEY([promotion_id])
REFERENCES [dbo].[spree_promotions] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spree_order_promotions] CHECK CONSTRAINT [FK_spree_order_promotions_spree_promotions]
GO
ALTER TABLE [dbo].[spree_products_taxons]  WITH NOCHECK ADD  CONSTRAINT [fk_spree_products_taxons_taxon_id] FOREIGN KEY([taxon_id])
REFERENCES [dbo].[spree_taxons] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spree_products_taxons] CHECK CONSTRAINT [fk_spree_products_taxons_taxon_id]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons]  WITH NOCHECK ADD  CONSTRAINT [FK_spree_promotion_rule_taxons_spree_taxons] FOREIGN KEY([taxon_id])
REFERENCES [dbo].[spree_taxons] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] CHECK CONSTRAINT [FK_spree_promotion_rule_taxons_spree_taxons]
GO
ALTER TABLE [spree_base].[spree_order_promotions_notnull]  WITH NOCHECK ADD  CONSTRAINT [FK_spree_order_promotions_notnull_spree_orders] FOREIGN KEY([order_id])
REFERENCES [dbo].[spree_orders] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [spree_base].[spree_order_promotions_notnull] CHECK CONSTRAINT [FK_spree_order_promotions_notnull_spree_orders]
GO
ALTER TABLE [spree_base].[spree_order_promotions_notnull]  WITH NOCHECK ADD  CONSTRAINT [FK_spree_order_promotions_notnull_spree_promotions] FOREIGN KEY([promotion_id])
REFERENCES [dbo].[spree_promotions] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [spree_base].[spree_order_promotions_notnull] CHECK CONSTRAINT [FK_spree_order_promotions_notnull_spree_promotions]
GO
