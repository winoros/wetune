-- USE [shopizer_base]
GO
ALTER TABLE [dbo].[zone_description] DROP CONSTRAINT [FKpv4elin6w3b03756obqvk447f]
GO
ALTER TABLE [dbo].[zone_description] DROP CONSTRAINT [FK69ybu7r3bgpcq65c77ji1udh3]
GO
ALTER TABLE [dbo].[zone] DROP CONSTRAINT [FKhn2c1w3e1twhjg7tiwv7vuk67]
GO
ALTER TABLE [dbo].[user_group] DROP CONSTRAINT [FKdonp1m2n25ua1465rhice3qna]
GO
ALTER TABLE [dbo].[user_group] DROP CONSTRAINT [FK75kainrhn4kh8j3sw2xbe7v61]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [FK3sh6qxgt118m71ttvkubgd9y8]
GO
ALTER TABLE [dbo].[user] DROP CONSTRAINT [FK2yn065l2n7nw9rofjs4hwpij2]
GO
ALTER TABLE [dbo].[tax_rate_description] DROP CONSTRAINT [FKsicb2ydx42o04pvlnxw2mlx0w]
GO
ALTER TABLE [dbo].[tax_rate_description] DROP CONSTRAINT [FK65c2lqslk5kx25dpkem2r0vxq]
GO
ALTER TABLE [dbo].[tax_rate] DROP CONSTRAINT [FKt8isen27i3ioa0tw3bl8qlvdh]
GO
ALTER TABLE [dbo].[tax_rate] DROP CONSTRAINT [FKm9snpf6o1nb4j1t80nas8d1ix]
GO
ALTER TABLE [dbo].[tax_rate] DROP CONSTRAINT [FKfwp6yka2qps9jna473e6c6yc1]
GO
ALTER TABLE [dbo].[tax_rate] DROP CONSTRAINT [FK7bpa9pbl1gnj5y3xbgs3wc0eg]
GO
ALTER TABLE [dbo].[tax_rate] DROP CONSTRAINT [FK6wm34jcwoembe1qsmle2wtwnv]
GO
ALTER TABLE [dbo].[tax_class] DROP CONSTRAINT [FK82i8puujghcv7fc82qwsgjg8w]
GO
ALTER TABLE [dbo].[system_notification] DROP CONSTRAINT [FKs6qk7l06e0s6m9n04momedgt7]
GO
ALTER TABLE [dbo].[system_notification] DROP CONSTRAINT [FKa54891emcl0fo27a1qk54slvk]
GO
ALTER TABLE [dbo].[sm_transaction] DROP CONSTRAINT [FK7j0s1gqh2tue1fyh5nyj5kwkp]
GO
ALTER TABLE [dbo].[shopping_cart_item] DROP CONSTRAINT [FK2gbimdwe9uysd5xadnfl0xq83]
GO
ALTER TABLE [dbo].[shopping_cart_attr_item] DROP CONSTRAINT [FKp42tpa623hyo9ww69v0ohb3er]
GO
ALTER TABLE [dbo].[shopping_cart] DROP CONSTRAINT [FKqvghr5rmjefe3lw9mcolk30a0]
GO
ALTER TABLE [dbo].[shipping_quote] DROP CONSTRAINT [FKiioesp0vl6x4om1jeajj4uy1t]
GO
ALTER TABLE [dbo].[shipping_quote] DROP CONSTRAINT [FK9vb7tbjl8ivygdiqw883fewx7]
GO
ALTER TABLE [dbo].[shiping_origin] DROP CONSTRAINT [FKpqig59usqvs9h0dw4lm8rv7yy]
GO
ALTER TABLE [dbo].[shiping_origin] DROP CONSTRAINT [FKp0dbwsv3sdsp57ex7j5k9b0oq]
GO
ALTER TABLE [dbo].[shiping_origin] DROP CONSTRAINT [FK6k73f1n18kr7mqp708aiwq047]
GO
ALTER TABLE [dbo].[product_review_description] DROP CONSTRAINT [FKmjivhigdcxmytndlpjuhf4o25]
GO
ALTER TABLE [dbo].[product_review_description] DROP CONSTRAINT [FK7byc5jsf5bm4lk674ac44e50m]
GO
ALTER TABLE [dbo].[product_review] DROP CONSTRAINT [FKbfi8de7kxultg1vevq6jc1hn7]
GO
ALTER TABLE [dbo].[product_review] DROP CONSTRAINT [FK7tm0jrt0hiugo3ep49t3subou]
GO
ALTER TABLE [dbo].[product_relationship] DROP CONSTRAINT [FKso3cvinykac5wdwu1tjgfotor]
GO
ALTER TABLE [dbo].[product_relationship] DROP CONSTRAINT [FKnprvswtbgrm6bjfq3cbdl3qsm]
GO
ALTER TABLE [dbo].[product_relationship] DROP CONSTRAINT [FKfskwtawyt85g9h6761fa69ya5]
GO
ALTER TABLE [dbo].[product_price_description] DROP CONSTRAINT [FKbwxw861ipjsct606j3dagdjsf]
GO
ALTER TABLE [dbo].[product_price_description] DROP CONSTRAINT [FK7bmbrjr8ar5icwdpt8myj6gei]
GO
ALTER TABLE [dbo].[product_price] DROP CONSTRAINT [FK1dic7jnnk1qikgvwcrf4dw12r]
GO
ALTER TABLE [dbo].[product_option_value_description] DROP CONSTRAINT [FKqttc6b79yp2s1hyrhg4thag6s]
GO
ALTER TABLE [dbo].[product_option_value_description] DROP CONSTRAINT [FK19mnby7atlt85exlypxdxhacx]
GO
ALTER TABLE [dbo].[product_option_value] DROP CONSTRAINT [FKnd3nw0mamlk8bkxo8ad5m85pq]
GO
ALTER TABLE [dbo].[product_option_desc] DROP CONSTRAINT [FKgjqmfofile4hwv867irsnvuc0]
GO
ALTER TABLE [dbo].[product_option_desc] DROP CONSTRAINT [FK8fiwk5o1gbn2r2u8529yaf9xt]
GO
ALTER TABLE [dbo].[product_option] DROP CONSTRAINT [FKp8cski5t5f5m4et4fw0uilcgu]
GO
ALTER TABLE [dbo].[product_image_description] DROP CONSTRAINT [FKlhdnpki4sf98wev0pcj2bvnih]
GO
ALTER TABLE [dbo].[product_image_description] DROP CONSTRAINT [FK1dhldo18nj9l2y6qympgucynq]
GO
ALTER TABLE [dbo].[product_image] DROP CONSTRAINT [FKgab836d8rxqg8vv55nm02r65i]
GO
ALTER TABLE [dbo].[product_digital] DROP CONSTRAINT [FK47fmb5cg68pws7k26txyl1il6]
GO
ALTER TABLE [dbo].[product_description] DROP CONSTRAINT [FKm46yjcu59q79qrokgglwq2ove]
GO
ALTER TABLE [dbo].[product_description] DROP CONSTRAINT [FK6esjdaa6vu2t5vjin788a8og6]
GO
ALTER TABLE [dbo].[product_category] DROP CONSTRAINT [FKa7245ly271mb0crlhxwhhppsq]
GO
ALTER TABLE [dbo].[product_category] DROP CONSTRAINT [FK3xw1sbaa29r534jvedimdd7md]
GO
ALTER TABLE [dbo].[product_availability] DROP CONSTRAINT [FK5sbh4dx25pmjcqx958hr9ys8h]
GO
ALTER TABLE [dbo].[product_attribute] DROP CONSTRAINT [FKml3nvemdjya159a7669qt1gjd]
GO
ALTER TABLE [dbo].[product_attribute] DROP CONSTRAINT [FK3rleultg9fn2dxruefbb18d5t]
GO
ALTER TABLE [dbo].[product_attribute] DROP CONSTRAINT [FK2st60u9twmvvaowwn88mt3lrx]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FKra5mmrdxn3ci86hod7q1u3vu9]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FKqtt5f0aht5h7ough5rbkkcb33]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FKhhoq1nd9e0i4m7rt8gkh7d67h]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FKeiirvj8eu40h103fth8es1mt0]
GO
ALTER TABLE [dbo].[product] DROP CONSTRAINT [FKb8oqtc3j8sqo0t8xdrne7pg69]
GO
ALTER TABLE [dbo].[permission_group] DROP CONSTRAINT [FKr7ylutdgqp1nrlbhjwit6y17g]
GO
ALTER TABLE [dbo].[permission_group] DROP CONSTRAINT [FK77ly3khyuu40odly02d351s84]
GO
ALTER TABLE [dbo].[orders] DROP CONSTRAINT [FKnlx97vjyorunxglhy5bird06c]
GO
ALTER TABLE [dbo].[orders] DROP CONSTRAINT [FKn9uvjl8105fsly4doo8rqnv5b]
GO
ALTER TABLE [dbo].[orders] DROP CONSTRAINT [FKit6ti99mv5uvuxqskhurv3y59]
GO
ALTER TABLE [dbo].[orders] DROP CONSTRAINT [FKipesu5tupnriahutgle6xu9ed]
GO
ALTER TABLE [dbo].[orders] DROP CONSTRAINT [FKfusivmw6q3gjxnmp47n9s74qi]
GO
ALTER TABLE [dbo].[orders] DROP CONSTRAINT [FKaodv5ffayq8x50q311o2y8m1]
GO
ALTER TABLE [dbo].[order_total] DROP CONSTRAINT [FK1tfvgk5smm80efdcc8uop4he3]
GO
ALTER TABLE [dbo].[order_status_history] DROP CONSTRAINT [FKmhghgf1xy3o0npsp8xkj6wyvq]
GO
ALTER TABLE [dbo].[order_product_price] DROP CONSTRAINT [FKnkukiqxrieonyulercgnh857s]
GO
ALTER TABLE [dbo].[order_product_download] DROP CONSTRAINT [FKstrda0eweharld63j8pxa2o2r]
GO
ALTER TABLE [dbo].[order_product_attribute] DROP CONSTRAINT [FK7j86rvwaysbok1nuofrnmhmkx]
GO
ALTER TABLE [dbo].[order_product] DROP CONSTRAINT [FKf0sghmn59s14cxrjtrvkvi5yk]
GO
ALTER TABLE [dbo].[order_attribute] DROP CONSTRAINT [FK4nw5yrtgb4in6leve76bmdnua]
GO
ALTER TABLE [dbo].[order_account_product] DROP CONSTRAINT [FK7oxc8ygov7vd2ajt185jhiwts]
GO
ALTER TABLE [dbo].[order_account_product] DROP CONSTRAINT [FK5kiyyb8ekqi9bfowytww8atcx]
GO
ALTER TABLE [dbo].[order_account] DROP CONSTRAINT [FKi6l5isodh81m5hy8ua06hx73n]
GO
ALTER TABLE [dbo].[optin] DROP CONSTRAINT [FK37xvfo4the20avv7f1e1771fh]
GO
ALTER TABLE [dbo].[merchant_store] DROP CONSTRAINT [FKdnemo9tl8tjhkxko83psvkv19]
GO
ALTER TABLE [dbo].[merchant_store] DROP CONSTRAINT [FK63hlw9wp1k1x3f5tke7t2us7s]
GO
ALTER TABLE [dbo].[merchant_store] DROP CONSTRAINT [FK5o24aky9161jyofyxmg0g53vv]
GO
ALTER TABLE [dbo].[merchant_store] DROP CONSTRAINT [FK2gn7vpkd9x832urw7c6jlawnn]
GO
ALTER TABLE [dbo].[merchant_log] DROP CONSTRAINT [FKto727b9r68qrtn2vvdqdvd4ic]
GO
ALTER TABLE [dbo].[merchant_language] DROP CONSTRAINT [FKjwy0pjijh1qmcoivq50o2jgec]
GO
ALTER TABLE [dbo].[merchant_language] DROP CONSTRAINT [FKiisj0tmoujv6n3iqmytvo39kn]
GO
ALTER TABLE [dbo].[merchant_configuration] DROP CONSTRAINT [FKf9bkgf0ysbp5fo9j69shm0pri]
GO
ALTER TABLE [dbo].[manufacturer_description] DROP CONSTRAINT [FKre4iys57n5cfbgpg3qqgewtrh]
GO
ALTER TABLE [dbo].[manufacturer_description] DROP CONSTRAINT [FK20t33wr4tp1kt1uyw7s8a3afl]
GO
ALTER TABLE [dbo].[manufacturer] DROP CONSTRAINT [FKhswph4nthrqwffjekccudsrt2]
GO
ALTER TABLE [dbo].[geozone_description] DROP CONSTRAINT [FKn82te2yb2st4hk2qlhl8ileb9]
GO
ALTER TABLE [dbo].[geozone_description] DROP CONSTRAINT [FK1t2hp628edebe5d6co2whbla9]
GO
ALTER TABLE [dbo].[file_history] DROP CONSTRAINT [FK2k8h4penkjlbtc23vamwyek2g]
GO
ALTER TABLE [dbo].[customer_review_description] DROP CONSTRAINT [FKhf88oagf6t62k28afn8uaijc7]
GO
ALTER TABLE [dbo].[customer_review_description] DROP CONSTRAINT [FK5pkgrlk32uqaxkrbve5mws1hj]
GO
ALTER TABLE [dbo].[customer_review] DROP CONSTRAINT [FKayt6tbxp7d4g1qyg8crw2n73p]
GO
ALTER TABLE [dbo].[customer_review] DROP CONSTRAINT [FK7pmqdk9od2af7cl6alx82fkek]
GO
ALTER TABLE [dbo].[customer_option_value] DROP CONSTRAINT [FKho87ssg5rnvwauj3y690a96g6]
GO
ALTER TABLE [dbo].[customer_option_set] DROP CONSTRAINT [FKj9vnvyh6hhhftjbcsymgiodm9]
GO
ALTER TABLE [dbo].[customer_option_set] DROP CONSTRAINT [FK1y5qtsuabhpwft3dyhqrgmtb4]
GO
ALTER TABLE [dbo].[customer_option_desc] DROP CONSTRAINT [FKm4iu7v9db17wk2a03xqbqdlfa]
GO
ALTER TABLE [dbo].[customer_option_desc] DROP CONSTRAINT [FKc2yiucjbw0wjha8ww7a01qfeo]
GO
ALTER TABLE [dbo].[customer_option] DROP CONSTRAINT [FKcmqnh0rn2hukdfowean5tdy8k]
GO
ALTER TABLE [dbo].[customer_optin] DROP CONSTRAINT [FKk5v94dvhsgibaw89hv4m8o5yw]
GO
ALTER TABLE [dbo].[customer_optin] DROP CONSTRAINT [FK7qym878m07cwvs4foe68lvqjt]
GO
ALTER TABLE [dbo].[customer_opt_val_description] DROP CONSTRAINT [FKhwrs6fyqk6vh11yvcflu42yef]
GO
ALTER TABLE [dbo].[customer_opt_val_description] DROP CONSTRAINT [FK6rfssi3qfx4pswicxrfb18c1]
GO
ALTER TABLE [dbo].[customer_group] DROP CONSTRAINT [FKgrr5v89l1m9sl2qol62bbctq4]
GO
ALTER TABLE [dbo].[customer_group] DROP CONSTRAINT [FK257h3e27f4ujw08doqtq46hho]
GO
ALTER TABLE [dbo].[customer_attribute] DROP CONSTRAINT [FKc3318o13i2bpxkci1bh52we5a]
GO
ALTER TABLE [dbo].[customer_attribute] DROP CONSTRAINT [FK9fl7iexvdeeeoch9fh35o5vw4]
GO
ALTER TABLE [dbo].[customer_attribute] DROP CONSTRAINT [FK4xugs9yd9w4o3sw11fisb8tj5]
GO
ALTER TABLE [dbo].[customer] DROP CONSTRAINT [FKp0xcpa3i2mgdr0kq43xiibx40]
GO
ALTER TABLE [dbo].[customer] DROP CONSTRAINT [FKdgjqmj04qt89gmfloo4ofojcw]
GO
ALTER TABLE [dbo].[customer] DROP CONSTRAINT [FKbxyooiceli2ko29bupdye6jgn]
GO
ALTER TABLE [dbo].[customer] DROP CONSTRAINT [FK8122nrpakxu3umk1od4v0xxoa]
GO
ALTER TABLE [dbo].[customer] DROP CONSTRAINT [FK5pas8t9mknk4kkin55t4v300l]
GO
ALTER TABLE [dbo].[customer] DROP CONSTRAINT [FK3k21jw28bbx043c2mnhevg9w4]
GO
ALTER TABLE [dbo].[country_description] DROP CONSTRAINT [FKkd2sy7q97wr2ahvyiiqc4txji]
GO
ALTER TABLE [dbo].[country_description] DROP CONSTRAINT [FKersrbjot9p9nfukxfd2l27c7t]
GO
ALTER TABLE [dbo].[country] DROP CONSTRAINT [FKd2q9e14kh1j6tm1gpbct2xwws]
GO
ALTER TABLE [dbo].[content_description] DROP CONSTRAINT [FKk7fabfxn2flvcofwwpyg5sys]
GO
ALTER TABLE [dbo].[content_description] DROP CONSTRAINT [FK47yxf681u0rfw2kvarhqb0r3v]
GO
ALTER TABLE [dbo].[content] DROP CONSTRAINT [FKfmoi0fkjbtfty3o8fs94t11r1]
GO
ALTER TABLE [dbo].[category_description] DROP CONSTRAINT [FKl4j5boteutpu1p8f67kydpnmd]
GO
ALTER TABLE [dbo].[category_description] DROP CONSTRAINT [FKa58u7d0ydfgref1iaux5efyov]
GO
ALTER TABLE [dbo].[category] DROP CONSTRAINT [FKn3kekntr7pm8g9v8ask698ato]
GO
ALTER TABLE [dbo].[category] DROP CONSTRAINT [FK8a09asq5fcx0a88i4m8nsixy]
GO
/****** Object:  Table [dbo].[zone_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[zone_description]') AND type in (N'U'))
DROP TABLE [dbo].[zone_description]
GO
/****** Object:  Table [dbo].[zone]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[zone]') AND type in (N'U'))
DROP TABLE [dbo].[zone]
GO
/****** Object:  Table [dbo].[userconnection]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[userconnection]') AND type in (N'U'))
DROP TABLE [dbo].[userconnection]
GO
/****** Object:  Table [dbo].[user_group]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_group]') AND type in (N'U'))
DROP TABLE [dbo].[user_group]
GO
/****** Object:  Table [dbo].[user]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user]') AND type in (N'U'))
DROP TABLE [dbo].[user]
GO
/****** Object:  Table [dbo].[tax_rate_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tax_rate_description]') AND type in (N'U'))
DROP TABLE [dbo].[tax_rate_description]
GO
/****** Object:  Table [dbo].[tax_rate]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tax_rate]') AND type in (N'U'))
DROP TABLE [dbo].[tax_rate]
GO
/****** Object:  Table [dbo].[tax_class]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tax_class]') AND type in (N'U'))
DROP TABLE [dbo].[tax_class]
GO
/****** Object:  Table [dbo].[system_notification]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[system_notification]') AND type in (N'U'))
DROP TABLE [dbo].[system_notification]
GO
/****** Object:  Table [dbo].[system_configuration]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[system_configuration]') AND type in (N'U'))
DROP TABLE [dbo].[system_configuration]
GO
/****** Object:  Table [dbo].[sm_transaction]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sm_transaction]') AND type in (N'U'))
DROP TABLE [dbo].[sm_transaction]
GO
/****** Object:  Table [dbo].[sm_sequencer]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sm_sequencer]') AND type in (N'U'))
DROP TABLE [dbo].[sm_sequencer]
GO
/****** Object:  Table [dbo].[sm_group]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sm_group]') AND type in (N'U'))
DROP TABLE [dbo].[sm_group]
GO
/****** Object:  Table [dbo].[shopping_cart_item]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shopping_cart_item]') AND type in (N'U'))
DROP TABLE [dbo].[shopping_cart_item]
GO
/****** Object:  Table [dbo].[shopping_cart_attr_item]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shopping_cart_attr_item]') AND type in (N'U'))
DROP TABLE [dbo].[shopping_cart_attr_item]
GO
/****** Object:  Table [dbo].[shopping_cart]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shopping_cart]') AND type in (N'U'))
DROP TABLE [dbo].[shopping_cart]
GO
/****** Object:  Table [dbo].[shipping_quote]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shipping_quote]') AND type in (N'U'))
DROP TABLE [dbo].[shipping_quote]
GO
/****** Object:  Table [dbo].[shiping_origin]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shiping_origin]') AND type in (N'U'))
DROP TABLE [dbo].[shiping_origin]
GO
/****** Object:  Table [dbo].[product_type]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_type]') AND type in (N'U'))
DROP TABLE [dbo].[product_type]
GO
/****** Object:  Table [dbo].[product_review_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_review_description]') AND type in (N'U'))
DROP TABLE [dbo].[product_review_description]
GO
/****** Object:  Table [dbo].[product_review]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_review]') AND type in (N'U'))
DROP TABLE [dbo].[product_review]
GO
/****** Object:  Table [dbo].[product_relationship]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_relationship]') AND type in (N'U'))
DROP TABLE [dbo].[product_relationship]
GO
/****** Object:  Table [dbo].[product_price_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_price_description]') AND type in (N'U'))
DROP TABLE [dbo].[product_price_description]
GO
/****** Object:  Table [dbo].[product_price]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_price]') AND type in (N'U'))
DROP TABLE [dbo].[product_price]
GO
/****** Object:  Table [dbo].[product_option_value_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_option_value_description]') AND type in (N'U'))
DROP TABLE [dbo].[product_option_value_description]
GO
/****** Object:  Table [dbo].[product_option_value]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_option_value]') AND type in (N'U'))
DROP TABLE [dbo].[product_option_value]
GO
/****** Object:  Table [dbo].[product_option_desc]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_option_desc]') AND type in (N'U'))
DROP TABLE [dbo].[product_option_desc]
GO
/****** Object:  Table [dbo].[product_option]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_option]') AND type in (N'U'))
DROP TABLE [dbo].[product_option]
GO
/****** Object:  Table [dbo].[product_image_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_image_description]') AND type in (N'U'))
DROP TABLE [dbo].[product_image_description]
GO
/****** Object:  Table [dbo].[product_image]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_image]') AND type in (N'U'))
DROP TABLE [dbo].[product_image]
GO
/****** Object:  Table [dbo].[product_digital]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_digital]') AND type in (N'U'))
DROP TABLE [dbo].[product_digital]
GO
/****** Object:  Table [dbo].[product_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_description]') AND type in (N'U'))
DROP TABLE [dbo].[product_description]
GO
/****** Object:  Table [dbo].[product_category]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_category]') AND type in (N'U'))
DROP TABLE [dbo].[product_category]
GO
/****** Object:  Table [dbo].[product_availability]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_availability]') AND type in (N'U'))
DROP TABLE [dbo].[product_availability]
GO
/****** Object:  Table [dbo].[product_attribute]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product_attribute]') AND type in (N'U'))
DROP TABLE [dbo].[product_attribute]
GO
/****** Object:  Table [dbo].[product]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[product]') AND type in (N'U'))
DROP TABLE [dbo].[product]
GO
/****** Object:  Table [dbo].[permission_group]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permission_group]') AND type in (N'U'))
DROP TABLE [dbo].[permission_group]
GO
/****** Object:  Table [dbo].[permission]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[permission]') AND type in (N'U'))
DROP TABLE [dbo].[permission]
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[orders]') AND type in (N'U'))
DROP TABLE [dbo].[orders]
GO
/****** Object:  Table [dbo].[order_total]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_total]') AND type in (N'U'))
DROP TABLE [dbo].[order_total]
GO
/****** Object:  Table [dbo].[order_status_history]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_status_history]') AND type in (N'U'))
DROP TABLE [dbo].[order_status_history]
GO
/****** Object:  Table [dbo].[order_product_price]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_product_price]') AND type in (N'U'))
DROP TABLE [dbo].[order_product_price]
GO
/****** Object:  Table [dbo].[order_product_download]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_product_download]') AND type in (N'U'))
DROP TABLE [dbo].[order_product_download]
GO
/****** Object:  Table [dbo].[order_product_attribute]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_product_attribute]') AND type in (N'U'))
DROP TABLE [dbo].[order_product_attribute]
GO
/****** Object:  Table [dbo].[order_product]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_product]') AND type in (N'U'))
DROP TABLE [dbo].[order_product]
GO
/****** Object:  Table [dbo].[order_attribute]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_attribute]') AND type in (N'U'))
DROP TABLE [dbo].[order_attribute]
GO
/****** Object:  Table [dbo].[order_account_product]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_account_product]') AND type in (N'U'))
DROP TABLE [dbo].[order_account_product]
GO
/****** Object:  Table [dbo].[order_account]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[order_account]') AND type in (N'U'))
DROP TABLE [dbo].[order_account]
GO
/****** Object:  Table [dbo].[optin]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[optin]') AND type in (N'U'))
DROP TABLE [dbo].[optin]
GO
/****** Object:  Table [dbo].[module_configuration]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[module_configuration]') AND type in (N'U'))
DROP TABLE [dbo].[module_configuration]
GO
/****** Object:  Table [dbo].[merchant_store]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merchant_store]') AND type in (N'U'))
DROP TABLE [dbo].[merchant_store]
GO
/****** Object:  Table [dbo].[merchant_log]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merchant_log]') AND type in (N'U'))
DROP TABLE [dbo].[merchant_log]
GO
/****** Object:  Table [dbo].[merchant_language]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merchant_language]') AND type in (N'U'))
DROP TABLE [dbo].[merchant_language]
GO
/****** Object:  Table [dbo].[merchant_configuration]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merchant_configuration]') AND type in (N'U'))
DROP TABLE [dbo].[merchant_configuration]
GO
/****** Object:  Table [dbo].[manufacturer_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[manufacturer_description]') AND type in (N'U'))
DROP TABLE [dbo].[manufacturer_description]
GO
/****** Object:  Table [dbo].[manufacturer]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[manufacturer]') AND type in (N'U'))
DROP TABLE [dbo].[manufacturer]
GO
/****** Object:  Table [dbo].[language]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[language]') AND type in (N'U'))
DROP TABLE [dbo].[language]
GO
/****** Object:  Table [dbo].[geozone_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geozone_description]') AND type in (N'U'))
DROP TABLE [dbo].[geozone_description]
GO
/****** Object:  Table [dbo].[geozone]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geozone]') AND type in (N'U'))
DROP TABLE [dbo].[geozone]
GO
/****** Object:  Table [dbo].[file_history]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[file_history]') AND type in (N'U'))
DROP TABLE [dbo].[file_history]
GO
/****** Object:  Table [dbo].[customer_review_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_review_description]') AND type in (N'U'))
DROP TABLE [dbo].[customer_review_description]
GO
/****** Object:  Table [dbo].[customer_review]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_review]') AND type in (N'U'))
DROP TABLE [dbo].[customer_review]
GO
/****** Object:  Table [dbo].[customer_option_value]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_option_value]') AND type in (N'U'))
DROP TABLE [dbo].[customer_option_value]
GO
/****** Object:  Table [dbo].[customer_option_set]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_option_set]') AND type in (N'U'))
DROP TABLE [dbo].[customer_option_set]
GO
/****** Object:  Table [dbo].[customer_option_desc]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_option_desc]') AND type in (N'U'))
DROP TABLE [dbo].[customer_option_desc]
GO
/****** Object:  Table [dbo].[customer_option]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_option]') AND type in (N'U'))
DROP TABLE [dbo].[customer_option]
GO
/****** Object:  Table [dbo].[customer_optin]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_optin]') AND type in (N'U'))
DROP TABLE [dbo].[customer_optin]
GO
/****** Object:  Table [dbo].[customer_opt_val_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_opt_val_description]') AND type in (N'U'))
DROP TABLE [dbo].[customer_opt_val_description]
GO
/****** Object:  Table [dbo].[customer_group]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_group]') AND type in (N'U'))
DROP TABLE [dbo].[customer_group]
GO
/****** Object:  Table [dbo].[customer_attribute]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer_attribute]') AND type in (N'U'))
DROP TABLE [dbo].[customer_attribute]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[customer]') AND type in (N'U'))
DROP TABLE [dbo].[customer]
GO
/****** Object:  Table [dbo].[currency]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[currency]') AND type in (N'U'))
DROP TABLE [dbo].[currency]
GO
/****** Object:  Table [dbo].[country_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[country_description]') AND type in (N'U'))
DROP TABLE [dbo].[country_description]
GO
/****** Object:  Table [dbo].[country]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[country]') AND type in (N'U'))
DROP TABLE [dbo].[country]
GO
/****** Object:  Table [dbo].[content_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[content_description]') AND type in (N'U'))
DROP TABLE [dbo].[content_description]
GO
/****** Object:  Table [dbo].[content]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[content]') AND type in (N'U'))
DROP TABLE [dbo].[content]
GO
/****** Object:  Table [dbo].[category_description]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category_description]') AND type in (N'U'))
DROP TABLE [dbo].[category_description]
GO
/****** Object:  Table [dbo].[category]    Script Date: 2021/8/5 10:33:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[category]') AND type in (N'U'))
DROP TABLE [dbo].[category]
GO
/****** Object:  Table [dbo].[category]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[CATEGORY_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[CATEGORY_IMAGE] [varchar](100) NULL,
	[CATEGORY_STATUS] [bit] NULL,
	[CODE] [varchar](100) NOT NULL,
	[DEPTH] [int] NULL,
	[FEATURED] [bit] NULL,
	[LINEAGE] [varchar](255) NULL,
	[SORT_ORDER] [int] NULL,
	[VISIBLE] [bit] NULL,
	[MERCHANT_ID] [int] NOT NULL,
	[PARENT_ID] [bigint] NULL,
 CONSTRAINT [pk_category] PRIMARY KEY CLUSTERED 
(
	[CATEGORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category_description]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[CATEGORY_HIGHLIGHT] [varchar](255) NULL,
	[META_DESCRIPTION] [varchar](255) NULL,
	[META_KEYWORDS] [varchar](255) NULL,
	[META_TITLE] [varchar](120) NULL,
	[SEF_URL] [varchar](120) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[CATEGORY_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_category_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[content]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[content](
	[CONTENT_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[CODE] [varchar](100) NOT NULL,
	[CONTENT_POSITION] [varchar](10) NULL,
	[CONTENT_TYPE] [varchar](10) NULL,
	[LINK_TO_MENU] [bit] NULL,
	[PRODUCT_GROUP] [varchar](255) NULL,
	[SORT_ORDER] [int] NULL,
	[VISIBLE] [bit] NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_content] PRIMARY KEY CLUSTERED 
(
	[CONTENT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[content_description]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[content_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[META_DESCRIPTION] [varchar](255) NULL,
	[META_KEYWORDS] [varchar](255) NULL,
	[META_TITLE] [varchar](255) NULL,
	[SEF_URL] [varchar](120) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[CONTENT_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_content_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[country]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[COUNTRY_ID] [int] NOT NULL,
	[COUNTRY_ISOCODE] [varchar](255) NOT NULL,
	[COUNTRY_SUPPORTED] [bit] NULL,
	[GEOZONE_ID] [bigint] NULL,
 CONSTRAINT [pk_country] PRIMARY KEY CLUSTERED 
(
	[COUNTRY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[country_description]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[COUNTRY_ID] [int] NOT NULL,
 CONSTRAINT [pk_country_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[currency]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[currency](
	[CURRENCY_ID] [bigint] NOT NULL,
	[CURRENCY_CODE] [varchar](255) NULL,
	[CURRENCY_CURRENCY_CODE] [varchar](255) NOT NULL,
	[CURRENCY_NAME] [varchar](255) NULL,
	[CURRENCY_SUPPORTED] [bit] NULL,
 CONSTRAINT [pk_currency] PRIMARY KEY CLUSTERED 
(
	[CURRENCY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer](
	[CUSTOMER_ID] [bigint] NOT NULL,
	[CUSTOMER_ANONYMOUS] [bit] NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[BILLING_STREET_ADDRESS] [varchar](256) NULL,
	[BILLING_CITY] [varchar](100) NULL,
	[BILLING_COMPANY] [varchar](100) NULL,
	[BILLING_FIRST_NAME] [varchar](64) NOT NULL,
	[BILLING_LAST_NAME] [varchar](64) NOT NULL,
	[LATITUDE] [varchar](100) NULL,
	[LONGITUDE] [varchar](100) NULL,
	[BILLING_POSTCODE] [varchar](20) NULL,
	[BILLING_STATE] [varchar](100) NULL,
	[BILLING_TELEPHONE] [varchar](32) NULL,
	[CUSTOMER_COMPANY] [varchar](100) NULL,
	[REVIEW_AVG] [decimal](19, 2) NULL,
	[REVIEW_COUNT] [int] NULL,
	[CUSTOMER_DOB] [datetime] NULL,
	[DELIVERY_STREET_ADDRESS] [varchar](256) NULL,
	[DELIVERY_CITY] [varchar](100) NULL,
	[DELIVERY_COMPANY] [varchar](100) NULL,
	[DELIVERY_FIRST_NAME] [varchar](64) NULL,
	[DELIVERY_LAST_NAME] [varchar](64) NULL,
	[DELIVERY_POSTCODE] [varchar](20) NULL,
	[DELIVERY_STATE] [varchar](100) NULL,
	[DELIVERY_TELEPHONE] [varchar](32) NULL,
	[CUSTOMER_EMAIL_ADDRESS] [varchar](96) NOT NULL,
	[CUSTOMER_GENDER] [varchar](1) NULL,
	[CUSTOMER_NICK] [varchar](96) NULL,
	[CUSTOMER_PASSWORD] [varchar](60) NULL,
	[PROVIDER] [varchar](255) NULL,
	[BILLING_COUNTRY_ID] [int] NOT NULL,
	[BILLING_ZONE_ID] [bigint] NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[DELIVERY_COUNTRY_ID] [int] NULL,
	[DELIVERY_ZONE_ID] [bigint] NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_customer] PRIMARY KEY CLUSTERED 
(
	[CUSTOMER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_attribute]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_attribute](
	[CUSTOMER_ATTRIBUTE_ID] [bigint] NOT NULL,
	[CUSTOMER_ATTR_TXT_VAL] [varchar](255) NULL,
	[CUSTOMER_ID] [bigint] NOT NULL,
	[OPTION_ID] [bigint] NOT NULL,
	[OPTION_VALUE_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_customer_attribute] PRIMARY KEY CLUSTERED 
(
	[CUSTOMER_ATTRIBUTE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_group]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_group](
	[CUSTOMER_ID] [bigint] NOT NULL,
	[GROUP_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_opt_val_description]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_opt_val_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[CUSTOMER_OPT_VAL_ID] [bigint] NULL,
 CONSTRAINT [pk_customer_opt_val_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[customer_optin]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_optin](
	[CUSTOMER_OPTIN_ID] [bigint] NOT NULL,
	[EMAIL] [varchar](255) NOT NULL,
	[FIRST] [varchar](255) NULL,
	[LAST] [varchar](255) NULL,
	[OPTIN_DATE] [datetime] NULL,
	[VALUE] [varchar](max) NULL,
	[MERCHANT_ID] [int] NOT NULL,
	[OPTIN_ID] [bigint] NULL,
 CONSTRAINT [pk_customer_optin] PRIMARY KEY CLUSTERED 
(
	[CUSTOMER_OPTIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[customer_option]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_option](
	[CUSTOMER_OPTION_ID] [bigint] NOT NULL,
	[CUSTOMER_OPT_ACTIVE] [bit] NULL,
	[CUSTOMER_OPT_CODE] [varchar](255) NOT NULL,
	[CUSTOMER_OPTION_TYPE] [varchar](10) NULL,
	[CUSTOMER_OPT_PUBLIC] [bit] NULL,
	[SORT_ORDER] [int] NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_customer_option] PRIMARY KEY CLUSTERED 
(
	[CUSTOMER_OPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_option_desc]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_option_desc](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[CUSTOMER_OPTION_COMMENT] [varchar](max) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[CUSTOMER_OPTION_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_customer_option_desc] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[customer_option_set]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_option_set](
	[CUSTOMER_OPTIONSET_ID] [bigint] NOT NULL,
	[SORT_ORDER] [int] NULL,
	[CUSTOMER_OPTION_ID] [bigint] NOT NULL,
	[CUSTOMER_OPTION_VALUE_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_customer_option_set] PRIMARY KEY CLUSTERED 
(
	[CUSTOMER_OPTIONSET_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_option_value]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_option_value](
	[CUSTOMER_OPTION_VALUE_ID] [bigint] NOT NULL,
	[CUSTOMER_OPT_VAL_CODE] [varchar](255) NOT NULL,
	[CUSTOMER_OPT_VAL_IMAGE] [varchar](255) NULL,
	[SORT_ORDER] [int] NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_customer_option_value] PRIMARY KEY CLUSTERED 
(
	[CUSTOMER_OPTION_VALUE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_review]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_review](
	[CUSTOMER_REVIEW_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[REVIEW_DATE] [datetime] NULL,
	[REVIEWS_RATING] [float] NULL,
	[REVIEWS_READ] [bigint] NULL,
	[STATUS] [int] NULL,
	[CUSTOMERS_ID] [bigint] NULL,
	[REVIEWED_CUSTOMER_ID] [bigint] NULL,
 CONSTRAINT [pk_customer_review] PRIMARY KEY CLUSTERED 
(
	[CUSTOMER_REVIEW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[customer_review_description]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[customer_review_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[CUSTOMER_REVIEW_ID] [bigint] NULL,
 CONSTRAINT [pk_customer_review_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[file_history]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[file_history](
	[FILE_HISTORY_ID] [bigint] NOT NULL,
	[ACCOUNTED_DATE] [datetime] NULL,
	[DATE_ADDED] [datetime] NOT NULL,
	[DATE_DELETED] [datetime] NULL,
	[DOWNLOAD_COUNT] [int] NOT NULL,
	[FILE_ID] [bigint] NULL,
	[FILESIZE] [int] NOT NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_file_history] PRIMARY KEY CLUSTERED 
(
	[FILE_HISTORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geozone]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geozone](
	[GEOZONE_ID] [bigint] NOT NULL,
	[GEOZONE_CODE] [varchar](255) NULL,
	[GEOZONE_NAME] [varchar](255) NULL,
 CONSTRAINT [pk_geozone] PRIMARY KEY CLUSTERED 
(
	[GEOZONE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geozone_description]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geozone_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[GEOZONE_ID] [bigint] NULL,
 CONSTRAINT [pk_geozone_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[language]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[language](
	[LANGUAGE_ID] [int] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[CODE] [varchar](255) NOT NULL,
	[SORT_ORDER] [int] NULL,
 CONSTRAINT [pk_language] PRIMARY KEY CLUSTERED 
(
	[LANGUAGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manufacturer]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manufacturer](
	[MANUFACTURER_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[CODE] [varchar](100) NOT NULL,
	[MANUFACTURER_IMAGE] [varchar](255) NULL,
	[SORT_ORDER] [int] NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_manufacturer] PRIMARY KEY CLUSTERED 
(
	[MANUFACTURER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[manufacturer_description]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[manufacturer_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[DATE_LAST_CLICK] [datetime] NULL,
	[MANUFACTURERS_URL] [varchar](255) NULL,
	[URL_CLICKED] [int] NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[MANUFACTURER_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_manufacturer_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[merchant_configuration]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merchant_configuration](
	[MERCHANT_CONFIG_ID] [bigint] NOT NULL,
	[ACTIVE] [bit] NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[CONFIG_KEY] [varchar](255) NULL,
	[TYPE] [varchar](255) NULL,
	[VALUE] [varchar](max) NULL,
	[MERCHANT_ID] [int] NULL,
 CONSTRAINT [pk_merchant_configuration] PRIMARY KEY CLUSTERED 
(
	[MERCHANT_CONFIG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[merchant_language]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merchant_language](
	[stores_MERCHANT_ID] [int] NOT NULL,
	[languages_LANGUAGE_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[merchant_log]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merchant_log](
	[MERCHANT_LOG_ID] [bigint] NOT NULL,
	[LOG] [varchar](max) NULL,
	[MODULE] [varchar](25) NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_merchant_log] PRIMARY KEY CLUSTERED 
(
	[MERCHANT_LOG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[merchant_store]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merchant_store](
	[MERCHANT_ID] [int] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[STORE_CODE] [varchar](100) NOT NULL,
	[CONTINUESHOPPINGURL] [varchar](150) NULL,
	[CURRENCY_FORMAT_NATIONAL] [bit] NULL,
	[DOMAIN_NAME] [varchar](80) NULL,
	[IN_BUSINESS_SINCE] [date] NULL,
	[INVOICE_TEMPLATE] [varchar](25) NULL,
	[SEIZEUNITCODE] [varchar](5) NULL,
	[STORE_EMAIL] [varchar](60) NOT NULL,
	[STORE_LOGO] [varchar](100) NULL,
	[STORE_TEMPLATE] [varchar](25) NULL,
	[STORE_ADDRESS] [varchar](255) NULL,
	[STORE_CITY] [varchar](100) NOT NULL,
	[STORE_NAME] [varchar](100) NOT NULL,
	[STORE_PHONE] [varchar](50) NOT NULL,
	[STORE_POSTAL_CODE] [varchar](15) NOT NULL,
	[STORE_STATE_PROV] [varchar](100) NULL,
	[USE_CACHE] [bit] NULL,
	[WEIGHTUNITCODE] [varchar](5) NULL,
	[COUNTRY_ID] [int] NOT NULL,
	[CURRENCY_ID] [bigint] NOT NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[ZONE_ID] [bigint] NULL,
 CONSTRAINT [pk_merchant_store] PRIMARY KEY CLUSTERED 
(
	[MERCHANT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[module_configuration]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[module_configuration](
	[MODULE_CONF_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[CODE] [varchar](255) NOT NULL,
	[DETAILS] [varchar](max) NULL,
	[CONFIGURATION] [varchar](max) NULL,
	[CUSTOM_IND] [bit] NULL,
	[IMAGE] [varchar](255) NULL,
	[MODULE] [varchar](255) NULL,
	[REGIONS] [varchar](255) NULL,
	[TYPE] [varchar](255) NULL,
 CONSTRAINT [pk_module_configuration] PRIMARY KEY CLUSTERED 
(
	[MODULE_CONF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[optin]    Script Date: 2021/8/5 10:33:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[optin](
	[OPTIN_ID] [bigint] NOT NULL,
	[CODE] [varchar](255) NOT NULL,
	[DESCRIPTION] [varchar](255) NULL,
	[END_DATE] [datetime] NULL,
	[TYPE] [varchar](255) NOT NULL,
	[START_DATE] [datetime] NULL,
	[MERCHANT_ID] [int] NULL,
 CONSTRAINT [pk_optin] PRIMARY KEY CLUSTERED 
(
	[OPTIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_account]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_account](
	[ORDER_ACCOUNT_ID] [bigint] NOT NULL,
	[ORDER_ACCOUNT_BILL_DAY] [int] NOT NULL,
	[ORDER_ACCOUNT_END_DATE] [date] NULL,
	[ORDER_ACCOUNT_START_DATE] [date] NOT NULL,
	[ORDER_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_order_account] PRIMARY KEY CLUSTERED 
(
	[ORDER_ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_account_product]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_account_product](
	[ORDER_ACCOUNT_PRODUCT_ID] [bigint] NOT NULL,
	[ORDER_ACCOUNT_PRODUCT_ACCNT_DT] [date] NULL,
	[ORDER_ACCOUNT_PRODUCT_END_DT] [date] NULL,
	[ORDER_ACCOUNT_PRODUCT_EOT] [datetime] NULL,
	[ORDER_ACCOUNT_PRODUCT_L_ST_DT] [datetime] NULL,
	[ORDER_ACCOUNT_PRODUCT_L_TRX_ST] [int] NOT NULL,
	[ORDER_ACCOUNT_PRODUCT_PM_FR_TY] [int] NOT NULL,
	[ORDER_ACCOUNT_PRODUCT_ST_DT] [date] NOT NULL,
	[ORDER_ACCOUNT_PRODUCT_STATUS] [int] NOT NULL,
	[ORDER_ACCOUNT_ID] [bigint] NOT NULL,
	[ORDER_PRODUCT_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_order_account_product] PRIMARY KEY CLUSTERED 
(
	[ORDER_ACCOUNT_PRODUCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_attribute]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_attribute](
	[ORDER_ATTRIBUTE_ID] [bigint] NOT NULL,
	[IDENTIFIER] [varchar](255) NOT NULL,
	[VALUE] [varchar](255) NOT NULL,
	[ORDER_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_order_attribute] PRIMARY KEY CLUSTERED 
(
	[ORDER_ATTRIBUTE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_product]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_product](
	[ORDER_PRODUCT_ID] [bigint] NOT NULL,
	[ONETIME_CHARGE] [decimal](19, 2) NOT NULL,
	[PRODUCT_NAME] [varchar](64) NOT NULL,
	[PRODUCT_QUANTITY] [int] NULL,
	[PRODUCT_SKU] [varchar](255) NULL,
	[ORDER_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_order_product] PRIMARY KEY CLUSTERED 
(
	[ORDER_PRODUCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_product_attribute]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_product_attribute](
	[ORDER_PRODUCT_ATTRIBUTE_ID] [bigint] NOT NULL,
	[PRODUCT_ATTRIBUTE_IS_FREE] [bit] NOT NULL,
	[PRODUCT_ATTRIBUTE_NAME] [varchar](255) NULL,
	[PRODUCT_ATTRIBUTE_PRICE] [decimal](15, 4) NOT NULL,
	[PRODUCT_ATTRIBUTE_VAL_NAME] [varchar](255) NULL,
	[PRODUCT_ATTRIBUTE_WEIGHT] [decimal](15, 4) NULL,
	[PRODUCT_OPTION_ID] [bigint] NOT NULL,
	[PRODUCT_OPTION_VALUE_ID] [bigint] NOT NULL,
	[ORDER_PRODUCT_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_order_product_attribute] PRIMARY KEY CLUSTERED 
(
	[ORDER_PRODUCT_ATTRIBUTE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_product_download]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_product_download](
	[ORDER_PRODUCT_DOWNLOAD_ID] [bigint] NOT NULL,
	[DOWNLOAD_COUNT] [int] NOT NULL,
	[DOWNLOAD_MAXDAYS] [int] NOT NULL,
	[ORDER_PRODUCT_FILENAME] [varchar](255) NOT NULL,
	[ORDER_PRODUCT_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_order_product_download] PRIMARY KEY CLUSTERED 
(
	[ORDER_PRODUCT_DOWNLOAD_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_product_price]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_product_price](
	[ORDER_PRODUCT_PRICE_ID] [bigint] NOT NULL,
	[DEFAULT_PRICE] [bit] NOT NULL,
	[PRODUCT_PRICE] [decimal](19, 2) NOT NULL,
	[PRODUCT_PRICE_CODE] [varchar](64) NOT NULL,
	[PRODUCT_PRICE_NAME] [varchar](255) NULL,
	[PRODUCT_PRICE_SPECIAL] [decimal](19, 2) NULL,
	[PRD_PRICE_SPECIAL_END_DT] [datetime] NULL,
	[PRD_PRICE_SPECIAL_ST_DT] [datetime] NULL,
	[ORDER_PRODUCT_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_order_product_price] PRIMARY KEY CLUSTERED 
(
	[ORDER_PRODUCT_PRICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order_status_history]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_status_history](
	[ORDER_STATUS_HISTORY_ID] [bigint] NOT NULL,
	[COMMENTS] [varchar](max) NULL,
	[CUSTOMER_NOTIFIED] [int] NULL,
	[DATE_ADDED] [datetime] NOT NULL,
	[status] [varchar](255) NULL,
	[ORDER_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_order_status_history] PRIMARY KEY CLUSTERED 
(
	[ORDER_STATUS_HISTORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[order_total]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order_total](
	[ORDER_ACCOUNT_ID] [bigint] NOT NULL,
	[MODULE] [varchar](60) NULL,
	[CODE] [varchar](255) NOT NULL,
	[ORDER_TOTAL_TYPE] [varchar](255) NULL,
	[ORDER_VALUE_TYPE] [varchar](255) NULL,
	[SORT_ORDER] [int] NOT NULL,
	[TEXT] [varchar](max) NULL,
	[TITLE] [varchar](255) NULL,
	[VALUE] [decimal](15, 4) NOT NULL,
	[ORDER_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_order_total] PRIMARY KEY CLUSTERED 
(
	[ORDER_ACCOUNT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[orders]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orders](
	[ORDER_ID] [bigint] NOT NULL,
	[BILLING_STREET_ADDRESS] [varchar](256) NULL,
	[BILLING_CITY] [varchar](100) NULL,
	[BILLING_COMPANY] [varchar](100) NULL,
	[BILLING_FIRST_NAME] [varchar](64) NOT NULL,
	[BILLING_LAST_NAME] [varchar](64) NOT NULL,
	[LATITUDE] [varchar](100) NULL,
	[LONGITUDE] [varchar](100) NULL,
	[BILLING_POSTCODE] [varchar](20) NULL,
	[BILLING_STATE] [varchar](100) NULL,
	[BILLING_TELEPHONE] [varchar](32) NULL,
	[CHANNEL] [varchar](255) NULL,
	[CONFIRMED_ADDRESS] [bit] NULL,
	[CARD_TYPE] [varchar](255) NULL,
	[CC_CVV] [varchar](255) NULL,
	[CC_EXPIRES] [varchar](255) NULL,
	[CC_NUMBER] [varchar](255) NULL,
	[CC_OWNER] [varchar](255) NULL,
	[CURRENCY_VALUE] [decimal](19, 2) NULL,
	[CUSTOMER_AGREED] [bit] NULL,
	[CUSTOMER_EMAIL_ADDRESS] [varchar](50) NOT NULL,
	[CUSTOMER_ID] [bigint] NULL,
	[DATE_PURCHASED] [date] NULL,
	[DELIVERY_STREET_ADDRESS] [varchar](256) NULL,
	[DELIVERY_CITY] [varchar](100) NULL,
	[DELIVERY_COMPANY] [varchar](100) NULL,
	[DELIVERY_FIRST_NAME] [varchar](64) NULL,
	[DELIVERY_LAST_NAME] [varchar](64) NULL,
	[DELIVERY_POSTCODE] [varchar](20) NULL,
	[DELIVERY_STATE] [varchar](100) NULL,
	[DELIVERY_TELEPHONE] [varchar](32) NULL,
	[IP_ADDRESS] [varchar](255) NULL,
	[LAST_MODIFIED] [datetime] NULL,
	[LOCALE] [varchar](255) NULL,
	[ORDER_DATE_FINISHED] [datetime] NULL,
	[ORDER_TYPE] [varchar](255) NULL,
	[PAYMENT_MODULE_CODE] [varchar](255) NULL,
	[PAYMENT_TYPE] [varchar](255) NULL,
	[SHIPPING_MODULE_CODE] [varchar](255) NULL,
	[ORDER_STATUS] [varchar](255) NULL,
	[ORDER_TOTAL] [decimal](19, 2) NULL,
	[BILLING_COUNTRY_ID] [int] NOT NULL,
	[BILLING_ZONE_ID] [bigint] NULL,
	[CURRENCY_ID] [bigint] NULL,
	[DELIVERY_COUNTRY_ID] [int] NULL,
	[DELIVERY_ZONE_ID] [bigint] NULL,
	[MERCHANTID] [int] NULL,
 CONSTRAINT [pk_orders] PRIMARY KEY CLUSTERED 
(
	[ORDER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permission]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permission](
	[PERMISSION_ID] [int] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[PERMISSION_NAME] [varchar](255) NOT NULL,
 CONSTRAINT [pk_permission] PRIMARY KEY CLUSTERED 
(
	[PERMISSION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permission_group]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permission_group](
	[PERMISSION_ID] [int] NOT NULL,
	[GROUP_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[PRODUCT_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[AVAILABLE] [bit] NULL,
	[COND] [int] NULL,
	[DATE_AVAILABLE] [datetime] NULL,
	[PREORDER] [bit] NULL,
	[PRODUCT_HEIGHT] [decimal](19, 2) NULL,
	[PRODUCT_FREE] [bit] NULL,
	[PRODUCT_LENGTH] [decimal](19, 2) NULL,
	[QUANTITY_ORDERED] [int] NULL,
	[REVIEW_AVG] [decimal](19, 2) NULL,
	[REVIEW_COUNT] [int] NULL,
	[PRODUCT_SHIP] [bit] NULL,
	[PRODUCT_VIRTUAL] [bit] NULL,
	[PRODUCT_WEIGHT] [decimal](19, 2) NULL,
	[PRODUCT_WIDTH] [decimal](19, 2) NULL,
	[REF_SKU] [varchar](255) NULL,
	[RENTAL_DURATION] [int] NULL,
	[RENTAL_PERIOD] [int] NULL,
	[RENTAL_STATUS] [int] NULL,
	[SKU] [varchar](255) NOT NULL,
	[SORT_ORDER] [int] NULL,
	[MANUFACTURER_ID] [bigint] NULL,
	[MERCHANT_ID] [int] NOT NULL,
	[CUSTOMER_ID] [bigint] NULL,
	[TAX_CLASS_ID] [bigint] NULL,
	[PRODUCT_TYPE_ID] [bigint] NULL,
 CONSTRAINT [pk_product] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_attribute]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_attribute](
	[PRODUCT_ATTRIBUTE_ID] [bigint] NOT NULL,
	[PRODUCT_ATTRIBUTE_DEFAULT] [bit] NULL,
	[PRODUCT_ATTRIBUTE_DISCOUNTED] [bit] NULL,
	[PRODUCT_ATTRIBUTE_FOR_DISP] [bit] NULL,
	[PRODUCT_ATTRIBUTE_REQUIRED] [bit] NULL,
	[PRODUCT_ATTRIBUTE_FREE] [bit] NULL,
	[PRODUCT_ATRIBUTE_PRICE] [decimal](19, 2) NULL,
	[PRODUCT_ATTRIBUTE_WEIGHT] [decimal](19, 2) NULL,
	[PRODUCT_ATTRIBUTE_SORT_ORD] [int] NULL,
	[PRODUCT_ID] [bigint] NOT NULL,
	[OPTION_ID] [bigint] NOT NULL,
	[OPTION_VALUE_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_product_attribute] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_ATTRIBUTE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_availability]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_availability](
	[PRODUCT_AVAIL_ID] [bigint] NOT NULL,
	[DATE_AVAILABLE] [date] NULL,
	[FREE_SHIPPING] [bit] NULL,
	[QUANTITY] [int] NOT NULL,
	[QUANTITY_ORD_MAX] [int] NULL,
	[QUANTITY_ORD_MIN] [int] NULL,
	[STATUS] [bit] NULL,
	[REGION] [varchar](255) NULL,
	[REGION_VARIANT] [varchar](255) NULL,
	[PRODUCT_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_product_availability] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_AVAIL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_category]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_category](
	[PRODUCT_ID] [bigint] NOT NULL,
	[CATEGORY_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_product_category] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_ID] ASC,
	[CATEGORY_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_description]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[META_DESCRIPTION] [varchar](255) NULL,
	[META_KEYWORDS] [varchar](255) NULL,
	[META_TITLE] [varchar](255) NULL,
	[DOWNLOAD_LNK] [varchar](255) NULL,
	[PRODUCT_HIGHLIGHT] [varchar](255) NULL,
	[SEF_URL] [varchar](255) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[PRODUCT_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_product_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[product_digital]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_digital](
	[PRODUCT_DIGITAL_ID] [bigint] NOT NULL,
	[FILE_NAME] [varchar](255) NOT NULL,
	[PRODUCT_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_product_digital] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_DIGITAL_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_image]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_image](
	[PRODUCT_IMAGE_ID] [bigint] NOT NULL,
	[DEFAULT_IMAGE] [bit] NULL,
	[IMAGE_CROP] [bit] NULL,
	[IMAGE_TYPE] [int] NULL,
	[PRODUCT_IMAGE] [varchar](255) NULL,
	[PRODUCT_IMAGE_URL] [varchar](255) NULL,
	[PRODUCT_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_product_image] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_IMAGE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_image_description]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_image_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[ALT_TAG] [varchar](100) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[PRODUCT_IMAGE_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_product_image_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[product_option]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_option](
	[PRODUCT_OPTION_ID] [bigint] NOT NULL,
	[PRODUCT_OPTION_CODE] [varchar](255) NOT NULL,
	[PRODUCT_OPTION_SORT_ORD] [int] NULL,
	[PRODUCT_OPTION_TYPE] [varchar](10) NULL,
	[PRODUCT_OPTION_READ] [bit] NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_product_option] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_OPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_option_desc]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_option_desc](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[PRODUCT_OPTION_COMMENT] [varchar](max) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[PRODUCT_OPTION_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_product_option_desc] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[product_option_value]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_option_value](
	[PRODUCT_OPTION_VALUE_ID] [bigint] NOT NULL,
	[PRODUCT_OPTION_VAL_CODE] [varchar](255) NOT NULL,
	[PRODUCT_OPT_FOR_DISP] [bit] NULL,
	[PRODUCT_OPT_VAL_IMAGE] [varchar](255) NULL,
	[PRODUCT_OPT_VAL_SORT_ORD] [int] NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_product_option_value] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_OPTION_VALUE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_option_value_description]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_option_value_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[PRODUCT_OPTION_VALUE_ID] [bigint] NULL,
 CONSTRAINT [pk_product_option_value_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[product_price]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_price](
	[PRODUCT_PRICE_ID] [bigint] NOT NULL,
	[PRODUCT_PRICE_CODE] [varchar](255) NOT NULL,
	[DEFAULT_PRICE] [bit] NULL,
	[PRODUCT_PRICE_AMOUNT] [decimal](19, 2) NOT NULL,
	[PRODUCT_PRICE_SPECIAL_AMOUNT] [decimal](19, 2) NULL,
	[PRODUCT_PRICE_SPECIAL_END_DATE] [date] NULL,
	[PRODUCT_PRICE_SPECIAL_ST_DATE] [date] NULL,
	[PRODUCT_PRICE_TYPE] [varchar](20) NULL,
	[PRODUCT_AVAIL_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_product_price] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_PRICE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_price_description]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_price_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[PRODUCT_PRICE_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_product_price_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[product_relationship]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_relationship](
	[PRODUCT_RELATIONSHIP_ID] [bigint] NOT NULL,
	[ACTIVE] [bit] NULL,
	[CODE] [varchar](255) NULL,
	[PRODUCT_ID] [bigint] NULL,
	[RELATED_PRODUCT_ID] [bigint] NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_product_relationship] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_RELATIONSHIP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_review]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_review](
	[PRODUCT_REVIEW_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[REVIEW_DATE] [datetime] NULL,
	[REVIEWS_RATING] [float] NULL,
	[REVIEWS_READ] [bigint] NULL,
	[STATUS] [int] NULL,
	[CUSTOMERS_ID] [bigint] NULL,
	[PRODUCT_ID] [bigint] NULL,
 CONSTRAINT [pk_product_review] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_REVIEW_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product_review_description]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_review_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[PRODUCT_REVIEW_ID] [bigint] NULL,
 CONSTRAINT [pk_product_review_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[product_type]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product_type](
	[PRODUCT_TYPE_ID] [bigint] NOT NULL,
	[PRD_TYPE_ADD_TO_CART] [bit] NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[PRD_TYPE_CODE] [varchar](255) NULL,
 CONSTRAINT [pk_product_type] PRIMARY KEY CLUSTERED 
(
	[PRODUCT_TYPE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shiping_origin]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shiping_origin](
	[SHIP_ORIGIN_ID] [bigint] NOT NULL,
	[ACTIVE] [bit] NULL,
	[STREET_ADDRESS] [varchar](256) NOT NULL,
	[CITY] [varchar](100) NOT NULL,
	[POSTCODE] [varchar](20) NOT NULL,
	[STATE] [varchar](100) NULL,
	[COUNTRY_ID] [int] NULL,
	[MERCHANT_ID] [int] NOT NULL,
	[ZONE_ID] [bigint] NULL,
 CONSTRAINT [pk_shiping_origin] PRIMARY KEY CLUSTERED 
(
	[SHIP_ORIGIN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shipping_quote]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shipping_quote](
	[SHIPPING_QUOTE_ID] [bigint] NOT NULL,
	[CART_ID] [bigint] NULL,
	[CUSTOMER_ID] [bigint] NULL,
	[DELIVERY_STREET_ADDRESS] [varchar](256) NULL,
	[DELIVERY_CITY] [varchar](100) NULL,
	[DELIVERY_COMPANY] [varchar](100) NULL,
	[DELIVERY_FIRST_NAME] [varchar](64) NULL,
	[DELIVERY_LAST_NAME] [varchar](64) NULL,
	[DELIVERY_POSTCODE] [varchar](20) NULL,
	[DELIVERY_STATE] [varchar](100) NULL,
	[DELIVERY_TELEPHONE] [varchar](32) NULL,
	[SHIPPING_NUMBER_DAYS] [int] NULL,
	[FREE_SHIPPING] [bit] NULL,
	[QUOTE_HANDLING] [decimal](19, 2) NULL,
	[MODULE] [varchar](255) NOT NULL,
	[OPTION_CODE] [varchar](255) NULL,
	[OPTION_DELIVERY_DATE] [datetime] NULL,
	[OPTION_NAME] [varchar](255) NULL,
	[OPTION_SHIPPING_DATE] [datetime] NULL,
	[ORDER_ID] [bigint] NULL,
	[QUOTE_PRICE] [decimal](19, 2) NULL,
	[QUOTE_DATE] [datetime] NULL,
	[DELIVERY_COUNTRY_ID] [int] NULL,
	[DELIVERY_ZONE_ID] [bigint] NULL,
 CONSTRAINT [pk_shipping_quote] PRIMARY KEY CLUSTERED 
(
	[SHIPPING_QUOTE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopping_cart]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopping_cart](
	[SHP_CART_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[CUSTOMER_ID] [bigint] NULL,
	[SHP_CART_CODE] [varchar](255) NOT NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_shopping_cart] PRIMARY KEY CLUSTERED 
(
	[SHP_CART_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopping_cart_attr_item]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopping_cart_attr_item](
	[SHP_CART_ATTR_ITEM_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[PRODUCT_ATTR_ID] [bigint] NOT NULL,
	[SHP_CART_ITEM_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_shopping_cart_attr_item] PRIMARY KEY CLUSTERED 
(
	[SHP_CART_ATTR_ITEM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[shopping_cart_item]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shopping_cart_item](
	[SHP_CART_ITEM_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[PRODUCT_ID] [bigint] NOT NULL,
	[QUANTITY] [int] NULL,
	[SHP_CART_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_shopping_cart_item] PRIMARY KEY CLUSTERED 
(
	[SHP_CART_ITEM_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sm_group]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sm_group](
	[GROUP_ID] [int] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[GROUP_NAME] [varchar](255) NOT NULL,
	[GROUP_TYPE] [varchar](255) NULL,
 CONSTRAINT [pk_sm_group] PRIMARY KEY CLUSTERED 
(
	[GROUP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sm_sequencer]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sm_sequencer](
	[SEQ_NAME] [varchar](255) NOT NULL,
	[SEQ_COUNT] [bigint] NULL,
 CONSTRAINT [pk_sm_sequencer] PRIMARY KEY CLUSTERED 
(
	[SEQ_NAME] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sm_transaction]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sm_transaction](
	[TRANSACTION_ID] [bigint] NOT NULL,
	[AMOUNT] [decimal](19, 2) NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DETAILS] [varchar](max) NULL,
	[PAYMENT_TYPE] [varchar](255) NULL,
	[TRANSACTION_DATE] [datetime] NULL,
	[TRANSACTION_TYPE] [varchar](255) NULL,
	[ORDER_ID] [bigint] NULL,
 CONSTRAINT [pk_sm_transaction] PRIMARY KEY CLUSTERED 
(
	[TRANSACTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[system_configuration]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[system_configuration](
	[SYSTEM_CONFIG_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[CONFIG_KEY] [varchar](255) NULL,
	[VALUE] [varchar](255) NULL,
 CONSTRAINT [pk_system_configuration] PRIMARY KEY CLUSTERED 
(
	[SYSTEM_CONFIG_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[system_notification]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[system_notification](
	[SYSTEM_NOTIF_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[END_DATE] [date] NULL,
	[CONFIG_KEY] [varchar](255) NULL,
	[START_DATE] [date] NULL,
	[VALUE] [varchar](255) NULL,
	[MERCHANT_ID] [int] NULL,
	[USER_ID] [bigint] NULL,
 CONSTRAINT [pk_system_notification] PRIMARY KEY CLUSTERED 
(
	[SYSTEM_NOTIF_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tax_class]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tax_class](
	[TAX_CLASS_ID] [bigint] NOT NULL,
	[TAX_CLASS_CODE] [varchar](10) NOT NULL,
	[TAX_CLASS_TITLE] [varchar](32) NOT NULL,
	[MERCHANT_ID] [int] NULL,
 CONSTRAINT [pk_tax_class] PRIMARY KEY CLUSTERED 
(
	[TAX_CLASS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tax_rate]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tax_rate](
	[TAX_RATE_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[TAX_CODE] [varchar](255) NOT NULL,
	[PIGGYBACK] [bit] NULL,
	[STORE_STATE_PROV] [varchar](100) NULL,
	[TAX_PRIORITY] [int] NULL,
	[TAX_RATE] [decimal](7, 4) NOT NULL,
	[COUNTRY_ID] [int] NOT NULL,
	[MERCHANT_ID] [int] NOT NULL,
	[PARENT_ID] [bigint] NULL,
	[TAX_CLASS_ID] [bigint] NOT NULL,
	[ZONE_ID] [bigint] NULL,
 CONSTRAINT [pk_tax_rate] PRIMARY KEY CLUSTERED 
(
	[TAX_RATE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tax_rate_description]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tax_rate_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[TAX_RATE_ID] [bigint] NULL,
 CONSTRAINT [pk_tax_rate_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[USER_ID] [bigint] NOT NULL,
	[ACTIVE] [bit] NULL,
	[ADMIN_EMAIL] [varchar](255) NOT NULL,
	[ADMIN_NAME] [varchar](100) NOT NULL,
	[ADMIN_PASSWORD] [varchar](60) NOT NULL,
	[ADMIN_A1] [varchar](255) NULL,
	[ADMIN_A2] [varchar](255) NULL,
	[ADMIN_A3] [varchar](255) NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[ADMIN_FIRST_NAME] [varchar](255) NULL,
	[LAST_ACCESS] [datetime] NULL,
	[ADMIN_LAST_NAME] [varchar](255) NULL,
	[LOGIN_ACCESS] [datetime] NULL,
	[ADMIN_Q1] [varchar](255) NULL,
	[ADMIN_Q2] [varchar](255) NULL,
	[ADMIN_Q3] [varchar](255) NULL,
	[LANGUAGE_ID] [int] NULL,
	[MERCHANT_ID] [int] NOT NULL,
 CONSTRAINT [pk_user] PRIMARY KEY CLUSTERED 
(
	[USER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_group]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_group](
	[USER_ID] [bigint] NOT NULL,
	[GROUP_ID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[userconnection]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[userconnection](
	[providerId] [varchar](255) NOT NULL,
	[providerUserId] [varchar](255) NOT NULL,
	[userId] [varchar](255) NOT NULL,
	[accessToken] [varchar](255) NULL,
	[displayName] [varchar](255) NULL,
	[expireTime] [bigint] NULL,
	[imageUrl] [varchar](255) NULL,
	[profileUrl] [varchar](255) NULL,
	[refreshToken] [varchar](255) NULL,
	[secret] [varchar](255) NULL,
	[userRank] [int] NOT NULL,
 CONSTRAINT [pk_userconnection] PRIMARY KEY CLUSTERED 
(
	[providerId] ASC,
	[providerUserId] ASC,
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zone]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zone](
	[ZONE_ID] [bigint] NOT NULL,
	[ZONE_CODE] [varchar](255) NOT NULL,
	[COUNTRY_ID] [int] NOT NULL,
 CONSTRAINT [pk_zone] PRIMARY KEY CLUSTERED 
(
	[ZONE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zone_description]    Script Date: 2021/8/5 10:33:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zone_description](
	[DESCRIPTION_ID] [bigint] NOT NULL,
	[DATE_CREATED] [datetime] NULL,
	[DATE_MODIFIED] [datetime] NULL,
	[UPDT_ID] [varchar](20) NULL,
	[DESCRIPTION] [varchar](max) NULL,
	[NAME] [varchar](120) NOT NULL,
	[TITLE] [varchar](100) NULL,
	[LANGUAGE_ID] [int] NOT NULL,
	[ZONE_ID] [bigint] NOT NULL,
 CONSTRAINT [pk_zone_description] PRIMARY KEY CLUSTERED 
(
	[DESCRIPTION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
ALTER TABLE [dbo].[category]  WITH NOCHECK ADD  CONSTRAINT [FK8a09asq5fcx0a88i4m8nsixy] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[category] CHECK CONSTRAINT [FK8a09asq5fcx0a88i4m8nsixy]
GO
ALTER TABLE [dbo].[category]  WITH NOCHECK ADD  CONSTRAINT [FKn3kekntr7pm8g9v8ask698ato] FOREIGN KEY([PARENT_ID])
REFERENCES [dbo].[category] ([CATEGORY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[category] CHECK CONSTRAINT [FKn3kekntr7pm8g9v8ask698ato]
GO
ALTER TABLE [dbo].[category_description]  WITH NOCHECK ADD  CONSTRAINT [FKa58u7d0ydfgref1iaux5efyov] FOREIGN KEY([CATEGORY_ID])
REFERENCES [dbo].[category] ([CATEGORY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[category_description] CHECK CONSTRAINT [FKa58u7d0ydfgref1iaux5efyov]
GO
ALTER TABLE [dbo].[category_description]  WITH NOCHECK ADD  CONSTRAINT [FKl4j5boteutpu1p8f67kydpnmd] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[category_description] CHECK CONSTRAINT [FKl4j5boteutpu1p8f67kydpnmd]
GO
ALTER TABLE [dbo].[content]  WITH CHECK ADD  CONSTRAINT [FKfmoi0fkjbtfty3o8fs94t11r1] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[content] CHECK CONSTRAINT [FKfmoi0fkjbtfty3o8fs94t11r1]
GO
ALTER TABLE [dbo].[content_description]  WITH CHECK ADD  CONSTRAINT [FK47yxf681u0rfw2kvarhqb0r3v] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[content_description] CHECK CONSTRAINT [FK47yxf681u0rfw2kvarhqb0r3v]
GO
ALTER TABLE [dbo].[content_description]  WITH CHECK ADD  CONSTRAINT [FKk7fabfxn2flvcofwwpyg5sys] FOREIGN KEY([CONTENT_ID])
REFERENCES [dbo].[content] ([CONTENT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[content_description] CHECK CONSTRAINT [FKk7fabfxn2flvcofwwpyg5sys]
GO
ALTER TABLE [dbo].[country]  WITH CHECK ADD  CONSTRAINT [FKd2q9e14kh1j6tm1gpbct2xwws] FOREIGN KEY([GEOZONE_ID])
REFERENCES [dbo].[geozone] ([GEOZONE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[country] CHECK CONSTRAINT [FKd2q9e14kh1j6tm1gpbct2xwws]
GO
ALTER TABLE [dbo].[country_description]  WITH CHECK ADD  CONSTRAINT [FKersrbjot9p9nfukxfd2l27c7t] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[country_description] CHECK CONSTRAINT [FKersrbjot9p9nfukxfd2l27c7t]
GO
ALTER TABLE [dbo].[country_description]  WITH CHECK ADD  CONSTRAINT [FKkd2sy7q97wr2ahvyiiqc4txji] FOREIGN KEY([COUNTRY_ID])
REFERENCES [dbo].[country] ([COUNTRY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[country_description] CHECK CONSTRAINT [FKkd2sy7q97wr2ahvyiiqc4txji]
GO
ALTER TABLE [dbo].[customer]  WITH NOCHECK ADD  CONSTRAINT [FK3k21jw28bbx043c2mnhevg9w4] FOREIGN KEY([DELIVERY_ZONE_ID])
REFERENCES [dbo].[zone] ([ZONE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK3k21jw28bbx043c2mnhevg9w4]
GO
ALTER TABLE [dbo].[customer]  WITH NOCHECK ADD  CONSTRAINT [FK5pas8t9mknk4kkin55t4v300l] FOREIGN KEY([BILLING_COUNTRY_ID])
REFERENCES [dbo].[country] ([COUNTRY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK5pas8t9mknk4kkin55t4v300l]
GO
ALTER TABLE [dbo].[customer]  WITH NOCHECK ADD  CONSTRAINT [FK8122nrpakxu3umk1od4v0xxoa] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FK8122nrpakxu3umk1od4v0xxoa]
GO
ALTER TABLE [dbo].[customer]  WITH NOCHECK ADD  CONSTRAINT [FKbxyooiceli2ko29bupdye6jgn] FOREIGN KEY([DELIVERY_COUNTRY_ID])
REFERENCES [dbo].[country] ([COUNTRY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FKbxyooiceli2ko29bupdye6jgn]
GO
ALTER TABLE [dbo].[customer]  WITH NOCHECK ADD  CONSTRAINT [FKdgjqmj04qt89gmfloo4ofojcw] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FKdgjqmj04qt89gmfloo4ofojcw]
GO
ALTER TABLE [dbo].[customer]  WITH NOCHECK ADD  CONSTRAINT [FKp0xcpa3i2mgdr0kq43xiibx40] FOREIGN KEY([BILLING_ZONE_ID])
REFERENCES [dbo].[zone] ([ZONE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer] CHECK CONSTRAINT [FKp0xcpa3i2mgdr0kq43xiibx40]
GO
ALTER TABLE [dbo].[customer_attribute]  WITH CHECK ADD  CONSTRAINT [FK4xugs9yd9w4o3sw11fisb8tj5] FOREIGN KEY([OPTION_ID])
REFERENCES [dbo].[customer_option] ([CUSTOMER_OPTION_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_attribute] CHECK CONSTRAINT [FK4xugs9yd9w4o3sw11fisb8tj5]
GO
ALTER TABLE [dbo].[customer_attribute]  WITH CHECK ADD  CONSTRAINT [FK9fl7iexvdeeeoch9fh35o5vw4] FOREIGN KEY([OPTION_VALUE_ID])
REFERENCES [dbo].[customer_option_value] ([CUSTOMER_OPTION_VALUE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_attribute] CHECK CONSTRAINT [FK9fl7iexvdeeeoch9fh35o5vw4]
GO
ALTER TABLE [dbo].[customer_attribute]  WITH CHECK ADD  CONSTRAINT [FKc3318o13i2bpxkci1bh52we5a] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[customer] ([CUSTOMER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_attribute] CHECK CONSTRAINT [FKc3318o13i2bpxkci1bh52we5a]
GO
ALTER TABLE [dbo].[customer_group]  WITH CHECK ADD  CONSTRAINT [FK257h3e27f4ujw08doqtq46hho] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[customer] ([CUSTOMER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_group] CHECK CONSTRAINT [FK257h3e27f4ujw08doqtq46hho]
GO
ALTER TABLE [dbo].[customer_group]  WITH CHECK ADD  CONSTRAINT [FKgrr5v89l1m9sl2qol62bbctq4] FOREIGN KEY([GROUP_ID])
REFERENCES [dbo].[sm_group] ([GROUP_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_group] CHECK CONSTRAINT [FKgrr5v89l1m9sl2qol62bbctq4]
GO
ALTER TABLE [dbo].[customer_opt_val_description]  WITH CHECK ADD  CONSTRAINT [FK6rfssi3qfx4pswicxrfb18c1] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_opt_val_description] CHECK CONSTRAINT [FK6rfssi3qfx4pswicxrfb18c1]
GO
ALTER TABLE [dbo].[customer_opt_val_description]  WITH CHECK ADD  CONSTRAINT [FKhwrs6fyqk6vh11yvcflu42yef] FOREIGN KEY([CUSTOMER_OPT_VAL_ID])
REFERENCES [dbo].[customer_option_value] ([CUSTOMER_OPTION_VALUE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_opt_val_description] CHECK CONSTRAINT [FKhwrs6fyqk6vh11yvcflu42yef]
GO
ALTER TABLE [dbo].[customer_optin]  WITH CHECK ADD  CONSTRAINT [FK7qym878m07cwvs4foe68lvqjt] FOREIGN KEY([OPTIN_ID])
REFERENCES [dbo].[optin] ([OPTIN_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_optin] CHECK CONSTRAINT [FK7qym878m07cwvs4foe68lvqjt]
GO
ALTER TABLE [dbo].[customer_optin]  WITH CHECK ADD  CONSTRAINT [FKk5v94dvhsgibaw89hv4m8o5yw] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_optin] CHECK CONSTRAINT [FKk5v94dvhsgibaw89hv4m8o5yw]
GO
ALTER TABLE [dbo].[customer_option]  WITH CHECK ADD  CONSTRAINT [FKcmqnh0rn2hukdfowean5tdy8k] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_option] CHECK CONSTRAINT [FKcmqnh0rn2hukdfowean5tdy8k]
GO
ALTER TABLE [dbo].[customer_option_desc]  WITH CHECK ADD  CONSTRAINT [FKc2yiucjbw0wjha8ww7a01qfeo] FOREIGN KEY([CUSTOMER_OPTION_ID])
REFERENCES [dbo].[customer_option] ([CUSTOMER_OPTION_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_option_desc] CHECK CONSTRAINT [FKc2yiucjbw0wjha8ww7a01qfeo]
GO
ALTER TABLE [dbo].[customer_option_desc]  WITH CHECK ADD  CONSTRAINT [FKm4iu7v9db17wk2a03xqbqdlfa] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_option_desc] CHECK CONSTRAINT [FKm4iu7v9db17wk2a03xqbqdlfa]
GO
ALTER TABLE [dbo].[customer_option_set]  WITH CHECK ADD  CONSTRAINT [FK1y5qtsuabhpwft3dyhqrgmtb4] FOREIGN KEY([CUSTOMER_OPTION_ID])
REFERENCES [dbo].[customer_option] ([CUSTOMER_OPTION_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_option_set] CHECK CONSTRAINT [FK1y5qtsuabhpwft3dyhqrgmtb4]
GO
ALTER TABLE [dbo].[customer_option_set]  WITH CHECK ADD  CONSTRAINT [FKj9vnvyh6hhhftjbcsymgiodm9] FOREIGN KEY([CUSTOMER_OPTION_VALUE_ID])
REFERENCES [dbo].[customer_option_value] ([CUSTOMER_OPTION_VALUE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_option_set] CHECK CONSTRAINT [FKj9vnvyh6hhhftjbcsymgiodm9]
GO
ALTER TABLE [dbo].[customer_option_value]  WITH CHECK ADD  CONSTRAINT [FKho87ssg5rnvwauj3y690a96g6] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_option_value] CHECK CONSTRAINT [FKho87ssg5rnvwauj3y690a96g6]
GO
ALTER TABLE [dbo].[customer_review]  WITH CHECK ADD  CONSTRAINT [FK7pmqdk9od2af7cl6alx82fkek] FOREIGN KEY([REVIEWED_CUSTOMER_ID])
REFERENCES [dbo].[customer] ([CUSTOMER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_review] CHECK CONSTRAINT [FK7pmqdk9od2af7cl6alx82fkek]
GO
ALTER TABLE [dbo].[customer_review]  WITH CHECK ADD  CONSTRAINT [FKayt6tbxp7d4g1qyg8crw2n73p] FOREIGN KEY([CUSTOMERS_ID])
REFERENCES [dbo].[customer] ([CUSTOMER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_review] CHECK CONSTRAINT [FKayt6tbxp7d4g1qyg8crw2n73p]
GO
ALTER TABLE [dbo].[customer_review_description]  WITH CHECK ADD  CONSTRAINT [FK5pkgrlk32uqaxkrbve5mws1hj] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_review_description] CHECK CONSTRAINT [FK5pkgrlk32uqaxkrbve5mws1hj]
GO
ALTER TABLE [dbo].[customer_review_description]  WITH CHECK ADD  CONSTRAINT [FKhf88oagf6t62k28afn8uaijc7] FOREIGN KEY([CUSTOMER_REVIEW_ID])
REFERENCES [dbo].[customer_review] ([CUSTOMER_REVIEW_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[customer_review_description] CHECK CONSTRAINT [FKhf88oagf6t62k28afn8uaijc7]
GO
ALTER TABLE [dbo].[file_history]  WITH CHECK ADD  CONSTRAINT [FK2k8h4penkjlbtc23vamwyek2g] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[file_history] CHECK CONSTRAINT [FK2k8h4penkjlbtc23vamwyek2g]
GO
ALTER TABLE [dbo].[geozone_description]  WITH CHECK ADD  CONSTRAINT [FK1t2hp628edebe5d6co2whbla9] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geozone_description] CHECK CONSTRAINT [FK1t2hp628edebe5d6co2whbla9]
GO
ALTER TABLE [dbo].[geozone_description]  WITH CHECK ADD  CONSTRAINT [FKn82te2yb2st4hk2qlhl8ileb9] FOREIGN KEY([GEOZONE_ID])
REFERENCES [dbo].[geozone] ([GEOZONE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geozone_description] CHECK CONSTRAINT [FKn82te2yb2st4hk2qlhl8ileb9]
GO
ALTER TABLE [dbo].[manufacturer]  WITH NOCHECK ADD  CONSTRAINT [FKhswph4nthrqwffjekccudsrt2] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[manufacturer] CHECK CONSTRAINT [FKhswph4nthrqwffjekccudsrt2]
GO
ALTER TABLE [dbo].[manufacturer_description]  WITH NOCHECK ADD  CONSTRAINT [FK20t33wr4tp1kt1uyw7s8a3afl] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[manufacturer_description] CHECK CONSTRAINT [FK20t33wr4tp1kt1uyw7s8a3afl]
GO
ALTER TABLE [dbo].[manufacturer_description]  WITH NOCHECK ADD  CONSTRAINT [FKre4iys57n5cfbgpg3qqgewtrh] FOREIGN KEY([MANUFACTURER_ID])
REFERENCES [dbo].[manufacturer] ([MANUFACTURER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[manufacturer_description] CHECK CONSTRAINT [FKre4iys57n5cfbgpg3qqgewtrh]
GO
ALTER TABLE [dbo].[merchant_configuration]  WITH CHECK ADD  CONSTRAINT [FKf9bkgf0ysbp5fo9j69shm0pri] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merchant_configuration] CHECK CONSTRAINT [FKf9bkgf0ysbp5fo9j69shm0pri]
GO
ALTER TABLE [dbo].[merchant_language]  WITH CHECK ADD  CONSTRAINT [FKiisj0tmoujv6n3iqmytvo39kn] FOREIGN KEY([stores_MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merchant_language] CHECK CONSTRAINT [FKiisj0tmoujv6n3iqmytvo39kn]
GO
ALTER TABLE [dbo].[merchant_language]  WITH CHECK ADD  CONSTRAINT [FKjwy0pjijh1qmcoivq50o2jgec] FOREIGN KEY([languages_LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merchant_language] CHECK CONSTRAINT [FKjwy0pjijh1qmcoivq50o2jgec]
GO
ALTER TABLE [dbo].[merchant_log]  WITH CHECK ADD  CONSTRAINT [FKto727b9r68qrtn2vvdqdvd4ic] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merchant_log] CHECK CONSTRAINT [FKto727b9r68qrtn2vvdqdvd4ic]
GO
ALTER TABLE [dbo].[merchant_store]  WITH NOCHECK ADD  CONSTRAINT [FK2gn7vpkd9x832urw7c6jlawnn] FOREIGN KEY([COUNTRY_ID])
REFERENCES [dbo].[country] ([COUNTRY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merchant_store] CHECK CONSTRAINT [FK2gn7vpkd9x832urw7c6jlawnn]
GO
ALTER TABLE [dbo].[merchant_store]  WITH NOCHECK ADD  CONSTRAINT [FK5o24aky9161jyofyxmg0g53vv] FOREIGN KEY([ZONE_ID])
REFERENCES [dbo].[zone] ([ZONE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merchant_store] CHECK CONSTRAINT [FK5o24aky9161jyofyxmg0g53vv]
GO
ALTER TABLE [dbo].[merchant_store]  WITH NOCHECK ADD  CONSTRAINT [FK63hlw9wp1k1x3f5tke7t2us7s] FOREIGN KEY([CURRENCY_ID])
REFERENCES [dbo].[currency] ([CURRENCY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merchant_store] CHECK CONSTRAINT [FK63hlw9wp1k1x3f5tke7t2us7s]
GO
ALTER TABLE [dbo].[merchant_store]  WITH NOCHECK ADD  CONSTRAINT [FKdnemo9tl8tjhkxko83psvkv19] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merchant_store] CHECK CONSTRAINT [FKdnemo9tl8tjhkxko83psvkv19]
GO
ALTER TABLE [dbo].[optin]  WITH CHECK ADD  CONSTRAINT [FK37xvfo4the20avv7f1e1771fh] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[optin] CHECK CONSTRAINT [FK37xvfo4the20avv7f1e1771fh]
GO
ALTER TABLE [dbo].[order_account]  WITH CHECK ADD  CONSTRAINT [FKi6l5isodh81m5hy8ua06hx73n] FOREIGN KEY([ORDER_ID])
REFERENCES [dbo].[orders] ([ORDER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_account] CHECK CONSTRAINT [FKi6l5isodh81m5hy8ua06hx73n]
GO
ALTER TABLE [dbo].[order_account_product]  WITH CHECK ADD  CONSTRAINT [FK5kiyyb8ekqi9bfowytww8atcx] FOREIGN KEY([ORDER_PRODUCT_ID])
REFERENCES [dbo].[order_product] ([ORDER_PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_account_product] CHECK CONSTRAINT [FK5kiyyb8ekqi9bfowytww8atcx]
GO
ALTER TABLE [dbo].[order_account_product]  WITH CHECK ADD  CONSTRAINT [FK7oxc8ygov7vd2ajt185jhiwts] FOREIGN KEY([ORDER_ACCOUNT_ID])
REFERENCES [dbo].[order_account] ([ORDER_ACCOUNT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_account_product] CHECK CONSTRAINT [FK7oxc8ygov7vd2ajt185jhiwts]
GO
ALTER TABLE [dbo].[order_attribute]  WITH CHECK ADD  CONSTRAINT [FK4nw5yrtgb4in6leve76bmdnua] FOREIGN KEY([ORDER_ID])
REFERENCES [dbo].[orders] ([ORDER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_attribute] CHECK CONSTRAINT [FK4nw5yrtgb4in6leve76bmdnua]
GO
ALTER TABLE [dbo].[order_product]  WITH CHECK ADD  CONSTRAINT [FKf0sghmn59s14cxrjtrvkvi5yk] FOREIGN KEY([ORDER_ID])
REFERENCES [dbo].[orders] ([ORDER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_product] CHECK CONSTRAINT [FKf0sghmn59s14cxrjtrvkvi5yk]
GO
ALTER TABLE [dbo].[order_product_attribute]  WITH CHECK ADD  CONSTRAINT [FK7j86rvwaysbok1nuofrnmhmkx] FOREIGN KEY([ORDER_PRODUCT_ID])
REFERENCES [dbo].[order_product] ([ORDER_PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_product_attribute] CHECK CONSTRAINT [FK7j86rvwaysbok1nuofrnmhmkx]
GO
ALTER TABLE [dbo].[order_product_download]  WITH CHECK ADD  CONSTRAINT [FKstrda0eweharld63j8pxa2o2r] FOREIGN KEY([ORDER_PRODUCT_ID])
REFERENCES [dbo].[order_product] ([ORDER_PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_product_download] CHECK CONSTRAINT [FKstrda0eweharld63j8pxa2o2r]
GO
ALTER TABLE [dbo].[order_product_price]  WITH CHECK ADD  CONSTRAINT [FKnkukiqxrieonyulercgnh857s] FOREIGN KEY([ORDER_PRODUCT_ID])
REFERENCES [dbo].[order_product] ([ORDER_PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_product_price] CHECK CONSTRAINT [FKnkukiqxrieonyulercgnh857s]
GO
ALTER TABLE [dbo].[order_status_history]  WITH CHECK ADD  CONSTRAINT [FKmhghgf1xy3o0npsp8xkj6wyvq] FOREIGN KEY([ORDER_ID])
REFERENCES [dbo].[orders] ([ORDER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_status_history] CHECK CONSTRAINT [FKmhghgf1xy3o0npsp8xkj6wyvq]
GO
ALTER TABLE [dbo].[order_total]  WITH CHECK ADD  CONSTRAINT [FK1tfvgk5smm80efdcc8uop4he3] FOREIGN KEY([ORDER_ID])
REFERENCES [dbo].[orders] ([ORDER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[order_total] CHECK CONSTRAINT [FK1tfvgk5smm80efdcc8uop4he3]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKaodv5ffayq8x50q311o2y8m1] FOREIGN KEY([MERCHANTID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKaodv5ffayq8x50q311o2y8m1]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKfusivmw6q3gjxnmp47n9s74qi] FOREIGN KEY([CURRENCY_ID])
REFERENCES [dbo].[currency] ([CURRENCY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKfusivmw6q3gjxnmp47n9s74qi]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKipesu5tupnriahutgle6xu9ed] FOREIGN KEY([BILLING_COUNTRY_ID])
REFERENCES [dbo].[country] ([COUNTRY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKipesu5tupnriahutgle6xu9ed]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKit6ti99mv5uvuxqskhurv3y59] FOREIGN KEY([BILLING_ZONE_ID])
REFERENCES [dbo].[zone] ([ZONE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKit6ti99mv5uvuxqskhurv3y59]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKn9uvjl8105fsly4doo8rqnv5b] FOREIGN KEY([DELIVERY_ZONE_ID])
REFERENCES [dbo].[zone] ([ZONE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKn9uvjl8105fsly4doo8rqnv5b]
GO
ALTER TABLE [dbo].[orders]  WITH CHECK ADD  CONSTRAINT [FKnlx97vjyorunxglhy5bird06c] FOREIGN KEY([DELIVERY_COUNTRY_ID])
REFERENCES [dbo].[country] ([COUNTRY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[orders] CHECK CONSTRAINT [FKnlx97vjyorunxglhy5bird06c]
GO
ALTER TABLE [dbo].[permission_group]  WITH CHECK ADD  CONSTRAINT [FK77ly3khyuu40odly02d351s84] FOREIGN KEY([PERMISSION_ID])
REFERENCES [dbo].[permission] ([PERMISSION_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[permission_group] CHECK CONSTRAINT [FK77ly3khyuu40odly02d351s84]
GO
ALTER TABLE [dbo].[permission_group]  WITH CHECK ADD  CONSTRAINT [FKr7ylutdgqp1nrlbhjwit6y17g] FOREIGN KEY([GROUP_ID])
REFERENCES [dbo].[sm_group] ([GROUP_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[permission_group] CHECK CONSTRAINT [FKr7ylutdgqp1nrlbhjwit6y17g]
GO
ALTER TABLE [dbo].[product]  WITH NOCHECK ADD  CONSTRAINT [FKb8oqtc3j8sqo0t8xdrne7pg69] FOREIGN KEY([TAX_CLASS_ID])
REFERENCES [dbo].[tax_class] ([TAX_CLASS_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKb8oqtc3j8sqo0t8xdrne7pg69]
GO
ALTER TABLE [dbo].[product]  WITH NOCHECK ADD  CONSTRAINT [FKeiirvj8eu40h103fth8es1mt0] FOREIGN KEY([PRODUCT_TYPE_ID])
REFERENCES [dbo].[product_type] ([PRODUCT_TYPE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKeiirvj8eu40h103fth8es1mt0]
GO
ALTER TABLE [dbo].[product]  WITH NOCHECK ADD  CONSTRAINT [FKhhoq1nd9e0i4m7rt8gkh7d67h] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKhhoq1nd9e0i4m7rt8gkh7d67h]
GO
ALTER TABLE [dbo].[product]  WITH NOCHECK ADD  CONSTRAINT [FKqtt5f0aht5h7ough5rbkkcb33] FOREIGN KEY([CUSTOMER_ID])
REFERENCES [dbo].[customer] ([CUSTOMER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKqtt5f0aht5h7ough5rbkkcb33]
GO
ALTER TABLE [dbo].[product]  WITH NOCHECK ADD  CONSTRAINT [FKra5mmrdxn3ci86hod7q1u3vu9] FOREIGN KEY([MANUFACTURER_ID])
REFERENCES [dbo].[manufacturer] ([MANUFACTURER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product] CHECK CONSTRAINT [FKra5mmrdxn3ci86hod7q1u3vu9]
GO
ALTER TABLE [dbo].[product_attribute]  WITH NOCHECK ADD  CONSTRAINT [FK2st60u9twmvvaowwn88mt3lrx] FOREIGN KEY([OPTION_ID])
REFERENCES [dbo].[product_option] ([PRODUCT_OPTION_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_attribute] CHECK CONSTRAINT [FK2st60u9twmvvaowwn88mt3lrx]
GO
ALTER TABLE [dbo].[product_attribute]  WITH NOCHECK ADD  CONSTRAINT [FK3rleultg9fn2dxruefbb18d5t] FOREIGN KEY([OPTION_VALUE_ID])
REFERENCES [dbo].[product_option_value] ([PRODUCT_OPTION_VALUE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_attribute] CHECK CONSTRAINT [FK3rleultg9fn2dxruefbb18d5t]
GO
ALTER TABLE [dbo].[product_attribute]  WITH NOCHECK ADD  CONSTRAINT [FKml3nvemdjya159a7669qt1gjd] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[product] ([PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_attribute] CHECK CONSTRAINT [FKml3nvemdjya159a7669qt1gjd]
GO
ALTER TABLE [dbo].[product_availability]  WITH NOCHECK ADD  CONSTRAINT [FK5sbh4dx25pmjcqx958hr9ys8h] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[product] ([PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_availability] CHECK CONSTRAINT [FK5sbh4dx25pmjcqx958hr9ys8h]
GO
ALTER TABLE [dbo].[product_category]  WITH NOCHECK ADD  CONSTRAINT [FK3xw1sbaa29r534jvedimdd7md] FOREIGN KEY([CATEGORY_ID])
REFERENCES [dbo].[category] ([CATEGORY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_category] CHECK CONSTRAINT [FK3xw1sbaa29r534jvedimdd7md]
GO
ALTER TABLE [dbo].[product_category]  WITH NOCHECK ADD  CONSTRAINT [FKa7245ly271mb0crlhxwhhppsq] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[product] ([PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_category] CHECK CONSTRAINT [FKa7245ly271mb0crlhxwhhppsq]
GO
ALTER TABLE [dbo].[product_description]  WITH NOCHECK ADD  CONSTRAINT [FK6esjdaa6vu2t5vjin788a8og6] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_description] CHECK CONSTRAINT [FK6esjdaa6vu2t5vjin788a8og6]
GO
ALTER TABLE [dbo].[product_description]  WITH NOCHECK ADD  CONSTRAINT [FKm46yjcu59q79qrokgglwq2ove] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[product] ([PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_description] CHECK CONSTRAINT [FKm46yjcu59q79qrokgglwq2ove]
GO
ALTER TABLE [dbo].[product_digital]  WITH CHECK ADD  CONSTRAINT [FK47fmb5cg68pws7k26txyl1il6] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[product] ([PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_digital] CHECK CONSTRAINT [FK47fmb5cg68pws7k26txyl1il6]
GO
ALTER TABLE [dbo].[product_image]  WITH NOCHECK ADD  CONSTRAINT [FKgab836d8rxqg8vv55nm02r65i] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[product] ([PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_image] CHECK CONSTRAINT [FKgab836d8rxqg8vv55nm02r65i]
GO
ALTER TABLE [dbo].[product_image_description]  WITH CHECK ADD  CONSTRAINT [FK1dhldo18nj9l2y6qympgucynq] FOREIGN KEY([PRODUCT_IMAGE_ID])
REFERENCES [dbo].[product_image] ([PRODUCT_IMAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_image_description] CHECK CONSTRAINT [FK1dhldo18nj9l2y6qympgucynq]
GO
ALTER TABLE [dbo].[product_image_description]  WITH CHECK ADD  CONSTRAINT [FKlhdnpki4sf98wev0pcj2bvnih] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_image_description] CHECK CONSTRAINT [FKlhdnpki4sf98wev0pcj2bvnih]
GO
ALTER TABLE [dbo].[product_option]  WITH NOCHECK ADD  CONSTRAINT [FKp8cski5t5f5m4et4fw0uilcgu] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_option] CHECK CONSTRAINT [FKp8cski5t5f5m4et4fw0uilcgu]
GO
ALTER TABLE [dbo].[product_option_desc]  WITH NOCHECK ADD  CONSTRAINT [FK8fiwk5o1gbn2r2u8529yaf9xt] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_option_desc] CHECK CONSTRAINT [FK8fiwk5o1gbn2r2u8529yaf9xt]
GO
ALTER TABLE [dbo].[product_option_desc]  WITH NOCHECK ADD  CONSTRAINT [FKgjqmfofile4hwv867irsnvuc0] FOREIGN KEY([PRODUCT_OPTION_ID])
REFERENCES [dbo].[product_option] ([PRODUCT_OPTION_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_option_desc] CHECK CONSTRAINT [FKgjqmfofile4hwv867irsnvuc0]
GO
ALTER TABLE [dbo].[product_option_value]  WITH NOCHECK ADD  CONSTRAINT [FKnd3nw0mamlk8bkxo8ad5m85pq] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_option_value] CHECK CONSTRAINT [FKnd3nw0mamlk8bkxo8ad5m85pq]
GO
ALTER TABLE [dbo].[product_option_value_description]  WITH NOCHECK ADD  CONSTRAINT [FK19mnby7atlt85exlypxdxhacx] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_option_value_description] CHECK CONSTRAINT [FK19mnby7atlt85exlypxdxhacx]
GO
ALTER TABLE [dbo].[product_option_value_description]  WITH NOCHECK ADD  CONSTRAINT [FKqttc6b79yp2s1hyrhg4thag6s] FOREIGN KEY([PRODUCT_OPTION_VALUE_ID])
REFERENCES [dbo].[product_option_value] ([PRODUCT_OPTION_VALUE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_option_value_description] CHECK CONSTRAINT [FKqttc6b79yp2s1hyrhg4thag6s]
GO
ALTER TABLE [dbo].[product_price]  WITH NOCHECK ADD  CONSTRAINT [FK1dic7jnnk1qikgvwcrf4dw12r] FOREIGN KEY([PRODUCT_AVAIL_ID])
REFERENCES [dbo].[product_availability] ([PRODUCT_AVAIL_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_price] CHECK CONSTRAINT [FK1dic7jnnk1qikgvwcrf4dw12r]
GO
ALTER TABLE [dbo].[product_price_description]  WITH NOCHECK ADD  CONSTRAINT [FK7bmbrjr8ar5icwdpt8myj6gei] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_price_description] CHECK CONSTRAINT [FK7bmbrjr8ar5icwdpt8myj6gei]
GO
ALTER TABLE [dbo].[product_price_description]  WITH NOCHECK ADD  CONSTRAINT [FKbwxw861ipjsct606j3dagdjsf] FOREIGN KEY([PRODUCT_PRICE_ID])
REFERENCES [dbo].[product_price] ([PRODUCT_PRICE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_price_description] CHECK CONSTRAINT [FKbwxw861ipjsct606j3dagdjsf]
GO
ALTER TABLE [dbo].[product_relationship]  WITH NOCHECK ADD  CONSTRAINT [FKfskwtawyt85g9h6761fa69ya5] FOREIGN KEY([RELATED_PRODUCT_ID])
REFERENCES [dbo].[product] ([PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_relationship] CHECK CONSTRAINT [FKfskwtawyt85g9h6761fa69ya5]
GO
ALTER TABLE [dbo].[product_relationship]  WITH NOCHECK ADD  CONSTRAINT [FKnprvswtbgrm6bjfq3cbdl3qsm] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_relationship] CHECK CONSTRAINT [FKnprvswtbgrm6bjfq3cbdl3qsm]
GO
ALTER TABLE [dbo].[product_relationship]  WITH NOCHECK ADD  CONSTRAINT [FKso3cvinykac5wdwu1tjgfotor] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[product] ([PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_relationship] CHECK CONSTRAINT [FKso3cvinykac5wdwu1tjgfotor]
GO
ALTER TABLE [dbo].[product_review]  WITH CHECK ADD  CONSTRAINT [FK7tm0jrt0hiugo3ep49t3subou] FOREIGN KEY([CUSTOMERS_ID])
REFERENCES [dbo].[customer] ([CUSTOMER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_review] CHECK CONSTRAINT [FK7tm0jrt0hiugo3ep49t3subou]
GO
ALTER TABLE [dbo].[product_review]  WITH CHECK ADD  CONSTRAINT [FKbfi8de7kxultg1vevq6jc1hn7] FOREIGN KEY([PRODUCT_ID])
REFERENCES [dbo].[product] ([PRODUCT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_review] CHECK CONSTRAINT [FKbfi8de7kxultg1vevq6jc1hn7]
GO
ALTER TABLE [dbo].[product_review_description]  WITH CHECK ADD  CONSTRAINT [FK7byc5jsf5bm4lk674ac44e50m] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_review_description] CHECK CONSTRAINT [FK7byc5jsf5bm4lk674ac44e50m]
GO
ALTER TABLE [dbo].[product_review_description]  WITH CHECK ADD  CONSTRAINT [FKmjivhigdcxmytndlpjuhf4o25] FOREIGN KEY([PRODUCT_REVIEW_ID])
REFERENCES [dbo].[product_review] ([PRODUCT_REVIEW_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[product_review_description] CHECK CONSTRAINT [FKmjivhigdcxmytndlpjuhf4o25]
GO
ALTER TABLE [dbo].[shiping_origin]  WITH CHECK ADD  CONSTRAINT [FK6k73f1n18kr7mqp708aiwq047] FOREIGN KEY([ZONE_ID])
REFERENCES [dbo].[zone] ([ZONE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[shiping_origin] CHECK CONSTRAINT [FK6k73f1n18kr7mqp708aiwq047]
GO
ALTER TABLE [dbo].[shiping_origin]  WITH CHECK ADD  CONSTRAINT [FKp0dbwsv3sdsp57ex7j5k9b0oq] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[shiping_origin] CHECK CONSTRAINT [FKp0dbwsv3sdsp57ex7j5k9b0oq]
GO
ALTER TABLE [dbo].[shiping_origin]  WITH CHECK ADD  CONSTRAINT [FKpqig59usqvs9h0dw4lm8rv7yy] FOREIGN KEY([COUNTRY_ID])
REFERENCES [dbo].[country] ([COUNTRY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[shiping_origin] CHECK CONSTRAINT [FKpqig59usqvs9h0dw4lm8rv7yy]
GO
ALTER TABLE [dbo].[shipping_quote]  WITH CHECK ADD  CONSTRAINT [FK9vb7tbjl8ivygdiqw883fewx7] FOREIGN KEY([DELIVERY_COUNTRY_ID])
REFERENCES [dbo].[country] ([COUNTRY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[shipping_quote] CHECK CONSTRAINT [FK9vb7tbjl8ivygdiqw883fewx7]
GO
ALTER TABLE [dbo].[shipping_quote]  WITH CHECK ADD  CONSTRAINT [FKiioesp0vl6x4om1jeajj4uy1t] FOREIGN KEY([DELIVERY_ZONE_ID])
REFERENCES [dbo].[zone] ([ZONE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[shipping_quote] CHECK CONSTRAINT [FKiioesp0vl6x4om1jeajj4uy1t]
GO
ALTER TABLE [dbo].[shopping_cart]  WITH CHECK ADD  CONSTRAINT [FKqvghr5rmjefe3lw9mcolk30a0] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[shopping_cart] CHECK CONSTRAINT [FKqvghr5rmjefe3lw9mcolk30a0]
GO
ALTER TABLE [dbo].[shopping_cart_attr_item]  WITH CHECK ADD  CONSTRAINT [FKp42tpa623hyo9ww69v0ohb3er] FOREIGN KEY([SHP_CART_ITEM_ID])
REFERENCES [dbo].[shopping_cart_item] ([SHP_CART_ITEM_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[shopping_cart_attr_item] CHECK CONSTRAINT [FKp42tpa623hyo9ww69v0ohb3er]
GO
ALTER TABLE [dbo].[shopping_cart_item]  WITH CHECK ADD  CONSTRAINT [FK2gbimdwe9uysd5xadnfl0xq83] FOREIGN KEY([SHP_CART_ID])
REFERENCES [dbo].[shopping_cart] ([SHP_CART_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[shopping_cart_item] CHECK CONSTRAINT [FK2gbimdwe9uysd5xadnfl0xq83]
GO
ALTER TABLE [dbo].[sm_transaction]  WITH CHECK ADD  CONSTRAINT [FK7j0s1gqh2tue1fyh5nyj5kwkp] FOREIGN KEY([ORDER_ID])
REFERENCES [dbo].[orders] ([ORDER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[sm_transaction] CHECK CONSTRAINT [FK7j0s1gqh2tue1fyh5nyj5kwkp]
GO
ALTER TABLE [dbo].[system_notification]  WITH CHECK ADD  CONSTRAINT [FKa54891emcl0fo27a1qk54slvk] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[user] ([USER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[system_notification] CHECK CONSTRAINT [FKa54891emcl0fo27a1qk54slvk]
GO
ALTER TABLE [dbo].[system_notification]  WITH CHECK ADD  CONSTRAINT [FKs6qk7l06e0s6m9n04momedgt7] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[system_notification] CHECK CONSTRAINT [FKs6qk7l06e0s6m9n04momedgt7]
GO
ALTER TABLE [dbo].[tax_class]  WITH NOCHECK ADD  CONSTRAINT [FK82i8puujghcv7fc82qwsgjg8w] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tax_class] CHECK CONSTRAINT [FK82i8puujghcv7fc82qwsgjg8w]
GO
ALTER TABLE [dbo].[tax_rate]  WITH CHECK ADD  CONSTRAINT [FK6wm34jcwoembe1qsmle2wtwnv] FOREIGN KEY([COUNTRY_ID])
REFERENCES [dbo].[country] ([COUNTRY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tax_rate] CHECK CONSTRAINT [FK6wm34jcwoembe1qsmle2wtwnv]
GO
ALTER TABLE [dbo].[tax_rate]  WITH CHECK ADD  CONSTRAINT [FK7bpa9pbl1gnj5y3xbgs3wc0eg] FOREIGN KEY([TAX_CLASS_ID])
REFERENCES [dbo].[tax_class] ([TAX_CLASS_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tax_rate] CHECK CONSTRAINT [FK7bpa9pbl1gnj5y3xbgs3wc0eg]
GO
ALTER TABLE [dbo].[tax_rate]  WITH CHECK ADD  CONSTRAINT [FKfwp6yka2qps9jna473e6c6yc1] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tax_rate] CHECK CONSTRAINT [FKfwp6yka2qps9jna473e6c6yc1]
GO
ALTER TABLE [dbo].[tax_rate]  WITH CHECK ADD  CONSTRAINT [FKm9snpf6o1nb4j1t80nas8d1ix] FOREIGN KEY([ZONE_ID])
REFERENCES [dbo].[zone] ([ZONE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tax_rate] CHECK CONSTRAINT [FKm9snpf6o1nb4j1t80nas8d1ix]
GO
ALTER TABLE [dbo].[tax_rate]  WITH CHECK ADD  CONSTRAINT [FKt8isen27i3ioa0tw3bl8qlvdh] FOREIGN KEY([PARENT_ID])
REFERENCES [dbo].[tax_rate] ([TAX_RATE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tax_rate] CHECK CONSTRAINT [FKt8isen27i3ioa0tw3bl8qlvdh]
GO
ALTER TABLE [dbo].[tax_rate_description]  WITH CHECK ADD  CONSTRAINT [FK65c2lqslk5kx25dpkem2r0vxq] FOREIGN KEY([TAX_RATE_ID])
REFERENCES [dbo].[tax_rate] ([TAX_RATE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tax_rate_description] CHECK CONSTRAINT [FK65c2lqslk5kx25dpkem2r0vxq]
GO
ALTER TABLE [dbo].[tax_rate_description]  WITH CHECK ADD  CONSTRAINT [FKsicb2ydx42o04pvlnxw2mlx0w] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tax_rate_description] CHECK CONSTRAINT [FKsicb2ydx42o04pvlnxw2mlx0w]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK2yn065l2n7nw9rofjs4hwpij2] FOREIGN KEY([MERCHANT_ID])
REFERENCES [dbo].[merchant_store] ([MERCHANT_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK2yn065l2n7nw9rofjs4hwpij2]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD  CONSTRAINT [FK3sh6qxgt118m71ttvkubgd9y8] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user] CHECK CONSTRAINT [FK3sh6qxgt118m71ttvkubgd9y8]
GO
ALTER TABLE [dbo].[user_group]  WITH CHECK ADD  CONSTRAINT [FK75kainrhn4kh8j3sw2xbe7v61] FOREIGN KEY([GROUP_ID])
REFERENCES [dbo].[sm_group] ([GROUP_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_group] CHECK CONSTRAINT [FK75kainrhn4kh8j3sw2xbe7v61]
GO
ALTER TABLE [dbo].[user_group]  WITH CHECK ADD  CONSTRAINT [FKdonp1m2n25ua1465rhice3qna] FOREIGN KEY([USER_ID])
REFERENCES [dbo].[user] ([USER_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_group] CHECK CONSTRAINT [FKdonp1m2n25ua1465rhice3qna]
GO
ALTER TABLE [dbo].[zone]  WITH CHECK ADD  CONSTRAINT [FKhn2c1w3e1twhjg7tiwv7vuk67] FOREIGN KEY([COUNTRY_ID])
REFERENCES [dbo].[country] ([COUNTRY_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[zone] CHECK CONSTRAINT [FKhn2c1w3e1twhjg7tiwv7vuk67]
GO
ALTER TABLE [dbo].[zone_description]  WITH CHECK ADD  CONSTRAINT [FK69ybu7r3bgpcq65c77ji1udh3] FOREIGN KEY([LANGUAGE_ID])
REFERENCES [dbo].[language] ([LANGUAGE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[zone_description] CHECK CONSTRAINT [FK69ybu7r3bgpcq65c77ji1udh3]
GO
ALTER TABLE [dbo].[zone_description]  WITH CHECK ADD  CONSTRAINT [FKpv4elin6w3b03756obqvk447f] FOREIGN KEY([ZONE_ID])
REFERENCES [dbo].[zone] ([ZONE_ID]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[zone_description] CHECK CONSTRAINT [FKpv4elin6w3b03756obqvk447f]
GO
