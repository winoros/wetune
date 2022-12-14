-- USE [solidus_base]
GO
ALTER TABLE [dbo].[spree_wallet_payment_sources] DROP CONSTRAINT [spree_wallet_payment_sources$fk_rails_5dd6e027c5]
GO
ALTER TABLE [dbo].[spree_tax_rate_tax_categories] DROP CONSTRAINT [spree_tax_rate_tax_categories$fk_rails_499313ce8e]
GO
ALTER TABLE [dbo].[spree_tax_rate_tax_categories] DROP CONSTRAINT [spree_tax_rate_tax_categories$fk_rails_3e6fe87e12]
GO
ALTER TABLE [dbo].[spree_promotion_codes] DROP CONSTRAINT [spree_promotion_codes$fk_rails_e306e312d9]
GO
ALTER TABLE [dbo].[spree_promotion_code_batches] DROP CONSTRAINT [spree_promotion_code_batches$fk_rails_c217102f50]
GO
ALTER TABLE [dbo].[active_storage_attachments] DROP CONSTRAINT [active_storage_attachments$fk_rails_c3b3935057]
GO
ALTER TABLE [dbo].[spree_zones] DROP CONSTRAINT [DF__spree_zon__updat__375B2DB9]
GO
ALTER TABLE [dbo].[spree_zones] DROP CONSTRAINT [DF__spree_zon__creat__36670980]
GO
ALTER TABLE [dbo].[spree_zones] DROP CONSTRAINT [DF__spree_zon__zone___3572E547]
GO
ALTER TABLE [dbo].[spree_zones] DROP CONSTRAINT [DF__spree_zon__descr__347EC10E]
GO
ALTER TABLE [dbo].[spree_zones] DROP CONSTRAINT [DF__spree_zone__name__338A9CD5]
GO
ALTER TABLE [dbo].[spree_zone_members] DROP CONSTRAINT [DF__spree_zon__updat__3296789C]
GO
ALTER TABLE [dbo].[spree_zone_members] DROP CONSTRAINT [DF__spree_zon__creat__31A25463]
GO
ALTER TABLE [dbo].[spree_zone_members] DROP CONSTRAINT [DF__spree_zon__zone___30AE302A]
GO
ALTER TABLE [dbo].[spree_zone_members] DROP CONSTRAINT [DF__spree_zon__zonea__2FBA0BF1]
GO
ALTER TABLE [dbo].[spree_zone_members] DROP CONSTRAINT [DF__spree_zon__zonea__2EC5E7B8]
GO
ALTER TABLE [dbo].[spree_wallet_payment_sources] DROP CONSTRAINT [DF__spree_wal__defau__2DD1C37F]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__creat__2CDD9F46]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__updat__2BE97B0D]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__tax_c__2AF556D4]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__track__2A01329B]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__cost___290D0E62]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__posit__2818EA29]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__cost___2724C5F0]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__produ__2630A1B7]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__is_ma__253C7D7E]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__delet__24485945]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__depth__2354350C]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__width__226010D3]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__heigh__216BEC9A]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_var__weigh__2077C861]
GO
ALTER TABLE [dbo].[spree_variants] DROP CONSTRAINT [DF__spree_varia__sku__1F83A428]
GO
ALTER TABLE [dbo].[spree_variant_property_rules] DROP CONSTRAINT [DF__spree_var__produ__1E8F7FEF]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_values] DROP CONSTRAINT [DF__spree_var__updat__1D9B5BB6]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_values] DROP CONSTRAINT [DF__spree_var__creat__1CA7377D]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_values] DROP CONSTRAINT [DF__spree_var__varia__1BB31344]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_values] DROP CONSTRAINT [DF__spree_var__prope__1ABEEF0B]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_values] DROP CONSTRAINT [DF__spree_var__posit__19CACAD2]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_conditions] DROP CONSTRAINT [DF__spree_var__varia__18D6A699]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_conditions] DROP CONSTRAINT [DF__spree_var__optio__17E28260]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__openi__16EE5E27]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__bill___15FA39EE]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__ship___150615B5]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__login__1411F17C]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__last___131DCD43]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__curre__1229A90A]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__last___113584D1]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__curre__10416098]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__last___0F4D3C5F]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__faile__0E591826]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__login__0D64F3ED]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__peris__0C70CFB4]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__singl__0B7CAB7B]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__persi__0A888742]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__remem__09946309]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__remem__08A03ED0]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__email__07AC1A97]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_user__salt__06B7F65E]
GO
ALTER TABLE [dbo].[spree_users] DROP CONSTRAINT [DF__spree_use__crypt__05C3D225]
GO
ALTER TABLE [dbo].[spree_user_stock_locations] DROP CONSTRAINT [DF__spree_use__updat__04CFADEC]
GO
ALTER TABLE [dbo].[spree_user_stock_locations] DROP CONSTRAINT [DF__spree_use__creat__03DB89B3]
GO
ALTER TABLE [dbo].[spree_user_stock_locations] DROP CONSTRAINT [DF__spree_use__stock__02E7657A]
GO
ALTER TABLE [dbo].[spree_user_stock_locations] DROP CONSTRAINT [DF__spree_use__user___01F34141]
GO
ALTER TABLE [dbo].[spree_user_addresses] DROP CONSTRAINT [DF__spree_use__archi__00FF1D08]
GO
ALTER TABLE [dbo].[spree_user_addresses] DROP CONSTRAINT [DF__spree_use__defau__000AF8CF]
GO
ALTER TABLE [dbo].[spree_unit_cancels] DROP CONSTRAINT [DF__spree_uni__updat__7F16D496]
GO
ALTER TABLE [dbo].[spree_unit_cancels] DROP CONSTRAINT [DF__spree_uni__creat__7E22B05D]
GO
ALTER TABLE [dbo].[spree_unit_cancels] DROP CONSTRAINT [DF__spree_uni__creat__7D2E8C24]
GO
ALTER TABLE [dbo].[spree_unit_cancels] DROP CONSTRAINT [DF__spree_uni__reaso__7C3A67EB]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__depth__7B4643B2]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__meta___7A521F79]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__meta___795DFB40]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__meta___7869D707]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__updat__7775B2CE]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__creat__76818E95]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__icon___758D6A5C]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__icon___74994623]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__icon___73A521EA]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__icon___72B0FDB1]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_taxon__rgt__71BCD978]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_taxon__lft__70C8B53F]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__taxon__6FD49106]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__perma__6EE06CCD]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__posit__6DEC4894]
GO
ALTER TABLE [dbo].[spree_taxons] DROP CONSTRAINT [DF__spree_tax__paren__6CF8245B]
GO
ALTER TABLE [dbo].[spree_taxonomies] DROP CONSTRAINT [DF__spree_tax__posit__6C040022]
GO
ALTER TABLE [dbo].[spree_taxonomies] DROP CONSTRAINT [DF__spree_tax__updat__6B0FDBE9]
GO
ALTER TABLE [dbo].[spree_taxonomies] DROP CONSTRAINT [DF__spree_tax__creat__6A1BB7B0]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__expir__69279377]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__start__68336F3E]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__delet__673F4B05]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__show___664B26CC]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax___name__65570293]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__updat__6462DE5A]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__creat__636EBA21]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__inclu__627A95E8]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__zone___618671AF]
GO
ALTER TABLE [dbo].[spree_tax_rates] DROP CONSTRAINT [DF__spree_tax__amoun__60924D76]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax__tax_c__5F9E293D]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax__updat__5EAA0504]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax__creat__5DB5E0CB]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax__delet__5CC1BC92]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax__is_de__5BCD9859]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax__descr__5AD97420]
GO
ALTER TABLE [dbo].[spree_tax_categories] DROP CONSTRAINT [DF__spree_tax___name__59E54FE7]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__avail__58F12BAE]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__cart___57FD0775]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__updat__5708E33C]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__creat__5614BF03]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__defau__55209ACA]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_stor__code__542C7691]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__defau__53385258]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__mail___52442E1F]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_sto__seo_t__515009E6]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_store__url__505BE5AD]
GO
ALTER TABLE [dbo].[spree_stores] DROP CONSTRAINT [DF__spree_stor__name__4F67C174]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__inval__4E739D3B]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__type___4D7F7902]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__updat__4C8B54C9]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__creat__4B973090]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__delet__4AA30C57]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__curre__49AEE81E]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__amoun__48BAC3E5]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__amoun__47C69FAC]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__amoun__46D27B73]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__creat__45DE573A]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__categ__44EA3301]
GO
ALTER TABLE [dbo].[spree_store_credits] DROP CONSTRAINT [DF__spree_sto__user___43F60EC8]
GO
ALTER TABLE [dbo].[spree_store_credit_types] DROP CONSTRAINT [DF__spree_sto__updat__4301EA8F]
GO
ALTER TABLE [dbo].[spree_store_credit_types] DROP CONSTRAINT [DF__spree_sto__creat__420DC656]
GO
ALTER TABLE [dbo].[spree_store_credit_types] DROP CONSTRAINT [DF__spree_sto__prior__4119A21D]
GO
ALTER TABLE [dbo].[spree_store_credit_types] DROP CONSTRAINT [DF__spree_stor__name__40257DE4]
GO
ALTER TABLE [dbo].[spree_store_credit_reasons] DROP CONSTRAINT [DF__spree_sto__activ__3F3159AB]
GO
ALTER TABLE [dbo].[spree_store_credit_reasons] DROP CONSTRAINT [DF__spree_stor__name__3E3D3572]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__store__3D491139]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__amoun__3C54ED00]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__updat__3B60C8C7]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__creat__3A6CA48E]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__origi__39788055]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__origi__38845C1C]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__delet__379037E3]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__user___369C13AA]
GO
ALTER TABLE [dbo].[spree_store_credit_events] DROP CONSTRAINT [DF__spree_sto__amoun__35A7EF71]
GO
ALTER TABLE [dbo].[spree_store_credit_categories] DROP CONSTRAINT [DF__spree_sto__updat__34B3CB38]
GO
ALTER TABLE [dbo].[spree_store_credit_categories] DROP CONSTRAINT [DF__spree_sto__creat__33BFA6FF]
GO
ALTER TABLE [dbo].[spree_store_credit_categories] DROP CONSTRAINT [DF__spree_stor__name__32CB82C6]
GO
ALTER TABLE [dbo].[spree_stock_movements] DROP CONSTRAINT [DF__spree_sto__origi__31D75E8D]
GO
ALTER TABLE [dbo].[spree_stock_movements] DROP CONSTRAINT [DF__spree_sto__origi__30E33A54]
GO
ALTER TABLE [dbo].[spree_stock_movements] DROP CONSTRAINT [DF__spree_sto__actio__2FEF161B]
GO
ALTER TABLE [dbo].[spree_stock_movements] DROP CONSTRAINT [DF__spree_sto__quant__2EFAF1E2]
GO
ALTER TABLE [dbo].[spree_stock_movements] DROP CONSTRAINT [DF__spree_sto__stock__2E06CDA9]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__check__2D12A970]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_stoc__code__2C1E8537]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__fulfi__2B2A60FE]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__resto__2A363CC5]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__posit__2942188C]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__admin__284DF453]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__propa__2759D01A]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__backo__2665ABE1]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__activ__257187A8]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__phone__247D636F]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__zipco__23893F36]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__count__22951AFD]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__state__21A0F6C4]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__state__20ACD28B]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_stoc__city__1FB8AE52]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__addre__1EC48A19]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__addre__1DD065E0]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__defau__1CDC41A7]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__updat__1BE81D6E]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_sto__creat__1AF3F935]
GO
ALTER TABLE [dbo].[spree_stock_locations] DROP CONSTRAINT [DF__spree_stoc__name__19FFD4FC]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__delet__190BB0C3]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__backo__18178C8A]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__updat__17236851]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__creat__162F4418]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__count__153B1FDF]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__varia__1446FBA6]
GO
ALTER TABLE [dbo].[spree_stock_items] DROP CONSTRAINT [DF__spree_sto__stock__1352D76D]
GO
ALTER TABLE [dbo].[spree_states] DROP CONSTRAINT [DF__spree_sta__creat__125EB334]
GO
ALTER TABLE [dbo].[spree_states] DROP CONSTRAINT [DF__spree_sta__updat__116A8EFB]
GO
ALTER TABLE [dbo].[spree_states] DROP CONSTRAINT [DF__spree_sta__count__10766AC2]
GO
ALTER TABLE [dbo].[spree_states] DROP CONSTRAINT [DF__spree_stat__abbr__0F824689]
GO
ALTER TABLE [dbo].[spree_states] DROP CONSTRAINT [DF__spree_stat__name__0E8E2250]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__updat__0D99FE17]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__creat__0CA5D9DE]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__next___0BB1B5A5]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__state__0ABD916C]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__user___09C96D33]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__state__08D548FA]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_sta__previ__07E124C1]
GO
ALTER TABLE [dbo].[spree_state_changes] DROP CONSTRAINT [DF__spree_stat__name__06ED0088]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_shi__tax_r__05F8DC4F]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_shi__updat__0504B816]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_shi__creat__041093DD]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_ship__cost__031C6FA4]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_shi__selec__02284B6B]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_shi__shipp__01342732]
GO
ALTER TABLE [dbo].[spree_shipping_rates] DROP CONSTRAINT [DF__spree_shi__shipm__004002F9]
GO
ALTER TABLE [dbo].[spree_shipping_rate_taxes] DROP CONSTRAINT [DF__spree_shi__shipp__7F4BDEC0]
GO
ALTER TABLE [dbo].[spree_shipping_rate_taxes] DROP CONSTRAINT [DF__spree_shi__tax_r__7E57BA87]
GO
ALTER TABLE [dbo].[spree_shipping_rate_taxes] DROP CONSTRAINT [DF__spree_shi__amoun__7D63964E]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__avail__7C6F7215]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__servi__7B7B4DDC]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__carri__7A8729A3]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__avail__7993056A]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_ship__code__789EE131]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__tax_c__77AABCF8]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__admin__76B698BF]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__track__75C27486]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__updat__74CE504D]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__creat__73DA2C14]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_shi__delet__72E607DB]
GO
ALTER TABLE [dbo].[spree_shipping_methods] DROP CONSTRAINT [DF__spree_ship__name__71F1E3A2]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] DROP CONSTRAINT [DF__spree_shi__updat__70FDBF69]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] DROP CONSTRAINT [DF__spree_shi__creat__70099B30]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] DROP CONSTRAINT [DF__spree_shi__zone___6F1576F7]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] DROP CONSTRAINT [DF__spree_shi__shipp__6E2152BE]
GO
ALTER TABLE [dbo].[spree_shipping_method_stock_locations] DROP CONSTRAINT [DF__spree_shi__updat__6D2D2E85]
GO
ALTER TABLE [dbo].[spree_shipping_method_stock_locations] DROP CONSTRAINT [DF__spree_shi__creat__6C390A4C]
GO
ALTER TABLE [dbo].[spree_shipping_method_stock_locations] DROP CONSTRAINT [DF__spree_shi__stock__6B44E613]
GO
ALTER TABLE [dbo].[spree_shipping_method_stock_locations] DROP CONSTRAINT [DF__spree_shi__shipp__6A50C1DA]
GO
ALTER TABLE [dbo].[spree_shipping_method_categories] DROP CONSTRAINT [DF__spree_shi__updat__695C9DA1]
GO
ALTER TABLE [dbo].[spree_shipping_method_categories] DROP CONSTRAINT [DF__spree_shi__creat__68687968]
GO
ALTER TABLE [dbo].[spree_shipping_categories] DROP CONSTRAINT [DF__spree_shi__updat__6774552F]
GO
ALTER TABLE [dbo].[spree_shipping_categories] DROP CONSTRAINT [DF__spree_shi__creat__668030F6]
GO
ALTER TABLE [dbo].[spree_shipping_categories] DROP CONSTRAINT [DF__spree_ship__name__658C0CBD]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__inclu__6497E884]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__promo__63A3C44B]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__addit__62AFA012]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__adjus__61BB7BD9]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__stock__60C757A0]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__updat__5FD33367]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__creat__5EDF0F2E]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__state__5DEAEAF5]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__depre__5CF6C6BC]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__order__5C02A283]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__shipp__5B0E7E4A]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_ship__cost__5A1A5A11]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__numbe__592635D8]
GO
ALTER TABLE [dbo].[spree_shipments] DROP CONSTRAINT [DF__spree_shi__track__5832119F]
GO
ALTER TABLE [dbo].[spree_roles_users] DROP CONSTRAINT [DF__spree_rol__updat__573DED66]
GO
ALTER TABLE [dbo].[spree_roles_users] DROP CONSTRAINT [DF__spree_rol__creat__5649C92D]
GO
ALTER TABLE [dbo].[spree_roles_users] DROP CONSTRAINT [DF__spree_rol__user___5555A4F4]
GO
ALTER TABLE [dbo].[spree_roles_users] DROP CONSTRAINT [DF__spree_rol__role___546180BB]
GO
ALTER TABLE [dbo].[spree_roles] DROP CONSTRAINT [DF__spree_rol__updat__536D5C82]
GO
ALTER TABLE [dbo].[spree_roles] DROP CONSTRAINT [DF__spree_rol__creat__52793849]
GO
ALTER TABLE [dbo].[spree_roles] DROP CONSTRAINT [DF__spree_role__name__51851410]
GO
ALTER TABLE [dbo].[spree_return_reasons] DROP CONSTRAINT [DF__spree_ret__updat__5090EFD7]
GO
ALTER TABLE [dbo].[spree_return_reasons] DROP CONSTRAINT [DF__spree_ret__creat__4F9CCB9E]
GO
ALTER TABLE [dbo].[spree_return_reasons] DROP CONSTRAINT [DF__spree_ret__mutab__4EA8A765]
GO
ALTER TABLE [dbo].[spree_return_reasons] DROP CONSTRAINT [DF__spree_ret__activ__4DB4832C]
GO
ALTER TABLE [dbo].[spree_return_reasons] DROP CONSTRAINT [DF__spree_retu__name__4CC05EF3]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__retur__4BCC3ABA]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__resel__4AD81681]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__overr__49E3F248]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__prefe__48EFCE0F]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__excha__47FBA9D6]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__reimb__4707859D]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__custo__46136164]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__accep__451F3D2B]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__recep__442B18F2]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__addit__4336F4B9]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__inclu__4242D080]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__amoun__414EAC47]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__updat__405A880E]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__creat__3F6663D5]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__excha__3E723F9C]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__inven__3D7E1B63]
GO
ALTER TABLE [dbo].[spree_return_items] DROP CONSTRAINT [DF__spree_ret__retur__3C89F72A]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__retur__3B95D2F1]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__stock__3AA1AEB8]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__updat__39AD8A7F]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__creat__38B96646]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__order__37C5420D]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__state__36D11DD4]
GO
ALTER TABLE [dbo].[spree_return_authorizations] DROP CONSTRAINT [DF__spree_ret__numbe__35DCF99B]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__updat__34E8D562]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__creat__33F4B129]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__total__33008CF0]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__order__320C68B7]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__custo__3118447E]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__reimb__30242045]
GO
ALTER TABLE [dbo].[spree_reimbursements] DROP CONSTRAINT [DF__spree_rei__numbe__2F2FFC0C]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] DROP CONSTRAINT [DF__spree_reim__type__2E3BD7D3]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] DROP CONSTRAINT [DF__spree_rei__updat__2D47B39A]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] DROP CONSTRAINT [DF__spree_rei__creat__2C538F61]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] DROP CONSTRAINT [DF__spree_rei__mutab__2B5F6B28]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] DROP CONSTRAINT [DF__spree_rei__activ__2A6B46EF]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] DROP CONSTRAINT [DF__spree_reim__name__297722B6]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] DROP CONSTRAINT [DF__spree_rei__updat__2882FE7D]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] DROP CONSTRAINT [DF__spree_rei__creat__278EDA44]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] DROP CONSTRAINT [DF__spree_rei__credi__269AB60B]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] DROP CONSTRAINT [DF__spree_rei__credi__25A691D2]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] DROP CONSTRAINT [DF__spree_rei__reimb__24B26D99]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] DROP CONSTRAINT [DF__spree_rei__amoun__23BE4960]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__reimb__22CA2527]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__refun__21D600EE]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__updat__20E1DCB5]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__creat__1FEDB87C]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__trans__1EF99443]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__amoun__1E05700A]
GO
ALTER TABLE [dbo].[spree_refunds] DROP CONSTRAINT [DF__spree_ref__payme__1D114BD1]
GO
ALTER TABLE [dbo].[spree_refund_reasons] DROP CONSTRAINT [DF__spree_refu__code__1C1D2798]
GO
ALTER TABLE [dbo].[spree_refund_reasons] DROP CONSTRAINT [DF__spree_ref__updat__1B29035F]
GO
ALTER TABLE [dbo].[spree_refund_reasons] DROP CONSTRAINT [DF__spree_ref__creat__1A34DF26]
GO
ALTER TABLE [dbo].[spree_refund_reasons] DROP CONSTRAINT [DF__spree_ref__mutab__1940BAED]
GO
ALTER TABLE [dbo].[spree_refund_reasons] DROP CONSTRAINT [DF__spree_ref__activ__184C96B4]
GO
ALTER TABLE [dbo].[spree_refund_reasons] DROP CONSTRAINT [DF__spree_refu__name__1758727B]
GO
ALTER TABLE [dbo].[spree_prototypes] DROP CONSTRAINT [DF__spree_pro__updat__16644E42]
GO
ALTER TABLE [dbo].[spree_prototypes] DROP CONSTRAINT [DF__spree_pro__creat__15702A09]
GO
ALTER TABLE [dbo].[spree_prototypes] DROP CONSTRAINT [DF__spree_prot__name__147C05D0]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] DROP CONSTRAINT [DF__spree_pro__updat__1387E197]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] DROP CONSTRAINT [DF__spree_pro__creat__1293BD5E]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] DROP CONSTRAINT [DF__spree_pro__proto__119F9925]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] DROP CONSTRAINT [DF__spree_pro__taxon__10AB74EC]
GO
ALTER TABLE [dbo].[spree_property_prototypes] DROP CONSTRAINT [DF__spree_pro__updat__0FB750B3]
GO
ALTER TABLE [dbo].[spree_property_prototypes] DROP CONSTRAINT [DF__spree_pro__creat__0EC32C7A]
GO
ALTER TABLE [dbo].[spree_property_prototypes] DROP CONSTRAINT [DF__spree_pro__prope__0DCF0841]
GO
ALTER TABLE [dbo].[spree_property_prototypes] DROP CONSTRAINT [DF__spree_pro__proto__0CDAE408]
GO
ALTER TABLE [dbo].[spree_properties] DROP CONSTRAINT [DF__spree_pro__updat__0BE6BFCF]
GO
ALTER TABLE [dbo].[spree_properties] DROP CONSTRAINT [DF__spree_pro__creat__0AF29B96]
GO
ALTER TABLE [dbo].[spree_properties] DROP CONSTRAINT [DF__spree_prop__name__09FE775D]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__apply__090A5324]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__per_c__08162EEB]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__promo__07220AB2]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__updat__062DE679]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__creat__0539C240]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_prom__path__04459E07]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__adver__035179CE]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__match__025D5595]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__usage__0169315C]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_prom__type__00750D23]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_prom__name__7F80E8EA]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__start__7E8CC4B1]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__expir__7D98A078]
GO
ALTER TABLE [dbo].[spree_promotions] DROP CONSTRAINT [DF__spree_pro__descr__7CA47C3F]
GO
ALTER TABLE [dbo].[spree_promotion_rules_users] DROP CONSTRAINT [DF__spree_pro__updat__7BB05806]
GO
ALTER TABLE [dbo].[spree_promotion_rules_users] DROP CONSTRAINT [DF__spree_pro__creat__7ABC33CD]
GO
ALTER TABLE [dbo].[spree_promotion_rules_users] DROP CONSTRAINT [DF__spree_pro__promo__79C80F94]
GO
ALTER TABLE [dbo].[spree_promotion_rules_users] DROP CONSTRAINT [DF__spree_pro__user___78D3EB5B]
GO
ALTER TABLE [dbo].[spree_promotion_rules] DROP CONSTRAINT [DF__spree_prom__code__77DFC722]
GO
ALTER TABLE [dbo].[spree_promotion_rules] DROP CONSTRAINT [DF__spree_pro__updat__76EBA2E9]
GO
ALTER TABLE [dbo].[spree_promotion_rules] DROP CONSTRAINT [DF__spree_pro__creat__75F77EB0]
GO
ALTER TABLE [dbo].[spree_promotion_rules] DROP CONSTRAINT [DF__spree_prom__type__75035A77]
GO
ALTER TABLE [dbo].[spree_promotion_rules] DROP CONSTRAINT [DF__spree_pro__produ__740F363E]
GO
ALTER TABLE [dbo].[spree_promotion_rules] DROP CONSTRAINT [DF__spree_pro__promo__731B1205]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] DROP CONSTRAINT [DF__spree_pro__updat__7226EDCC]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] DROP CONSTRAINT [DF__spree_pro__creat__7132C993]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] DROP CONSTRAINT [DF__spree_pro__promo__703EA55A]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] DROP CONSTRAINT [DF__spree_pro__taxon__6F4A8121]
GO
ALTER TABLE [dbo].[spree_promotion_codes] DROP CONSTRAINT [DF__spree_pro__promo__6E565CE8]
GO
ALTER TABLE [dbo].[spree_promotion_codes] DROP CONSTRAINT [DF__spree_pro__updat__6D6238AF]
GO
ALTER TABLE [dbo].[spree_promotion_codes] DROP CONSTRAINT [DF__spree_pro__creat__6C6E1476]
GO
ALTER TABLE [dbo].[spree_promotion_code_batches] DROP CONSTRAINT [DF__spree_pro__join___6B79F03D]
GO
ALTER TABLE [dbo].[spree_promotion_code_batches] DROP CONSTRAINT [DF__spree_pro__state__6A85CC04]
GO
ALTER TABLE [dbo].[spree_promotion_code_batches] DROP CONSTRAINT [DF__spree_pro__error__6991A7CB]
GO
ALTER TABLE [dbo].[spree_promotion_code_batches] DROP CONSTRAINT [DF__spree_pro__email__689D8392]
GO
ALTER TABLE [dbo].[spree_promotion_categories] DROP CONSTRAINT [DF__spree_prom__code__67A95F59]
GO
ALTER TABLE [dbo].[spree_promotion_categories] DROP CONSTRAINT [DF__spree_pro__updat__66B53B20]
GO
ALTER TABLE [dbo].[spree_promotion_categories] DROP CONSTRAINT [DF__spree_pro__creat__65C116E7]
GO
ALTER TABLE [dbo].[spree_promotion_categories] DROP CONSTRAINT [DF__spree_prom__name__64CCF2AE]
GO
ALTER TABLE [dbo].[spree_promotion_actions] DROP CONSTRAINT [DF__spree_pro__updat__63D8CE75]
GO
ALTER TABLE [dbo].[spree_promotion_actions] DROP CONSTRAINT [DF__spree_pro__creat__62E4AA3C]
GO
ALTER TABLE [dbo].[spree_promotion_actions] DROP CONSTRAINT [DF__spree_pro__delet__61F08603]
GO
ALTER TABLE [dbo].[spree_promotion_actions] DROP CONSTRAINT [DF__spree_prom__type__60FC61CA]
GO
ALTER TABLE [dbo].[spree_promotion_actions] DROP CONSTRAINT [DF__spree_pro__posit__60083D91]
GO
ALTER TABLE [dbo].[spree_promotion_actions] DROP CONSTRAINT [DF__spree_pro__promo__5F141958]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] DROP CONSTRAINT [DF__spree_pro__updat__5E1FF51F]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] DROP CONSTRAINT [DF__spree_pro__creat__5D2BD0E6]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] DROP CONSTRAINT [DF__spree_pro__quant__5C37ACAD]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] DROP CONSTRAINT [DF__spree_pro__varia__5B438874]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] DROP CONSTRAINT [DF__spree_pro__promo__5A4F643B]
GO
ALTER TABLE [dbo].[spree_products_taxons] DROP CONSTRAINT [DF__spree_pro__updat__595B4002]
GO
ALTER TABLE [dbo].[spree_products_taxons] DROP CONSTRAINT [DF__spree_pro__creat__58671BC9]
GO
ALTER TABLE [dbo].[spree_products_taxons] DROP CONSTRAINT [DF__spree_pro__posit__5772F790]
GO
ALTER TABLE [dbo].[spree_products_taxons] DROP CONSTRAINT [DF__spree_pro__taxon__567ED357]
GO
ALTER TABLE [dbo].[spree_products_taxons] DROP CONSTRAINT [DF__spree_pro__produ__558AAF1E]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__meta___54968AE5]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__promo__53A266AC]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__updat__52AE4273]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__creat__51BA1E3A]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__shipp__50C5FA01]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__tax_c__4FD1D5C8]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__meta___4EDDB18F]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_prod__slug__4DE98D56]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__delet__4CF5691D]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_pro__avail__4C0144E4]
GO
ALTER TABLE [dbo].[spree_products] DROP CONSTRAINT [DF__spree_prod__name__4B0D20AB]
GO
ALTER TABLE [dbo].[spree_product_properties] DROP CONSTRAINT [DF__spree_pro__posit__4A18FC72]
GO
ALTER TABLE [dbo].[spree_product_properties] DROP CONSTRAINT [DF__spree_pro__updat__4924D839]
GO
ALTER TABLE [dbo].[spree_product_properties] DROP CONSTRAINT [DF__spree_pro__creat__4830B400]
GO
ALTER TABLE [dbo].[spree_product_properties] DROP CONSTRAINT [DF__spree_pro__prope__473C8FC7]
GO
ALTER TABLE [dbo].[spree_product_properties] DROP CONSTRAINT [DF__spree_pro__produ__46486B8E]
GO
ALTER TABLE [dbo].[spree_product_properties] DROP CONSTRAINT [DF__spree_pro__value__45544755]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] DROP CONSTRAINT [DF__spree_pro__updat__4460231C]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] DROP CONSTRAINT [DF__spree_pro__creat__436BFEE3]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] DROP CONSTRAINT [DF__spree_pro__promo__4277DAAA]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] DROP CONSTRAINT [DF__spree_pro__produ__4183B671]
GO
ALTER TABLE [dbo].[spree_product_option_types] DROP CONSTRAINT [DF__spree_pro__updat__408F9238]
GO
ALTER TABLE [dbo].[spree_product_option_types] DROP CONSTRAINT [DF__spree_pro__creat__3F9B6DFF]
GO
ALTER TABLE [dbo].[spree_product_option_types] DROP CONSTRAINT [DF__spree_pro__optio__3EA749C6]
GO
ALTER TABLE [dbo].[spree_product_option_types] DROP CONSTRAINT [DF__spree_pro__produ__3DB3258D]
GO
ALTER TABLE [dbo].[spree_product_option_types] DROP CONSTRAINT [DF__spree_pro__posit__3CBF0154]
GO
ALTER TABLE [dbo].[spree_prices] DROP CONSTRAINT [DF__spree_pri__count__3BCADD1B]
GO
ALTER TABLE [dbo].[spree_prices] DROP CONSTRAINT [DF__spree_pri__updat__3AD6B8E2]
GO
ALTER TABLE [dbo].[spree_prices] DROP CONSTRAINT [DF__spree_pri__creat__39E294A9]
GO
ALTER TABLE [dbo].[spree_prices] DROP CONSTRAINT [DF__spree_pri__delet__38EE7070]
GO
ALTER TABLE [dbo].[spree_prices] DROP CONSTRAINT [DF__spree_pri__curre__37FA4C37]
GO
ALTER TABLE [dbo].[spree_prices] DROP CONSTRAINT [DF__spree_pri__amoun__370627FE]
GO
ALTER TABLE [dbo].[spree_preferences] DROP CONSTRAINT [DF__spree_pre__updat__361203C5]
GO
ALTER TABLE [dbo].[spree_preferences] DROP CONSTRAINT [DF__spree_pre__creat__351DDF8C]
GO
ALTER TABLE [dbo].[spree_preferences] DROP CONSTRAINT [DF__spree_prefe__key__3429BB53]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__cvv_r__3335971A]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__cvv_r__324172E1]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__numbe__314D4EA8]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__updat__30592A6F]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__creat__2F650636]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__avs_r__2E70E1FD]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__respo__2D7CBDC4]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__state__2C88998B]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__payme__2B947552]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__sourc__2AA05119]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__sourc__29AC2CE0]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__order__28B808A7]
GO
ALTER TABLE [dbo].[spree_payments] DROP CONSTRAINT [DF__spree_pay__amoun__27C3E46E]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__avail__26CFC035]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__avail__25DB9BFC]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__posit__24E777C3]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__prefe__23F3538A]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__auto___22FF2F51]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__updat__220B0B18]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__creat__2116E6DF]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__delet__2022C2A6]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_pay__activ__1F2E9E6D]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_paym__name__1E3A7A34]
GO
ALTER TABLE [dbo].[spree_payment_methods] DROP CONSTRAINT [DF__spree_paym__type__1D4655FB]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] DROP CONSTRAINT [DF__spree_pay__updat__1C5231C2]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] DROP CONSTRAINT [DF__spree_pay__creat__1B5E0D89]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] DROP CONSTRAINT [DF__spree_pay__payme__1A69E950]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] DROP CONSTRAINT [DF__spree_pay__amoun__1975C517]
GO
ALTER TABLE [dbo].[spree_orders_promotions] DROP CONSTRAINT [DF__spree_ord__updat__1881A0DE]
GO
ALTER TABLE [dbo].[spree_orders_promotions] DROP CONSTRAINT [DF__spree_ord__creat__178D7CA5]
GO
ALTER TABLE [dbo].[spree_orders_promotions] DROP CONSTRAINT [DF__spree_ord__promo__1699586C]
GO
ALTER TABLE [dbo].[spree_orders_promotions] DROP CONSTRAINT [DF__spree_ord__promo__15A53433]
GO
ALTER TABLE [dbo].[spree_orders_promotions] DROP CONSTRAINT [DF__spree_ord__order__14B10FFA]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__front__13BCEBC1]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__appro__12C8C788]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__store__11D4A34F]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__cance__10E07F16]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__cance__0FEC5ADD]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__guest__0EF836A4]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__confi__0E04126B]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__appro__0D0FEE32]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__appro__0C1BC9F9]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__item___0B27A5C0]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__inclu__0A338187]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__chann__093F5D4E]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__promo__084B3915]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__addit__075714DC]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__shipm__0662F0A3]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__creat__056ECC6A]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__last___047AA831]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__curre__038683F8]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__updat__02925FBF]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__creat__019E3B86]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__email__00AA174D]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__payme__7FB5F314]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__shipm__7EC1CEDB]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__payme__7DCDAAA2]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__ship___7CD98669]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__bill___7BE56230]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__compl__7AF13DF7]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__user___79FD19BE]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__adjus__7908F585]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__state__7814D14C]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__total__7720AD13]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__item___762C88DA]
GO
ALTER TABLE [dbo].[spree_orders] DROP CONSTRAINT [DF__spree_ord__numbe__753864A1]
GO
ALTER TABLE [dbo].[spree_order_mutexes] DROP CONSTRAINT [DF__spree_ord__creat__74444068]
GO
ALTER TABLE [dbo].[spree_option_values_variants] DROP CONSTRAINT [DF__spree_opt__updat__73501C2F]
GO
ALTER TABLE [dbo].[spree_option_values_variants] DROP CONSTRAINT [DF__spree_opt__creat__725BF7F6]
GO
ALTER TABLE [dbo].[spree_option_values_variants] DROP CONSTRAINT [DF__spree_opt__optio__7167D3BD]
GO
ALTER TABLE [dbo].[spree_option_values_variants] DROP CONSTRAINT [DF__spree_opt__varia__7073AF84]
GO
ALTER TABLE [dbo].[spree_option_values] DROP CONSTRAINT [DF__spree_opt__updat__6F7F8B4B]
GO
ALTER TABLE [dbo].[spree_option_values] DROP CONSTRAINT [DF__spree_opt__creat__6E8B6712]
GO
ALTER TABLE [dbo].[spree_option_values] DROP CONSTRAINT [DF__spree_opt__optio__6D9742D9]
GO
ALTER TABLE [dbo].[spree_option_values] DROP CONSTRAINT [DF__spree_opt__prese__6CA31EA0]
GO
ALTER TABLE [dbo].[spree_option_values] DROP CONSTRAINT [DF__spree_opti__name__6BAEFA67]
GO
ALTER TABLE [dbo].[spree_option_values] DROP CONSTRAINT [DF__spree_opt__posit__6ABAD62E]
GO
ALTER TABLE [dbo].[spree_option_types] DROP CONSTRAINT [DF__spree_opt__updat__69C6B1F5]
GO
ALTER TABLE [dbo].[spree_option_types] DROP CONSTRAINT [DF__spree_opt__creat__68D28DBC]
GO
ALTER TABLE [dbo].[spree_option_types] DROP CONSTRAINT [DF__spree_opt__posit__67DE6983]
GO
ALTER TABLE [dbo].[spree_option_types] DROP CONSTRAINT [DF__spree_opt__prese__66EA454A]
GO
ALTER TABLE [dbo].[spree_option_types] DROP CONSTRAINT [DF__spree_opti__name__65F62111]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] DROP CONSTRAINT [DF__spree_opt__updat__6501FCD8]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] DROP CONSTRAINT [DF__spree_opt__creat__640DD89F]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] DROP CONSTRAINT [DF__spree_opt__optio__6319B466]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] DROP CONSTRAINT [DF__spree_opt__proto__6225902D]
GO
ALTER TABLE [dbo].[spree_log_entries] DROP CONSTRAINT [DF__spree_log__updat__61316BF4]
GO
ALTER TABLE [dbo].[spree_log_entries] DROP CONSTRAINT [DF__spree_log__creat__603D47BB]
GO
ALTER TABLE [dbo].[spree_log_entries] DROP CONSTRAINT [DF__spree_log__sourc__5F492382]
GO
ALTER TABLE [dbo].[spree_log_entries] DROP CONSTRAINT [DF__spree_log__sourc__5E54FF49]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__inclu__5D60DB10]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__promo__5C6CB6D7]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__addit__5B78929E]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__adjus__5A846E65]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__tax_c__59904A2C]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__cost___589C25F3]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__updat__57A801BA]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__creat__56B3DD81]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__order__55BFB948]
GO
ALTER TABLE [dbo].[spree_line_items] DROP CONSTRAINT [DF__spree_lin__varia__54CB950F]
GO
ALTER TABLE [dbo].[spree_line_item_actions] DROP CONSTRAINT [DF__spree_lin__updat__53D770D6]
GO
ALTER TABLE [dbo].[spree_line_item_actions] DROP CONSTRAINT [DF__spree_lin__creat__52E34C9D]
GO
ALTER TABLE [dbo].[spree_line_item_actions] DROP CONSTRAINT [DF__spree_lin__quant__51EF2864]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__carto__50FB042B]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__line___5006DFF2]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__pendi__4F12BBB9]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__updat__4E1E9780]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__creat__4D2A7347]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__shipm__4C364F0E]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__varia__4B422AD5]
GO
ALTER TABLE [dbo].[spree_inventory_units] DROP CONSTRAINT [DF__spree_inv__state__4A4E069C]
GO
ALTER TABLE [dbo].[spree_customer_returns] DROP CONSTRAINT [DF__spree_cus__updat__4959E263]
GO
ALTER TABLE [dbo].[spree_customer_returns] DROP CONSTRAINT [DF__spree_cus__creat__4865BE2A]
GO
ALTER TABLE [dbo].[spree_customer_returns] DROP CONSTRAINT [DF__spree_cus__stock__477199F1]
GO
ALTER TABLE [dbo].[spree_customer_returns] DROP CONSTRAINT [DF__spree_cus__numbe__467D75B8]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__addre__4589517F]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__defau__44952D46]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__payme__43A1090D]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__user___42ACE4D4]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cred__name__41B8C09B]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__updat__40C49C62]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__creat__3FD07829]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__gatew__3EDC53F0]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__gatew__3DE82FB7]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__last___3CF40B7E]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__cc_ty__3BFFE745]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cred__year__3B0BC30C]
GO
ALTER TABLE [dbo].[spree_credit_cards] DROP CONSTRAINT [DF__spree_cre__month__3A179ED3]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_cou__creat__39237A9A]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_cou__updat__382F5661]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_cou__state__373B3228]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_cou__numco__36470DEF]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_coun__name__3552E9B6]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_coun__iso3__345EC57D]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_count__iso__336AA144]
GO
ALTER TABLE [dbo].[spree_countries] DROP CONSTRAINT [DF__spree_cou__iso_n__32767D0B]
GO
ALTER TABLE [dbo].[spree_cartons] DROP CONSTRAINT [DF__spree_car__impor__318258D2]
GO
ALTER TABLE [dbo].[spree_cartons] DROP CONSTRAINT [DF__spree_car__updat__308E3499]
GO
ALTER TABLE [dbo].[spree_cartons] DROP CONSTRAINT [DF__spree_car__creat__2F9A1060]
GO
ALTER TABLE [dbo].[spree_cartons] DROP CONSTRAINT [DF__spree_car__shipp__2EA5EC27]
GO
ALTER TABLE [dbo].[spree_cartons] DROP CONSTRAINT [DF__spree_car__track__2DB1C7EE]
GO
ALTER TABLE [dbo].[spree_cartons] DROP CONSTRAINT [DF__spree_car__shipp__2CBDA3B5]
GO
ALTER TABLE [dbo].[spree_cartons] DROP CONSTRAINT [DF__spree_car__addre__2BC97F7C]
GO
ALTER TABLE [dbo].[spree_cartons] DROP CONSTRAINT [DF__spree_car__stock__2AD55B43]
GO
ALTER TABLE [dbo].[spree_cartons] DROP CONSTRAINT [DF__spree_car__exter__29E1370A]
GO
ALTER TABLE [dbo].[spree_cartons] DROP CONSTRAINT [DF__spree_car__numbe__28ED12D1]
GO
ALTER TABLE [dbo].[spree_calculators] DROP CONSTRAINT [DF__spree_cal__updat__27F8EE98]
GO
ALTER TABLE [dbo].[spree_calculators] DROP CONSTRAINT [DF__spree_cal__creat__2704CA5F]
GO
ALTER TABLE [dbo].[spree_calculators] DROP CONSTRAINT [DF__spree_cal__calcu__2610A626]
GO
ALTER TABLE [dbo].[spree_calculators] DROP CONSTRAINT [DF__spree_cal__calcu__251C81ED]
GO
ALTER TABLE [dbo].[spree_calculators] DROP CONSTRAINT [DF__spree_calc__type__24285DB4]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__updat__2334397B]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__creat__22401542]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__214BF109]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_asse__type__2057CCD0]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__1F63A897]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__1E6F845E]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__posit__1D7B6025]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__1C873BEC]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__1B9317B3]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__attac__1A9EF37A]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__viewa__19AACF41]
GO
ALTER TABLE [dbo].[spree_assets] DROP CONSTRAINT [DF__spree_ass__viewa__18B6AB08]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__final__17C286CF]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__adjus__16CE6296]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__promo__15DA3E5D]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__inclu__14E61A24]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__updat__13F1F5EB]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__creat__12FDD1B2]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__eligi__1209AD79]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__label__11158940]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__amoun__10216507]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__adjus__0F2D40CE]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__sourc__0E391C95]
GO
ALTER TABLE [dbo].[spree_adjustments] DROP CONSTRAINT [DF__spree_adj__sourc__0D44F85C]
GO
ALTER TABLE [dbo].[spree_adjustment_reasons] DROP CONSTRAINT [DF__spree_adj__updat__0C50D423]
GO
ALTER TABLE [dbo].[spree_adjustment_reasons] DROP CONSTRAINT [DF__spree_adj__creat__0B5CAFEA]
GO
ALTER TABLE [dbo].[spree_adjustment_reasons] DROP CONSTRAINT [DF__spree_adj__activ__0A688BB1]
GO
ALTER TABLE [dbo].[spree_adjustment_reasons] DROP CONSTRAINT [DF__spree_adju__code__09746778]
GO
ALTER TABLE [dbo].[spree_adjustment_reasons] DROP CONSTRAINT [DF__spree_adju__name__0880433F]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__updat__078C1F06]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__creat__0697FACD]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__count__05A3D694]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__state__04AFB25B]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__compa__03BB8E22]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__alter__02C769E9]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__state__01D345B0]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__phone__00DF2177]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__zipco__7FEAFD3E]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_addr__city__7EF6D905]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__addre__7E02B4CC]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__addre__7D0E9093]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__lastn__7C1A6C5A]
GO
ALTER TABLE [dbo].[spree_addresses] DROP CONSTRAINT [DF__spree_add__first__7B264821]
GO
ALTER TABLE [dbo].[friendly_id_slugs] DROP CONSTRAINT [DF__friendly___updat__7A3223E8]
GO
ALTER TABLE [dbo].[friendly_id_slugs] DROP CONSTRAINT [DF__friendly___creat__793DFFAF]
GO
ALTER TABLE [dbo].[friendly_id_slugs] DROP CONSTRAINT [DF__friendly___scope__7849DB76]
GO
ALTER TABLE [dbo].[friendly_id_slugs] DROP CONSTRAINT [DF__friendly___slugg__7755B73D]
GO
ALTER TABLE [dbo].[ar_internal_metadata] DROP CONSTRAINT [DF__ar_intern__value__76619304]
GO
ALTER TABLE [dbo].[active_storage_blobs] DROP CONSTRAINT [DF__active_st__conte__756D6ECB]
GO
ALTER TABLE [dbo].[action_mailbox_inbound_emails] DROP CONSTRAINT [DF__action_ma__statu__74794A92]
GO
/****** Object:  Table [dbo].[spree_zones]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_zones]') AND type in (N'U'))
DROP TABLE [dbo].[spree_zones]
GO
/****** Object:  Table [dbo].[spree_zone_members]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_zone_members]') AND type in (N'U'))
DROP TABLE [dbo].[spree_zone_members]
GO
/****** Object:  Table [dbo].[spree_wallet_payment_sources]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_wallet_payment_sources]') AND type in (N'U'))
DROP TABLE [dbo].[spree_wallet_payment_sources]
GO
/****** Object:  Table [dbo].[spree_variants]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_variants]') AND type in (N'U'))
DROP TABLE [dbo].[spree_variants]
GO
/****** Object:  Table [dbo].[spree_variant_property_rules]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_variant_property_rules]') AND type in (N'U'))
DROP TABLE [dbo].[spree_variant_property_rules]
GO
/****** Object:  Table [dbo].[spree_variant_property_rule_values]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_variant_property_rule_values]') AND type in (N'U'))
DROP TABLE [dbo].[spree_variant_property_rule_values]
GO
/****** Object:  Table [dbo].[spree_variant_property_rule_conditions]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_variant_property_rule_conditions]') AND type in (N'U'))
DROP TABLE [dbo].[spree_variant_property_rule_conditions]
GO
/****** Object:  Table [dbo].[spree_users]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_users]') AND type in (N'U'))
DROP TABLE [dbo].[spree_users]
GO
/****** Object:  Table [dbo].[spree_user_stock_locations]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_user_stock_locations]') AND type in (N'U'))
DROP TABLE [dbo].[spree_user_stock_locations]
GO
/****** Object:  Table [dbo].[spree_user_addresses]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_user_addresses]') AND type in (N'U'))
DROP TABLE [dbo].[spree_user_addresses]
GO
/****** Object:  Table [dbo].[spree_unit_cancels]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_unit_cancels]') AND type in (N'U'))
DROP TABLE [dbo].[spree_unit_cancels]
GO
/****** Object:  Table [dbo].[spree_taxons]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_taxons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_taxons]
GO
/****** Object:  Table [dbo].[spree_taxonomies]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_taxonomies]') AND type in (N'U'))
DROP TABLE [dbo].[spree_taxonomies]
GO
/****** Object:  Table [dbo].[spree_tax_rates]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_tax_rates]') AND type in (N'U'))
DROP TABLE [dbo].[spree_tax_rates]
GO
/****** Object:  Table [dbo].[spree_tax_rate_tax_categories]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_tax_rate_tax_categories]') AND type in (N'U'))
DROP TABLE [dbo].[spree_tax_rate_tax_categories]
GO
/****** Object:  Table [dbo].[spree_tax_categories]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_tax_categories]') AND type in (N'U'))
DROP TABLE [dbo].[spree_tax_categories]
GO
/****** Object:  Table [dbo].[spree_stores]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_stores]') AND type in (N'U'))
DROP TABLE [dbo].[spree_stores]
GO
/****** Object:  Table [dbo].[spree_store_shipping_methods]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_store_shipping_methods]') AND type in (N'U'))
DROP TABLE [dbo].[spree_store_shipping_methods]
GO
/****** Object:  Table [dbo].[spree_store_payment_methods]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_store_payment_methods]') AND type in (N'U'))
DROP TABLE [dbo].[spree_store_payment_methods]
GO
/****** Object:  Table [dbo].[spree_store_credits]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_store_credits]') AND type in (N'U'))
DROP TABLE [dbo].[spree_store_credits]
GO
/****** Object:  Table [dbo].[spree_store_credit_types]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_store_credit_types]') AND type in (N'U'))
DROP TABLE [dbo].[spree_store_credit_types]
GO
/****** Object:  Table [dbo].[spree_store_credit_reasons]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_store_credit_reasons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_store_credit_reasons]
GO
/****** Object:  Table [dbo].[spree_store_credit_events]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_store_credit_events]') AND type in (N'U'))
DROP TABLE [dbo].[spree_store_credit_events]
GO
/****** Object:  Table [dbo].[spree_store_credit_categories]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_store_credit_categories]') AND type in (N'U'))
DROP TABLE [dbo].[spree_store_credit_categories]
GO
/****** Object:  Table [dbo].[spree_stock_movements]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_stock_movements]') AND type in (N'U'))
DROP TABLE [dbo].[spree_stock_movements]
GO
/****** Object:  Table [dbo].[spree_stock_locations]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_stock_locations]') AND type in (N'U'))
DROP TABLE [dbo].[spree_stock_locations]
GO
/****** Object:  Table [dbo].[spree_stock_items]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_stock_items]') AND type in (N'U'))
DROP TABLE [dbo].[spree_stock_items]
GO
/****** Object:  Table [dbo].[spree_states]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_states]') AND type in (N'U'))
DROP TABLE [dbo].[spree_states]
GO
/****** Object:  Table [dbo].[spree_state_changes]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_state_changes]') AND type in (N'U'))
DROP TABLE [dbo].[spree_state_changes]
GO
/****** Object:  Table [dbo].[spree_shipping_rates]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_rates]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_rates]
GO
/****** Object:  Table [dbo].[spree_shipping_rate_taxes]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_rate_taxes]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_rate_taxes]
GO
/****** Object:  Table [dbo].[spree_shipping_methods]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_methods]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_methods]
GO
/****** Object:  Table [dbo].[spree_shipping_method_zones]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_method_zones]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_method_zones]
GO
/****** Object:  Table [dbo].[spree_shipping_method_stock_locations]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_method_stock_locations]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_method_stock_locations]
GO
/****** Object:  Table [dbo].[spree_shipping_method_categories]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_method_categories]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_method_categories]
GO
/****** Object:  Table [dbo].[spree_shipping_categories]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipping_categories]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipping_categories]
GO
/****** Object:  Table [dbo].[spree_shipments]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_shipments]') AND type in (N'U'))
DROP TABLE [dbo].[spree_shipments]
GO
/****** Object:  Table [dbo].[spree_roles_users]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_roles_users]') AND type in (N'U'))
DROP TABLE [dbo].[spree_roles_users]
GO
/****** Object:  Table [dbo].[spree_roles]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_roles]') AND type in (N'U'))
DROP TABLE [dbo].[spree_roles]
GO
/****** Object:  Table [dbo].[spree_return_reasons]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_return_reasons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_return_reasons]
GO
/****** Object:  Table [dbo].[spree_return_items]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_return_items]') AND type in (N'U'))
DROP TABLE [dbo].[spree_return_items]
GO
/****** Object:  Table [dbo].[spree_return_authorizations]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_return_authorizations]') AND type in (N'U'))
DROP TABLE [dbo].[spree_return_authorizations]
GO
/****** Object:  Table [dbo].[spree_reimbursements]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_reimbursements]') AND type in (N'U'))
DROP TABLE [dbo].[spree_reimbursements]
GO
/****** Object:  Table [dbo].[spree_reimbursement_types]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_reimbursement_types]') AND type in (N'U'))
DROP TABLE [dbo].[spree_reimbursement_types]
GO
/****** Object:  Table [dbo].[spree_reimbursement_credits]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_reimbursement_credits]') AND type in (N'U'))
DROP TABLE [dbo].[spree_reimbursement_credits]
GO
/****** Object:  Table [dbo].[spree_refunds]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_refunds]') AND type in (N'U'))
DROP TABLE [dbo].[spree_refunds]
GO
/****** Object:  Table [dbo].[spree_refund_reasons]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_refund_reasons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_refund_reasons]
GO
/****** Object:  Table [dbo].[spree_prototypes]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_prototypes]') AND type in (N'U'))
DROP TABLE [dbo].[spree_prototypes]
GO
/****** Object:  Table [dbo].[spree_prototype_taxons]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_prototype_taxons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_prototype_taxons]
GO
/****** Object:  Table [dbo].[spree_property_prototypes]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_property_prototypes]') AND type in (N'U'))
DROP TABLE [dbo].[spree_property_prototypes]
GO
/****** Object:  Table [dbo].[spree_properties]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_properties]') AND type in (N'U'))
DROP TABLE [dbo].[spree_properties]
GO
/****** Object:  Table [dbo].[spree_promotions]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotions]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotions]
GO
/****** Object:  Table [dbo].[spree_promotion_rules_users]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_rules_users]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_rules_users]
GO
/****** Object:  Table [dbo].[spree_promotion_rules_stores]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_rules_stores]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_rules_stores]
GO
/****** Object:  Table [dbo].[spree_promotion_rules]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_rules]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_rules]
GO
/****** Object:  Table [dbo].[spree_promotion_rule_taxons]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_rule_taxons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_rule_taxons]
GO
/****** Object:  Table [dbo].[spree_promotion_codes]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_codes]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_codes]
GO
/****** Object:  Table [dbo].[spree_promotion_code_batches]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_code_batches]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_code_batches]
GO
/****** Object:  Table [dbo].[spree_promotion_categories]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_categories]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_categories]
GO
/****** Object:  Table [dbo].[spree_promotion_actions]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_actions]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_actions]
GO
/****** Object:  Table [dbo].[spree_promotion_action_line_items]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_promotion_action_line_items]') AND type in (N'U'))
DROP TABLE [dbo].[spree_promotion_action_line_items]
GO
/****** Object:  Table [dbo].[spree_products_taxons]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_products_taxons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_products_taxons]
GO
/****** Object:  Table [dbo].[spree_products]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_products]') AND type in (N'U'))
DROP TABLE [dbo].[spree_products]
GO
/****** Object:  Table [dbo].[spree_product_properties]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_product_properties]') AND type in (N'U'))
DROP TABLE [dbo].[spree_product_properties]
GO
/****** Object:  Table [dbo].[spree_product_promotion_rules]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_product_promotion_rules]') AND type in (N'U'))
DROP TABLE [dbo].[spree_product_promotion_rules]
GO
/****** Object:  Table [dbo].[spree_product_option_types]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_product_option_types]') AND type in (N'U'))
DROP TABLE [dbo].[spree_product_option_types]
GO
/****** Object:  Table [dbo].[spree_prices]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_prices]') AND type in (N'U'))
DROP TABLE [dbo].[spree_prices]
GO
/****** Object:  Table [dbo].[spree_preferences]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_preferences]') AND type in (N'U'))
DROP TABLE [dbo].[spree_preferences]
GO
/****** Object:  Table [dbo].[spree_payments]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_payments]') AND type in (N'U'))
DROP TABLE [dbo].[spree_payments]
GO
/****** Object:  Table [dbo].[spree_payment_methods]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_payment_methods]') AND type in (N'U'))
DROP TABLE [dbo].[spree_payment_methods]
GO
/****** Object:  Table [dbo].[spree_payment_capture_events]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_payment_capture_events]') AND type in (N'U'))
DROP TABLE [dbo].[spree_payment_capture_events]
GO
/****** Object:  Table [dbo].[spree_orders_promotions]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_orders_promotions]') AND type in (N'U'))
DROP TABLE [dbo].[spree_orders_promotions]
GO
/****** Object:  Table [dbo].[spree_orders]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_orders]') AND type in (N'U'))
DROP TABLE [dbo].[spree_orders]
GO
/****** Object:  Table [dbo].[spree_order_mutexes]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_order_mutexes]') AND type in (N'U'))
DROP TABLE [dbo].[spree_order_mutexes]
GO
/****** Object:  Table [dbo].[spree_option_values_variants]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_option_values_variants]') AND type in (N'U'))
DROP TABLE [dbo].[spree_option_values_variants]
GO
/****** Object:  Table [dbo].[spree_option_values]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_option_values]') AND type in (N'U'))
DROP TABLE [dbo].[spree_option_values]
GO
/****** Object:  Table [dbo].[spree_option_types]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_option_types]') AND type in (N'U'))
DROP TABLE [dbo].[spree_option_types]
GO
/****** Object:  Table [dbo].[spree_option_type_prototypes]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_option_type_prototypes]') AND type in (N'U'))
DROP TABLE [dbo].[spree_option_type_prototypes]
GO
/****** Object:  Table [dbo].[spree_log_entries]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_log_entries]') AND type in (N'U'))
DROP TABLE [dbo].[spree_log_entries]
GO
/****** Object:  Table [dbo].[spree_line_items]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_line_items]') AND type in (N'U'))
DROP TABLE [dbo].[spree_line_items]
GO
/****** Object:  Table [dbo].[spree_line_item_actions]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_line_item_actions]') AND type in (N'U'))
DROP TABLE [dbo].[spree_line_item_actions]
GO
/****** Object:  Table [dbo].[spree_inventory_units]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_inventory_units]') AND type in (N'U'))
DROP TABLE [dbo].[spree_inventory_units]
GO
/****** Object:  Table [dbo].[spree_customer_returns]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_customer_returns]') AND type in (N'U'))
DROP TABLE [dbo].[spree_customer_returns]
GO
/****** Object:  Table [dbo].[spree_credit_cards]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_credit_cards]') AND type in (N'U'))
DROP TABLE [dbo].[spree_credit_cards]
GO
/****** Object:  Table [dbo].[spree_countries]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_countries]') AND type in (N'U'))
DROP TABLE [dbo].[spree_countries]
GO
/****** Object:  Table [dbo].[spree_cartons]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_cartons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_cartons]
GO
/****** Object:  Table [dbo].[spree_calculators]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_calculators]') AND type in (N'U'))
DROP TABLE [dbo].[spree_calculators]
GO
/****** Object:  Table [dbo].[spree_assets]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_assets]') AND type in (N'U'))
DROP TABLE [dbo].[spree_assets]
GO
/****** Object:  Table [dbo].[spree_adjustments]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_adjustments]') AND type in (N'U'))
DROP TABLE [dbo].[spree_adjustments]
GO
/****** Object:  Table [dbo].[spree_adjustment_reasons]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_adjustment_reasons]') AND type in (N'U'))
DROP TABLE [dbo].[spree_adjustment_reasons]
GO
/****** Object:  Table [dbo].[spree_addresses]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spree_addresses]') AND type in (N'U'))
DROP TABLE [dbo].[spree_addresses]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schema_migrations]') AND type in (N'U'))
DROP TABLE [dbo].[schema_migrations]
GO
/****** Object:  Table [dbo].[friendly_id_slugs]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[friendly_id_slugs]') AND type in (N'U'))
DROP TABLE [dbo].[friendly_id_slugs]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ar_internal_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[ar_internal_metadata]
GO
/****** Object:  Table [dbo].[active_storage_blobs]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[active_storage_blobs]') AND type in (N'U'))
DROP TABLE [dbo].[active_storage_blobs]
GO
/****** Object:  Table [dbo].[active_storage_attachments]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[active_storage_attachments]') AND type in (N'U'))
DROP TABLE [dbo].[active_storage_attachments]
GO
/****** Object:  Table [dbo].[action_text_rich_texts]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[action_text_rich_texts]') AND type in (N'U'))
DROP TABLE [dbo].[action_text_rich_texts]
GO
/****** Object:  Table [dbo].[action_mailbox_inbound_emails]    Script Date: 2021/8/5 10:36:30 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[action_mailbox_inbound_emails]') AND type in (N'U'))
DROP TABLE [dbo].[action_mailbox_inbound_emails]
GO
/****** Object:  Table [dbo].[action_mailbox_inbound_emails]    Script Date: 2021/8/5 10:36:30 ******/
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
/****** Object:  Table [dbo].[action_text_rich_texts]    Script Date: 2021/8/5 10:36:30 ******/
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
/****** Object:  Table [dbo].[active_storage_attachments]    Script Date: 2021/8/5 10:36:30 ******/
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
/****** Object:  Table [dbo].[active_storage_blobs]    Script Date: 2021/8/5 10:36:30 ******/
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
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/8/5 10:36:30 ******/
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
/****** Object:  Table [dbo].[friendly_id_slugs]    Script Date: 2021/8/5 10:36:30 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
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
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/8/5 10:36:30 ******/
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
/****** Object:  Table [dbo].[spree_addresses]    Script Date: 2021/8/5 10:36:30 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_addresses_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_adjustment_reasons]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_adjustment_reasons](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[code] [nvarchar](255) NULL,
	[active] [smallint] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_adjustment_reasons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_adjustments]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_adjustments](
	[id] [int]  NOT NULL,
	[source_type] [nvarchar](255) NULL,
	[source_id] [int] NULL,
	[adjustable_type] [nvarchar](255) NULL,
	[adjustable_id] [int] NOT NULL,
	[amount] [decimal](10, 2) NULL,
	[label] [nvarchar](255) NULL,
	[eligible] [smallint] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[order_id] [int] NOT NULL,
	[included] [smallint] NULL,
	[promotion_code_id] [int] NULL,
	[adjustment_reason_id] [int] NULL,
	[finalized] [smallint] NOT NULL,
 CONSTRAINT [PK_spree_adjustments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_assets]    Script Date: 2021/8/5 10:36:30 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_assets_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_calculators]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_calculators](
	[id] [int]  NOT NULL,
	[type] [nvarchar](255) NULL,
	[calculable_type] [nvarchar](255) NULL,
	[calculable_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[preferences] [nvarchar](max) NULL,
 CONSTRAINT [PK_spree_calculators_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_cartons]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_cartons](
	[id] [int]  NOT NULL,
	[number] [nvarchar](255) NULL,
	[external_number] [nvarchar](255) NULL,
	[stock_location_id] [int] NULL,
	[address_id] [int] NULL,
	[shipping_method_id] [int] NULL,
	[tracking] [nvarchar](255) NULL,
	[shipped_at] [datetime2](0) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[imported_from_shipment_id] [int] NULL,
 CONSTRAINT [PK_spree_cartons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_cartons$index_spree_cartons_on_imported_from_shipment_id] UNIQUE NONCLUSTERED 
(
	[imported_from_shipment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_cartons$index_spree_cartons_on_number] UNIQUE NONCLUSTERED 
(
	[number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_countries]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_countries](
	[id] [int]  NOT NULL,
	[iso_name] [nvarchar](255) NULL,
	[iso] [nvarchar](255) NULL,
	[iso3] [nvarchar](255) NULL,
	[name] [nvarchar](255) NULL,
	[numcode] [int] NULL,
	[states_required] [smallint] NULL,
	[updated_at] [datetime2](6) NULL,
	[created_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_countries_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_credit_cards]    Script Date: 2021/8/5 10:36:30 ******/
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
	[gateway_customer_profile_id] [nvarchar](255) NULL,
	[gateway_payment_profile_id] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[name] [nvarchar](255) NULL,
	[user_id] [int] NULL,
	[payment_method_id] [int] NULL,
	[default] [smallint] NOT NULL,
	[address_id] [int] NULL,
 CONSTRAINT [PK_spree_credit_cards_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_customer_returns]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_customer_returns](
	[id] [int]  NOT NULL,
	[number] [nvarchar](255) NULL,
	[stock_location_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_customer_returns_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_inventory_units]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_inventory_units](
	[id] [int]  NOT NULL,
	[state] [nvarchar](255) NULL,
	[variant_id] [int] NULL,
	[shipment_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[pending] [smallint] NULL,
	[line_item_id] [int] NULL,
	[carton_id] [int] NULL,
 CONSTRAINT [PK_spree_inventory_units_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_line_item_actions]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_line_item_actions](
	[id] [int]  NOT NULL,
	[line_item_id] [int] NOT NULL,
	[action_id] [int] NOT NULL,
	[quantity] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_line_item_actions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_line_items]    Script Date: 2021/8/5 10:36:30 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[cost_price] [decimal](10, 2) NULL,
	[tax_category_id] [int] NULL,
	[adjustment_total] [decimal](10, 2) NULL,
	[additional_tax_total] [decimal](10, 2) NULL,
	[promo_total] [decimal](10, 2) NULL,
	[included_tax_total] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_spree_line_items_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_log_entries]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_log_entries](
	[id] [int]  NOT NULL,
	[source_type] [nvarchar](255) NULL,
	[source_id] [int] NULL,
	[details] [nvarchar](max) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_log_entries_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_option_type_prototypes]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_option_type_prototypes](
	[id] [int]  NOT NULL,
	[prototype_id] [int] NULL,
	[option_type_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_option_type_prototypes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_option_types]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_option_types](
	[id] [int]  NOT NULL,
	[name] [nvarchar](100) NULL,
	[presentation] [nvarchar](100) NULL,
	[position] [int] NOT NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_option_types_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_option_values]    Script Date: 2021/8/5 10:36:30 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_option_values_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_option_values_variants]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_option_values_variants](
	[id] [int]  NOT NULL,
	[variant_id] [int] NULL,
	[option_value_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_option_values_variants_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_order_mutexes]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_order_mutexes](
	[id] [int]  NOT NULL,
	[order_id] [int] NOT NULL,
	[created_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_order_mutexes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_order_mutexes$index_spree_order_mutexes_on_order_id] UNIQUE NONCLUSTERED 
(
	[order_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_orders]    Script Date: 2021/8/5 10:36:30 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
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
	[guest_token] [nvarchar](255) NULL,
	[canceled_at] [datetime2](0) NULL,
	[canceler_id] [int] NULL,
	[store_id] [int] NULL,
	[approver_name] [nvarchar](255) NULL,
	[frontend_viewable] [smallint] NOT NULL,
 CONSTRAINT [PK_spree_orders_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_orders_promotions]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_orders_promotions](
	[id] [int]  NOT NULL,
	[order_id] [int] NULL,
	[promotion_id] [int] NULL,
	[promotion_code_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_orders_promotions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_payment_capture_events]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_payment_capture_events](
	[id] [int]  NOT NULL,
	[amount] [decimal](10, 2) NULL,
	[payment_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_payment_capture_events_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_payment_methods]    Script Date: 2021/8/5 10:36:30 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[auto_capture] [smallint] NULL,
	[preferences] [nvarchar](max) NULL,
	[preference_source] [nvarchar](255) NULL,
	[position] [int] NULL,
	[available_to_users] [smallint] NULL,
	[available_to_admin] [smallint] NULL,
 CONSTRAINT [PK_spree_payment_methods_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_payments]    Script Date: 2021/8/5 10:36:30 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
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
/****** Object:  Table [dbo].[spree_preferences]    Script Date: 2021/8/5 10:36:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_preferences](
	[id] [int]  NOT NULL,
	[value] [nvarchar](max) NULL,
	[key] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
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
/****** Object:  Table [dbo].[spree_prices]    Script Date: 2021/8/5 10:36:30 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[country_iso] [nvarchar](2) NULL,
 CONSTRAINT [PK_spree_prices_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_product_option_types]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_product_option_types](
	[id] [int]  NOT NULL,
	[position] [int] NULL,
	[product_id] [int] NULL,
	[option_type_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_product_option_types_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_product_promotion_rules]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_product_promotion_rules](
	[id] [int]  NOT NULL,
	[product_id] [int] NULL,
	[promotion_rule_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_product_promotion_rules_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_product_properties]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_product_properties](
	[id] [int]  NOT NULL,
	[value] [nvarchar](255) NULL,
	[product_id] [int] NULL,
	[property_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[position] [int] NULL,
 CONSTRAINT [PK_spree_product_properties_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_products]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_products](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[description] [nvarchar](max) NULL,
	[available_on] [datetime2](0) NULL,
	[deleted_at] [datetime2](0) NULL,
	[slug] [nvarchar](255) NULL,
	[meta_description] [nvarchar](max) NULL,
	[meta_keywords] [nvarchar](255) NULL,
	[tax_category_id] [int] NULL,
	[shipping_category_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
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
/****** Object:  Table [dbo].[spree_products_taxons]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_products_taxons](
	[id] [int]  NOT NULL,
	[product_id] [int] NULL,
	[taxon_id] [int] NULL,
	[position] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_products_taxons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_action_line_items]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_action_line_items](
	[id] [int]  NOT NULL,
	[promotion_action_id] [int] NULL,
	[variant_id] [int] NULL,
	[quantity] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_promotion_action_line_items_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_actions]    Script Date: 2021/8/5 10:36:31 ******/
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
	[preferences] [nvarchar](max) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_promotion_actions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_promotion_categories]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_categories](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[code] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_promotion_categories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_code_batches]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_code_batches](
	[id] [int]  NOT NULL,
	[promotion_id] [int] NOT NULL,
	[base_code] [nvarchar](255) NOT NULL,
	[number_of_codes] [int] NOT NULL,
	[email] [nvarchar](255) NULL,
	[error] [nvarchar](255) NULL,
	[state] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[join_characters] [nvarchar](255) NOT NULL,
 CONSTRAINT [PK_spree_promotion_code_batches_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_codes]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_codes](
	[id] [int]  NOT NULL,
	[promotion_id] [int] NOT NULL,
	[value] [nvarchar](255) NOT NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[promotion_code_batch_id] [int] NULL,
 CONSTRAINT [PK_spree_promotion_codes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_promotion_codes$index_spree_promotion_codes_on_value] UNIQUE NONCLUSTERED 
(
	[value] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_rule_taxons]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_rule_taxons](
	[id] [int]  NOT NULL,
	[taxon_id] [int] NULL,
	[promotion_rule_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_promotion_rule_taxons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_rules]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_rules](
	[id] [int]  NOT NULL,
	[promotion_id] [int] NULL,
	[product_group_id] [int] NULL,
	[type] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[code] [nvarchar](255) NULL,
	[preferences] [nvarchar](max) NULL,
 CONSTRAINT [PK_spree_promotion_rules_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_promotion_rules_stores]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_rules_stores](
	[id] [bigint]  NOT NULL,
	[store_id] [bigint] NOT NULL,
	[promotion_rule_id] [bigint] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_spree_promotion_rules_stores_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotion_rules_users]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_promotion_rules_users](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[promotion_rule_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_promotion_rules_users_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_promotions]    Script Date: 2021/8/5 10:36:31 ******/
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
	[advertise] [smallint] NULL,
	[path] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[promotion_category_id] [int] NULL,
	[per_code_usage_limit] [int] NULL,
	[apply_automatically] [smallint] NULL,
 CONSTRAINT [PK_spree_promotions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_properties]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_properties](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[presentation] [nvarchar](255) NOT NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_properties_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_property_prototypes]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_property_prototypes](
	[id] [int]  NOT NULL,
	[prototype_id] [int] NULL,
	[property_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_property_prototypes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_prototype_taxons]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_prototype_taxons](
	[id] [int]  NOT NULL,
	[taxon_id] [int] NULL,
	[prototype_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_prototype_taxons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_prototypes]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_prototypes](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_prototypes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_refund_reasons]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_refund_reasons](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[active] [smallint] NULL,
	[mutable] [smallint] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[code] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_refund_reasons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_refunds]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_refunds](
	[id] [int]  NOT NULL,
	[payment_id] [int] NULL,
	[amount] [decimal](10, 2) NOT NULL,
	[transaction_id] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[refund_reason_id] [int] NULL,
	[reimbursement_id] [int] NULL,
 CONSTRAINT [PK_spree_refunds_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_reimbursement_credits]    Script Date: 2021/8/5 10:36:31 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_reimbursement_credits_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_reimbursement_types]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_reimbursement_types](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[active] [smallint] NULL,
	[mutable] [smallint] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[type] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_reimbursement_types_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_reimbursements]    Script Date: 2021/8/5 10:36:31 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_reimbursements_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_return_authorizations]    Script Date: 2021/8/5 10:36:31 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[stock_location_id] [int] NULL,
	[return_reason_id] [int] NULL,
 CONSTRAINT [PK_spree_return_authorizations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_return_items]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_return_items](
	[id] [int]  NOT NULL,
	[return_authorization_id] [int] NULL,
	[inventory_unit_id] [int] NULL,
	[exchange_variant_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[amount] [decimal](12, 4) NOT NULL,
	[included_tax_total] [decimal](12, 4) NOT NULL,
	[additional_tax_total] [decimal](12, 4) NOT NULL,
	[reception_status] [nvarchar](255) NULL,
	[acceptance_status] [nvarchar](255) NULL,
	[customer_return_id] [int] NULL,
	[reimbursement_id] [int] NULL,
	[exchange_inventory_unit_id] [int] NULL,
	[acceptance_status_errors] [nvarchar](max) NULL,
	[preferred_reimbursement_type_id] [int] NULL,
	[override_reimbursement_type_id] [int] NULL,
	[resellable] [smallint] NOT NULL,
	[return_reason_id] [int] NULL,
 CONSTRAINT [PK_spree_return_items_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_return_reasons]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_return_reasons](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[active] [smallint] NULL,
	[mutable] [smallint] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_return_reasons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_roles]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_roles](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
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
/****** Object:  Table [dbo].[spree_roles_users]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_roles_users](
	[id] [int]  NOT NULL,
	[role_id] [int] NULL,
	[user_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_roles_users_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_roles_users$index_spree_roles_users_on_user_id_and_role_id] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipments]    Script Date: 2021/8/5 10:36:31 ******/
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
	[deprecated_address_id] [int] NULL,
	[state] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[stock_location_id] [int] NULL,
	[adjustment_total] [decimal](10, 2) NULL,
	[additional_tax_total] [decimal](10, 2) NULL,
	[promo_total] [decimal](10, 2) NULL,
	[included_tax_total] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_spree_shipments_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipping_categories]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipping_categories](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_shipping_categories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipping_method_categories]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipping_method_categories](
	[id] [int]  NOT NULL,
	[shipping_method_id] [int] NOT NULL,
	[shipping_category_id] [int] NOT NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
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
/****** Object:  Table [dbo].[spree_shipping_method_stock_locations]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipping_method_stock_locations](
	[id] [int]  NOT NULL,
	[shipping_method_id] [int] NULL,
	[stock_location_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_shipping_method_stock_locations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipping_method_zones]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipping_method_zones](
	[id] [int]  NOT NULL,
	[shipping_method_id] [int] NULL,
	[zone_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_shipping_method_zones_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipping_methods]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipping_methods](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[tracking_url] [nvarchar](255) NULL,
	[admin_name] [nvarchar](255) NULL,
	[tax_category_id] [int] NULL,
	[code] [nvarchar](255) NULL,
	[available_to_all] [smallint] NULL,
	[carrier] [nvarchar](255) NULL,
	[service_level] [nvarchar](255) NULL,
	[available_to_users] [smallint] NULL,
 CONSTRAINT [PK_spree_shipping_methods_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipping_rate_taxes]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_shipping_rate_taxes](
	[id] [int]  NOT NULL,
	[amount] [decimal](8, 2) NOT NULL,
	[tax_rate_id] [int] NULL,
	[shipping_rate_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_shipping_rate_taxes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_shipping_rates]    Script Date: 2021/8/5 10:36:31 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
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
/****** Object:  Table [dbo].[spree_state_changes]    Script Date: 2021/8/5 10:36:31 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_state_changes_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_states]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_states](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[abbr] [nvarchar](255) NULL,
	[country_id] [int] NULL,
	[updated_at] [datetime2](6) NULL,
	[created_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_states_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_stock_items]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_stock_items](
	[id] [int]  NOT NULL,
	[stock_location_id] [int] NULL,
	[variant_id] [int] NULL,
	[count_on_hand] [int] NOT NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[backorderable] [smallint] NULL,
	[deleted_at] [datetime2](0) NULL,
 CONSTRAINT [PK_spree_stock_items_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_stock_locations]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_stock_locations](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
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
	[position] [int] NULL,
	[restock_inventory] [smallint] NOT NULL,
	[fulfillable] [smallint] NOT NULL,
	[code] [nvarchar](255) NULL,
	[check_stock_on_transfer] [smallint] NULL,
 CONSTRAINT [PK_spree_stock_locations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_stock_movements]    Script Date: 2021/8/5 10:36:31 ******/
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
/****** Object:  Table [dbo].[spree_store_credit_categories]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_store_credit_categories](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_store_credit_categories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_store_credit_events]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_store_credit_events](
	[id] [int]  NOT NULL,
	[store_credit_id] [int] NOT NULL,
	[action] [nvarchar](255) NOT NULL,
	[amount] [decimal](8, 2) NULL,
	[user_total_amount] [decimal](8, 2) NOT NULL,
	[authorization_code] [nvarchar](255) NOT NULL,
	[deleted_at] [datetime2](0) NULL,
	[originator_type] [nvarchar](255) NULL,
	[originator_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[amount_remaining] [decimal](8, 2) NULL,
	[store_credit_reason_id] [int] NULL,
 CONSTRAINT [PK_spree_store_credit_events_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_store_credit_reasons]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_store_credit_reasons](
	[id] [bigint]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[active] [smallint] NULL,
	[created_at] [datetime2](0) NOT NULL,
	[updated_at] [datetime2](0) NOT NULL,
 CONSTRAINT [PK_spree_store_credit_reasons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_store_credit_types]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_store_credit_types](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[priority] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_store_credit_types_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_store_credits]    Script Date: 2021/8/5 10:36:31 ******/
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
	[amount_authorized] [decimal](8, 2) NOT NULL,
	[currency] [nvarchar](255) NULL,
	[memo] [nvarchar](max) NULL,
	[deleted_at] [datetime2](0) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[type_id] [int] NULL,
	[invalidated_at] [datetime2](0) NULL,
 CONSTRAINT [PK_spree_store_credits_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_store_payment_methods]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_store_payment_methods](
	[id] [int]  NOT NULL,
	[store_id] [int] NOT NULL,
	[payment_method_id] [int] NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_store_payment_methods_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_store_shipping_methods]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_store_shipping_methods](
	[id] [bigint]  NOT NULL,
	[store_id] [bigint] NOT NULL,
	[shipping_method_id] [bigint] NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_store_shipping_methods_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_stores]    Script Date: 2021/8/5 10:36:31 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[cart_tax_country_iso] [nvarchar](255) NULL,
	[available_locales] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_stores_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_tax_categories]    Script Date: 2021/8/5 10:36:31 ******/
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
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[tax_code] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_tax_categories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_tax_rate_tax_categories]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_tax_rate_tax_categories](
	[id] [int]  NOT NULL,
	[tax_category_id] [int] NOT NULL,
	[tax_rate_id] [int] NOT NULL,
 CONSTRAINT [PK_spree_tax_rate_tax_categories_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_tax_rates]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_tax_rates](
	[id] [int]  NOT NULL,
	[amount] [decimal](8, 5) NULL,
	[zone_id] [int] NULL,
	[included_in_price] [smallint] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[name] [nvarchar](255) NULL,
	[show_rate_in_label] [smallint] NULL,
	[deleted_at] [datetime2](0) NULL,
	[starts_at] [datetime2](0) NULL,
	[expires_at] [datetime2](0) NULL,
 CONSTRAINT [PK_spree_tax_rates_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_taxonomies]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_taxonomies](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[position] [int] NULL,
 CONSTRAINT [PK_spree_taxonomies_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_taxons]    Script Date: 2021/8/5 10:36:31 ******/
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
	[icon_file_name] [nvarchar](255) NULL,
	[icon_content_type] [nvarchar](255) NULL,
	[icon_file_size] [int] NULL,
	[icon_updated_at] [datetime2](0) NULL,
	[description] [nvarchar](max) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
	[meta_title] [nvarchar](255) NULL,
	[meta_description] [nvarchar](255) NULL,
	[meta_keywords] [nvarchar](255) NULL,
	[depth] [int] NULL,
 CONSTRAINT [PK_spree_taxons_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_unit_cancels]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_unit_cancels](
	[id] [int]  NOT NULL,
	[inventory_unit_id] [int] NOT NULL,
	[reason] [nvarchar](255) NULL,
	[created_by] [nvarchar](255) NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_unit_cancels_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_user_addresses]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_user_addresses](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[address_id] [int] NOT NULL,
	[default] [smallint] NULL,
	[archived] [smallint] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_user_addresses_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_user_addresses$index_spree_user_addresses_on_user_id_and_address_id] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[address_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_user_stock_locations]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_user_stock_locations](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[stock_location_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_user_stock_locations_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_users]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_users](
	[id] [int]  NOT NULL,
	[crypted_password] [nvarchar](128) NULL,
	[salt] [nvarchar](128) NULL,
	[email] [nvarchar](255) NULL,
	[remember_token] [nvarchar](255) NULL,
	[remember_token_expires_at] [nvarchar](255) NULL,
	[persistence_token] [nvarchar](255) NULL,
	[single_access_token] [nvarchar](255) NULL,
	[perishable_token] [nvarchar](255) NULL,
	[login_count] [int] NOT NULL,
	[failed_login_count] [int] NOT NULL,
	[last_request_at] [datetime2](0) NULL,
	[current_login_at] [datetime2](0) NULL,
	[last_login_at] [datetime2](0) NULL,
	[current_login_ip] [nvarchar](255) NULL,
	[last_login_ip] [nvarchar](255) NULL,
	[login] [nvarchar](255) NULL,
	[ship_address_id] [int] NULL,
	[bill_address_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
	[openid_identifier] [nvarchar](255) NULL,
 CONSTRAINT [PK_spree_users_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_variant_property_rule_conditions]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_variant_property_rule_conditions](
	[id] [int]  NOT NULL,
	[option_value_id] [int] NULL,
	[variant_property_rule_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_variant_property_rule_conditions_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_variant_property_rule_values]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_variant_property_rule_values](
	[id] [int]  NOT NULL,
	[value] [nvarchar](max) NULL,
	[position] [int] NULL,
	[property_id] [int] NULL,
	[variant_property_rule_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_variant_property_rule_values_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spree_variant_property_rules]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_variant_property_rules](
	[id] [int]  NOT NULL,
	[product_id] [int] NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_variant_property_rules_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_variants]    Script Date: 2021/8/5 10:36:31 ******/
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
	[is_master] [smallint] NULL,
	[product_id] [int] NULL,
	[cost_price] [decimal](10, 2) NULL,
	[position] [int] NULL,
	[cost_currency] [nvarchar](255) NULL,
	[track_inventory] [smallint] NULL,
	[tax_category_id] [int] NULL,
	[updated_at] [datetime2](6) NULL,
	[created_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_variants_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_wallet_payment_sources]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_wallet_payment_sources](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[payment_source_type] [nvarchar](255) NOT NULL,
	[payment_source_id] [int] NOT NULL,
	[default] [smallint] NOT NULL,
	[created_at] [datetime2](6) NOT NULL,
	[updated_at] [datetime2](6) NOT NULL,
 CONSTRAINT [PK_spree_wallet_payment_sources_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [spree_wallet_payment_sources$index_spree_wallet_payment_sources_on_source_and_user] UNIQUE NONCLUSTERED 
(
	[user_id] ASC,
	[payment_source_id] ASC,
	[payment_source_type] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_zone_members]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_zone_members](
	[id] [int]  NOT NULL,
	[zoneable_type] [nvarchar](255) NULL,
	[zoneable_id] [int] NULL,
	[zone_id] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_zone_members_id] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[spree_zones]    Script Date: 2021/8/5 10:36:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spree_zones](
	[id] [int]  NOT NULL,
	[name] [nvarchar](255) NULL,
	[description] [nvarchar](255) NULL,
	[zone_members_count] [int] NULL,
	[created_at] [datetime2](6) NULL,
	[updated_at] [datetime2](6) NULL,
 CONSTRAINT [PK_spree_zones_id] PRIMARY KEY CLUSTERED 
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
ALTER TABLE [dbo].[friendly_id_slugs] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_addresses] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_adjustment_reasons] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_adjustment_reasons] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[spree_adjustment_reasons] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_adjustment_reasons] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_adjustment_reasons] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [source_type]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [source_id]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [adjustable_type]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [amount]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [label]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT ((1)) FOR [eligible]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT ((0)) FOR [included]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [promotion_code_id]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT (NULL) FOR [adjustment_reason_id]
GO
ALTER TABLE [dbo].[spree_adjustments] ADD  DEFAULT ((0)) FOR [finalized]
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
ALTER TABLE [dbo].[spree_calculators] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_calculators] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_cartons] ADD  DEFAULT (NULL) FOR [number]
GO
ALTER TABLE [dbo].[spree_cartons] ADD  DEFAULT (NULL) FOR [external_number]
GO
ALTER TABLE [dbo].[spree_cartons] ADD  DEFAULT (NULL) FOR [stock_location_id]
GO
ALTER TABLE [dbo].[spree_cartons] ADD  DEFAULT (NULL) FOR [address_id]
GO
ALTER TABLE [dbo].[spree_cartons] ADD  DEFAULT (NULL) FOR [shipping_method_id]
GO
ALTER TABLE [dbo].[spree_cartons] ADD  DEFAULT (NULL) FOR [tracking]
GO
ALTER TABLE [dbo].[spree_cartons] ADD  DEFAULT (NULL) FOR [shipped_at]
GO
ALTER TABLE [dbo].[spree_cartons] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_cartons] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_cartons] ADD  DEFAULT (NULL) FOR [imported_from_shipment_id]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT (NULL) FOR [iso_name]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT (NULL) FOR [iso]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT (NULL) FOR [iso3]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT (NULL) FOR [numcode]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT ((0)) FOR [states_required]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_countries] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [month]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [year]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [cc_type]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [last_digits]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [gateway_customer_profile_id]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [gateway_payment_profile_id]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [payment_method_id]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT ((0)) FOR [default]
GO
ALTER TABLE [dbo].[spree_credit_cards] ADD  DEFAULT (NULL) FOR [address_id]
GO
ALTER TABLE [dbo].[spree_customer_returns] ADD  DEFAULT (NULL) FOR [number]
GO
ALTER TABLE [dbo].[spree_customer_returns] ADD  DEFAULT (NULL) FOR [stock_location_id]
GO
ALTER TABLE [dbo].[spree_customer_returns] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_customer_returns] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [variant_id]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [shipment_id]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT ((1)) FOR [pending]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [line_item_id]
GO
ALTER TABLE [dbo].[spree_inventory_units] ADD  DEFAULT (NULL) FOR [carton_id]
GO
ALTER TABLE [dbo].[spree_line_item_actions] ADD  DEFAULT ((0)) FOR [quantity]
GO
ALTER TABLE [dbo].[spree_line_item_actions] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_line_item_actions] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT (NULL) FOR [variant_id]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT (NULL) FOR [order_id]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_line_items] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_log_entries] ADD  DEFAULT (NULL) FOR [source_type]
GO
ALTER TABLE [dbo].[spree_log_entries] ADD  DEFAULT (NULL) FOR [source_id]
GO
ALTER TABLE [dbo].[spree_log_entries] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_log_entries] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] ADD  DEFAULT (NULL) FOR [prototype_id]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] ADD  DEFAULT (NULL) FOR [option_type_id]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_option_type_prototypes] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_option_types] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_option_types] ADD  DEFAULT (NULL) FOR [presentation]
GO
ALTER TABLE [dbo].[spree_option_types] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[spree_option_types] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_option_types] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_option_values] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[spree_option_values] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_option_values] ADD  DEFAULT (NULL) FOR [presentation]
GO
ALTER TABLE [dbo].[spree_option_values] ADD  DEFAULT (NULL) FOR [option_type_id]
GO
ALTER TABLE [dbo].[spree_option_values] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_option_values] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_option_values_variants] ADD  DEFAULT (NULL) FOR [variant_id]
GO
ALTER TABLE [dbo].[spree_option_values_variants] ADD  DEFAULT (NULL) FOR [option_value_id]
GO
ALTER TABLE [dbo].[spree_option_values_variants] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_option_values_variants] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_order_mutexes] ADD  DEFAULT (NULL) FOR [created_at]
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
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [guest_token]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [canceled_at]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [canceler_id]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [store_id]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT (NULL) FOR [approver_name]
GO
ALTER TABLE [dbo].[spree_orders] ADD  DEFAULT ((1)) FOR [frontend_viewable]
GO
ALTER TABLE [dbo].[spree_orders_promotions] ADD  DEFAULT (NULL) FOR [order_id]
GO
ALTER TABLE [dbo].[spree_orders_promotions] ADD  DEFAULT (NULL) FOR [promotion_id]
GO
ALTER TABLE [dbo].[spree_orders_promotions] ADD  DEFAULT (NULL) FOR [promotion_code_id]
GO
ALTER TABLE [dbo].[spree_orders_promotions] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_orders_promotions] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] ADD  DEFAULT ((0.00)) FOR [amount]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] ADD  DEFAULT (NULL) FOR [payment_id]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_payment_capture_events] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [auto_capture]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT (NULL) FOR [preference_source]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT ((1)) FOR [available_to_users]
GO
ALTER TABLE [dbo].[spree_payment_methods] ADD  DEFAULT ((1)) FOR [available_to_admin]
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
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [number]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [cvv_response_code]
GO
ALTER TABLE [dbo].[spree_payments] ADD  DEFAULT (NULL) FOR [cvv_response_message]
GO
ALTER TABLE [dbo].[spree_preferences] ADD  DEFAULT (NULL) FOR [key]
GO
ALTER TABLE [dbo].[spree_preferences] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_preferences] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_prices] ADD  DEFAULT (NULL) FOR [amount]
GO
ALTER TABLE [dbo].[spree_prices] ADD  DEFAULT (NULL) FOR [currency]
GO
ALTER TABLE [dbo].[spree_prices] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_prices] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_prices] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_prices] ADD  DEFAULT (NULL) FOR [country_iso]
GO
ALTER TABLE [dbo].[spree_product_option_types] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[spree_product_option_types] ADD  DEFAULT (NULL) FOR [product_id]
GO
ALTER TABLE [dbo].[spree_product_option_types] ADD  DEFAULT (NULL) FOR [option_type_id]
GO
ALTER TABLE [dbo].[spree_product_option_types] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_product_option_types] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] ADD  DEFAULT (NULL) FOR [product_id]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] ADD  DEFAULT (NULL) FOR [promotion_rule_id]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_product_promotion_rules] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_product_properties] ADD  DEFAULT (NULL) FOR [value]
GO
ALTER TABLE [dbo].[spree_product_properties] ADD  DEFAULT (NULL) FOR [product_id]
GO
ALTER TABLE [dbo].[spree_product_properties] ADD  DEFAULT (NULL) FOR [property_id]
GO
ALTER TABLE [dbo].[spree_product_properties] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_product_properties] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_product_properties] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (NULL) FOR [available_on]
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
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_products] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_products_taxons] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_products_taxons] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] ADD  DEFAULT (NULL) FOR [promotion_action_id]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] ADD  DEFAULT (NULL) FOR [variant_id]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] ADD  DEFAULT ((1)) FOR [quantity]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_promotion_action_line_items] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_promotion_actions] ADD  DEFAULT (NULL) FOR [promotion_id]
GO
ALTER TABLE [dbo].[spree_promotion_actions] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[spree_promotion_actions] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_promotion_actions] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_promotion_actions] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_promotion_actions] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_promotion_categories] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_promotion_categories] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_promotion_categories] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_promotion_categories] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[spree_promotion_code_batches] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[spree_promotion_code_batches] ADD  DEFAULT (NULL) FOR [error]
GO
ALTER TABLE [dbo].[spree_promotion_code_batches] ADD  DEFAULT (N'pending') FOR [state]
GO
ALTER TABLE [dbo].[spree_promotion_code_batches] ADD  DEFAULT (N'_') FOR [join_characters]
GO
ALTER TABLE [dbo].[spree_promotion_codes] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_promotion_codes] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_promotion_codes] ADD  DEFAULT (NULL) FOR [promotion_code_batch_id]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] ADD  DEFAULT (NULL) FOR [taxon_id]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] ADD  DEFAULT (NULL) FOR [promotion_rule_id]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_promotion_rule_taxons] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_promotion_rules] ADD  DEFAULT (NULL) FOR [promotion_id]
GO
ALTER TABLE [dbo].[spree_promotion_rules] ADD  DEFAULT (NULL) FOR [product_group_id]
GO
ALTER TABLE [dbo].[spree_promotion_rules] ADD  DEFAULT (NULL) FOR [type]
GO
ALTER TABLE [dbo].[spree_promotion_rules] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_promotion_rules] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_promotion_rules] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[spree_promotion_rules_users] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_promotion_rules_users] ADD  DEFAULT (NULL) FOR [promotion_rule_id]
GO
ALTER TABLE [dbo].[spree_promotion_rules_users] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_promotion_rules_users] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT ((0)) FOR [advertise]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [path]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [promotion_category_id]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT (NULL) FOR [per_code_usage_limit]
GO
ALTER TABLE [dbo].[spree_promotions] ADD  DEFAULT ((0)) FOR [apply_automatically]
GO
ALTER TABLE [dbo].[spree_properties] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_properties] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_properties] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_property_prototypes] ADD  DEFAULT (NULL) FOR [prototype_id]
GO
ALTER TABLE [dbo].[spree_property_prototypes] ADD  DEFAULT (NULL) FOR [property_id]
GO
ALTER TABLE [dbo].[spree_property_prototypes] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_property_prototypes] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] ADD  DEFAULT (NULL) FOR [taxon_id]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] ADD  DEFAULT (NULL) FOR [prototype_id]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_prototype_taxons] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_prototypes] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_prototypes] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_prototypes] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_refund_reasons] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_refund_reasons] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_refund_reasons] ADD  DEFAULT ((1)) FOR [mutable]
GO
ALTER TABLE [dbo].[spree_refund_reasons] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_refund_reasons] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_refund_reasons] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[spree_refunds] ADD  DEFAULT (NULL) FOR [payment_id]
GO
ALTER TABLE [dbo].[spree_refunds] ADD  DEFAULT ((0.00)) FOR [amount]
GO
ALTER TABLE [dbo].[spree_refunds] ADD  DEFAULT (NULL) FOR [transaction_id]
GO
ALTER TABLE [dbo].[spree_refunds] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_refunds] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_reimbursement_credits] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_reimbursement_credits] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] ADD  DEFAULT ((1)) FOR [mutable]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_reimbursement_types] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_reimbursements] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_reimbursements] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_return_authorizations] ADD  DEFAULT (NULL) FOR [return_reason_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [return_authorization_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [inventory_unit_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [exchange_variant_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT ((0.0000)) FOR [amount]
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
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [exchange_inventory_unit_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [preferred_reimbursement_type_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [override_reimbursement_type_id]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT ((1)) FOR [resellable]
GO
ALTER TABLE [dbo].[spree_return_items] ADD  DEFAULT (NULL) FOR [return_reason_id]
GO
ALTER TABLE [dbo].[spree_return_reasons] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_return_reasons] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_return_reasons] ADD  DEFAULT ((1)) FOR [mutable]
GO
ALTER TABLE [dbo].[spree_return_reasons] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_return_reasons] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_roles] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_roles] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_roles] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_roles_users] ADD  DEFAULT (NULL) FOR [role_id]
GO
ALTER TABLE [dbo].[spree_roles_users] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_roles_users] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_roles_users] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT (NULL) FOR [deprecated_address_id]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT (NULL) FOR [state]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_shipments] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_shipping_categories] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_shipping_categories] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_shipping_categories] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_shipping_method_categories] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_shipping_method_categories] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_shipping_method_stock_locations] ADD  DEFAULT (NULL) FOR [shipping_method_id]
GO
ALTER TABLE [dbo].[spree_shipping_method_stock_locations] ADD  DEFAULT (NULL) FOR [stock_location_id]
GO
ALTER TABLE [dbo].[spree_shipping_method_stock_locations] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_shipping_method_stock_locations] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] ADD  DEFAULT (NULL) FOR [shipping_method_id]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] ADD  DEFAULT (NULL) FOR [zone_id]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_shipping_method_zones] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [tracking_url]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [admin_name]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [tax_category_id]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT ((1)) FOR [available_to_all]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [carrier]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT (NULL) FOR [service_level]
GO
ALTER TABLE [dbo].[spree_shipping_methods] ADD  DEFAULT ((1)) FOR [available_to_users]
GO
ALTER TABLE [dbo].[spree_shipping_rate_taxes] ADD  DEFAULT ((0.00)) FOR [amount]
GO
ALTER TABLE [dbo].[spree_shipping_rate_taxes] ADD  DEFAULT (NULL) FOR [tax_rate_id]
GO
ALTER TABLE [dbo].[spree_shipping_rate_taxes] ADD  DEFAULT (NULL) FOR [shipping_rate_id]
GO
ALTER TABLE [dbo].[spree_shipping_rates] ADD  DEFAULT (NULL) FOR [shipment_id]
GO
ALTER TABLE [dbo].[spree_shipping_rates] ADD  DEFAULT (NULL) FOR [shipping_method_id]
GO
ALTER TABLE [dbo].[spree_shipping_rates] ADD  DEFAULT ((0)) FOR [selected]
GO
ALTER TABLE [dbo].[spree_shipping_rates] ADD  DEFAULT ((0.00)) FOR [cost]
GO
ALTER TABLE [dbo].[spree_shipping_rates] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_shipping_rates] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_state_changes] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_state_changes] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_states] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_states] ADD  DEFAULT (NULL) FOR [abbr]
GO
ALTER TABLE [dbo].[spree_states] ADD  DEFAULT (NULL) FOR [country_id]
GO
ALTER TABLE [dbo].[spree_states] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_states] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT (NULL) FOR [stock_location_id]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT (NULL) FOR [variant_id]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT ((0)) FOR [count_on_hand]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT ((0)) FOR [backorderable]
GO
ALTER TABLE [dbo].[spree_stock_items] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT ((1)) FOR [restock_inventory]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT ((1)) FOR [fulfillable]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT (NULL) FOR [code]
GO
ALTER TABLE [dbo].[spree_stock_locations] ADD  DEFAULT ((1)) FOR [check_stock_on_transfer]
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
ALTER TABLE [dbo].[spree_store_credit_categories] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_store_credit_categories] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_store_credit_categories] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [amount]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT ((0.00)) FOR [user_total_amount]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [originator_type]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [originator_id]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [amount_remaining]
GO
ALTER TABLE [dbo].[spree_store_credit_events] ADD  DEFAULT (NULL) FOR [store_credit_reason_id]
GO
ALTER TABLE [dbo].[spree_store_credit_reasons] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_store_credit_reasons] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[spree_store_credit_types] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_store_credit_types] ADD  DEFAULT (NULL) FOR [priority]
GO
ALTER TABLE [dbo].[spree_store_credit_types] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_store_credit_types] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT ((0.00)) FOR [amount_authorized]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [currency]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [type_id]
GO
ALTER TABLE [dbo].[spree_store_credits] ADD  DEFAULT (NULL) FOR [invalidated_at]
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
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [cart_tax_country_iso]
GO
ALTER TABLE [dbo].[spree_stores] ADD  DEFAULT (NULL) FOR [available_locales]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT ((0)) FOR [is_default]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_tax_categories] ADD  DEFAULT (NULL) FOR [tax_code]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [amount]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [zone_id]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT ((0)) FOR [included_in_price]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT ((1)) FOR [show_rate_in_label]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [deleted_at]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [starts_at]
GO
ALTER TABLE [dbo].[spree_tax_rates] ADD  DEFAULT (NULL) FOR [expires_at]
GO
ALTER TABLE [dbo].[spree_taxonomies] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_taxonomies] ADD  DEFAULT (NULL) FOR [updated_at]
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
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [icon_file_name]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [icon_content_type]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [icon_file_size]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [icon_updated_at]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [meta_title]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [meta_description]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [meta_keywords]
GO
ALTER TABLE [dbo].[spree_taxons] ADD  DEFAULT (NULL) FOR [depth]
GO
ALTER TABLE [dbo].[spree_unit_cancels] ADD  DEFAULT (NULL) FOR [reason]
GO
ALTER TABLE [dbo].[spree_unit_cancels] ADD  DEFAULT (NULL) FOR [created_by]
GO
ALTER TABLE [dbo].[spree_unit_cancels] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_unit_cancels] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_user_addresses] ADD  DEFAULT ((0)) FOR [default]
GO
ALTER TABLE [dbo].[spree_user_addresses] ADD  DEFAULT ((0)) FOR [archived]
GO
ALTER TABLE [dbo].[spree_user_stock_locations] ADD  DEFAULT (NULL) FOR [user_id]
GO
ALTER TABLE [dbo].[spree_user_stock_locations] ADD  DEFAULT (NULL) FOR [stock_location_id]
GO
ALTER TABLE [dbo].[spree_user_stock_locations] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_user_stock_locations] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [crypted_password]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [salt]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [email]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [remember_token]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [remember_token_expires_at]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [persistence_token]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [single_access_token]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [perishable_token]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT ((0)) FOR [login_count]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT ((0)) FOR [failed_login_count]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [last_request_at]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [current_login_at]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [last_login_at]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [current_login_ip]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [last_login_ip]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [login]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [ship_address_id]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [bill_address_id]
GO
ALTER TABLE [dbo].[spree_users] ADD  DEFAULT (NULL) FOR [openid_identifier]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_conditions] ADD  DEFAULT (NULL) FOR [option_value_id]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_conditions] ADD  DEFAULT (NULL) FOR [variant_property_rule_id]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_values] ADD  DEFAULT ((0)) FOR [position]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_values] ADD  DEFAULT (NULL) FOR [property_id]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_values] ADD  DEFAULT (NULL) FOR [variant_property_rule_id]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_values] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_variant_property_rule_values] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_variant_property_rules] ADD  DEFAULT (NULL) FOR [product_id]
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
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT ((0)) FOR [is_master]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [product_id]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [cost_price]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [position]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [cost_currency]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT ((1)) FOR [track_inventory]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [tax_category_id]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_variants] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_wallet_payment_sources] ADD  DEFAULT ((0)) FOR [default]
GO
ALTER TABLE [dbo].[spree_zone_members] ADD  DEFAULT (NULL) FOR [zoneable_type]
GO
ALTER TABLE [dbo].[spree_zone_members] ADD  DEFAULT (NULL) FOR [zoneable_id]
GO
ALTER TABLE [dbo].[spree_zone_members] ADD  DEFAULT (NULL) FOR [zone_id]
GO
ALTER TABLE [dbo].[spree_zone_members] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_zone_members] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[spree_zones] ADD  DEFAULT (NULL) FOR [name]
GO
ALTER TABLE [dbo].[spree_zones] ADD  DEFAULT (NULL) FOR [description]
GO
ALTER TABLE [dbo].[spree_zones] ADD  DEFAULT ((0)) FOR [zone_members_count]
GO
ALTER TABLE [dbo].[spree_zones] ADD  DEFAULT (NULL) FOR [created_at]
GO
ALTER TABLE [dbo].[spree_zones] ADD  DEFAULT (NULL) FOR [updated_at]
GO
ALTER TABLE [dbo].[active_storage_attachments]  WITH NOCHECK ADD  CONSTRAINT [active_storage_attachments$fk_rails_c3b3935057] FOREIGN KEY([blob_id])
REFERENCES [dbo].[active_storage_blobs] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[active_storage_attachments] CHECK CONSTRAINT [active_storage_attachments$fk_rails_c3b3935057]
GO
ALTER TABLE [dbo].[spree_promotion_code_batches]  WITH NOCHECK ADD  CONSTRAINT [spree_promotion_code_batches$fk_rails_c217102f50] FOREIGN KEY([promotion_id])
REFERENCES [dbo].[spree_promotions] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spree_promotion_code_batches] CHECK CONSTRAINT [spree_promotion_code_batches$fk_rails_c217102f50]
GO
ALTER TABLE [dbo].[spree_promotion_codes]  WITH NOCHECK ADD  CONSTRAINT [spree_promotion_codes$fk_rails_e306e312d9] FOREIGN KEY([promotion_code_batch_id])
REFERENCES [dbo].[spree_promotion_code_batches] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spree_promotion_codes] CHECK CONSTRAINT [spree_promotion_codes$fk_rails_e306e312d9]
GO
ALTER TABLE [dbo].[spree_tax_rate_tax_categories]  WITH NOCHECK ADD  CONSTRAINT [spree_tax_rate_tax_categories$fk_rails_3e6fe87e12] FOREIGN KEY([tax_rate_id])
REFERENCES [dbo].[spree_tax_rates] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spree_tax_rate_tax_categories] CHECK CONSTRAINT [spree_tax_rate_tax_categories$fk_rails_3e6fe87e12]
GO
ALTER TABLE [dbo].[spree_tax_rate_tax_categories]  WITH NOCHECK ADD  CONSTRAINT [spree_tax_rate_tax_categories$fk_rails_499313ce8e] FOREIGN KEY([tax_category_id])
REFERENCES [dbo].[spree_tax_categories] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spree_tax_rate_tax_categories] CHECK CONSTRAINT [spree_tax_rate_tax_categories$fk_rails_499313ce8e]
GO
ALTER TABLE [dbo].[spree_wallet_payment_sources]  WITH NOCHECK ADD  CONSTRAINT [spree_wallet_payment_sources$fk_rails_5dd6e027c5] FOREIGN KEY([user_id])
REFERENCES [dbo].[spree_users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[spree_wallet_payment_sources] CHECK CONSTRAINT [spree_wallet_payment_sources$fk_rails_5dd6e027c5]
GO
