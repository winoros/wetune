-- USE [gitlab_base]
GO
ALTER TABLE [dbo].[x509_commit_signatures] DROP CONSTRAINT [fk_rails_53fe41188f]
GO
ALTER TABLE [dbo].[x509_certificates] DROP CONSTRAINT [fk_rails_76479fb5b4]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [fk_0c8ca6d9d1]
GO
ALTER TABLE [dbo].[web_hook_logs] DROP CONSTRAINT [fk_rails_666826e111]
GO
ALTER TABLE [dbo].[vulnerability_user_mentions] DROP CONSTRAINT [fk_rails_a18600f210]
GO
ALTER TABLE [dbo].[vulnerability_user_mentions] DROP CONSTRAINT [fk_rails_1a41c485cd]
GO
ALTER TABLE [dbo].[vulnerability_occurrences] DROP CONSTRAINT [fk_rails_bf5b788ca7]
GO
ALTER TABLE [dbo].[vulnerability_occurrences] DROP CONSTRAINT [fk_97ffe77653]
GO
ALTER TABLE [dbo].[vulnerability_occurrence_pipelines] DROP CONSTRAINT [fk_rails_dc3ae04693]
GO
ALTER TABLE [dbo].[vulnerability_occurrence_pipelines] DROP CONSTRAINT [fk_rails_6421e35d7d]
GO
ALTER TABLE [dbo].[vulnerability_occurrence_identifiers] DROP CONSTRAINT [fk_rails_e4ef6d027c]
GO
ALTER TABLE [dbo].[vulnerability_occurrence_identifiers] DROP CONSTRAINT [fk_rails_be2e49e1d0]
GO
ALTER TABLE [dbo].[vulnerability_issue_links] DROP CONSTRAINT [fk_rails_d459c19036]
GO
ALTER TABLE [dbo].[vulnerability_identifiers] DROP CONSTRAINT [fk_rails_a67a16c885]
GO
ALTER TABLE [dbo].[vulnerability_feedback] DROP CONSTRAINT [fk_rails_debd54e456]
GO
ALTER TABLE [dbo].[vulnerability_feedback] DROP CONSTRAINT [fk_rails_8c77e5891a]
GO
ALTER TABLE [dbo].[vulnerability_feedback] DROP CONSTRAINT [fk_rails_20976e6fd9]
GO
ALTER TABLE [dbo].[vulnerability_feedback] DROP CONSTRAINT [fk_94f7c8a81e]
GO
ALTER TABLE [dbo].[vulnerability_feedback] DROP CONSTRAINT [fk_563ff1912e]
GO
ALTER TABLE [dbo].[users_star_projects] DROP CONSTRAINT [fk_22cd27ddfc]
GO
ALTER TABLE [dbo].[users_ops_dashboard_projects] DROP CONSTRAINT [fk_rails_9b4ebf005b]
GO
ALTER TABLE [dbo].[users_ops_dashboard_projects] DROP CONSTRAINT [fk_rails_220a0562db]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [fk_a4b8fefe3e]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [fk_789cd90b35]
GO
ALTER TABLE [dbo].[user_synced_attributes_metadata] DROP CONSTRAINT [fk_rails_0f4aa0981f]
GO
ALTER TABLE [dbo].[user_preferences] DROP CONSTRAINT [fk_rails_a69bfcfd81]
GO
ALTER TABLE [dbo].[user_interacted_projects] DROP CONSTRAINT [fk_722ceba4f7]
GO
ALTER TABLE [dbo].[user_interacted_projects] DROP CONSTRAINT [fk_0894651f08]
GO
ALTER TABLE [dbo].[user_custom_attributes] DROP CONSTRAINT [fk_rails_47b91868a8]
GO
ALTER TABLE [dbo].[user_callouts] DROP CONSTRAINT [fk_rails_ddfdd80f3d]
GO
ALTER TABLE [dbo].[u2f_registrations] DROP CONSTRAINT [fk_rails_bfe6a84544]
GO
ALTER TABLE [dbo].[trending_projects] DROP CONSTRAINT [fk_rails_09feecd872]
GO
ALTER TABLE [dbo].[todos] DROP CONSTRAINT [fk_rails_a27c483435]
GO
ALTER TABLE [dbo].[todos] DROP CONSTRAINT [fk_ccf0373936]
GO
ALTER TABLE [dbo].[todos] DROP CONSTRAINT [fk_45054f9c45]
GO
ALTER TABLE [dbo].[timelogs] DROP CONSTRAINT [fk_timelogs_merge_requests_merge_request_id]
GO
ALTER TABLE [dbo].[timelogs] DROP CONSTRAINT [fk_timelogs_issues_issue_id]
GO
ALTER TABLE [dbo].[term_agreements] DROP CONSTRAINT [fk_rails_a88721bcdf]
GO
ALTER TABLE [dbo].[term_agreements] DROP CONSTRAINT [fk_rails_6ea6520e4a]
GO
ALTER TABLE [dbo].[system_note_metadata] DROP CONSTRAINT [fk_fbd87415c9]
GO
ALTER TABLE [dbo].[system_note_metadata] DROP CONSTRAINT [fk_d83a918cb1]
GO
ALTER TABLE [dbo].[suggestions] DROP CONSTRAINT [fk_rails_33b03a535c]
GO
ALTER TABLE [dbo].[subscriptions] DROP CONSTRAINT [fk_rails_d0c8bda804]
GO
ALTER TABLE [dbo].[software_license_policies] DROP CONSTRAINT [fk_rails_87b2247ce5]
GO
ALTER TABLE [dbo].[software_license_policies] DROP CONSTRAINT [fk_rails_7a7a2a92de]
GO
ALTER TABLE [dbo].[snippet_user_mentions] DROP CONSTRAINT [fk_rails_4d3f96b2cb]
GO
ALTER TABLE [dbo].[snippet_user_mentions] DROP CONSTRAINT [fk_rails_3e00189191]
GO
ALTER TABLE [dbo].[smartcard_identities] DROP CONSTRAINT [fk_rails_4689f889a9]
GO
ALTER TABLE [dbo].[slack_integrations] DROP CONSTRAINT [fk_rails_73db19721a]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [fk_71cce407f9]
GO
ALTER TABLE [dbo].[scim_oauth_access_tokens] DROP CONSTRAINT [fk_rails_c84404fb6c]
GO
ALTER TABLE [dbo].[saml_providers] DROP CONSTRAINT [fk_rails_306d459be7]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [fk_rails_5ca11d8c31]
GO
ALTER TABLE [dbo].[reviews] DROP CONSTRAINT [fk_rails_29e6f859c4]
GO
ALTER TABLE [dbo].[resource_label_events] DROP CONSTRAINT [fk_rails_9851a00031]
GO
ALTER TABLE [dbo].[resource_label_events] DROP CONSTRAINT [fk_rails_75efb0a653]
GO
ALTER TABLE [dbo].[resource_label_events] DROP CONSTRAINT [fk_rails_5ac1d2fc24]
GO
ALTER TABLE [dbo].[requirements] DROP CONSTRAINT [fk_rails_f212e67e63]
GO
ALTER TABLE [dbo].[requirements] DROP CONSTRAINT [fk_rails_33fed8aa4e]
GO
ALTER TABLE [dbo].[repository_languages] DROP CONSTRAINT [fk_rails_a750ec87a8]
GO
ALTER TABLE [dbo].[remote_mirrors] DROP CONSTRAINT [fk_43a9aa4ca8]
GO
ALTER TABLE [dbo].[releases] DROP CONSTRAINT [fk_8e4456f90f]
GO
ALTER TABLE [dbo].[releases] DROP CONSTRAINT [fk_47fe2a0596]
GO
ALTER TABLE [dbo].[release_links] DROP CONSTRAINT [fk_rails_753be7ae29]
GO
ALTER TABLE [dbo].[push_rules] DROP CONSTRAINT [fk_83b29894de]
GO
ALTER TABLE [dbo].[push_event_payloads] DROP CONSTRAINT [fk_36c74129da]
GO
ALTER TABLE [dbo].[protected_tags] DROP CONSTRAINT [fk_8e4af87648]
GO
ALTER TABLE [dbo].[protected_tag_create_access_levels] DROP CONSTRAINT [fk_rails_2349b78b91]
GO
ALTER TABLE [dbo].[protected_tag_create_access_levels] DROP CONSTRAINT [fk_f7dfda8c51]
GO
ALTER TABLE [dbo].[protected_tag_create_access_levels] DROP CONSTRAINT [fk_b4eb82fe3c]
GO
ALTER TABLE [dbo].[protected_environments] DROP CONSTRAINT [fk_rails_a354313d11]
GO
ALTER TABLE [dbo].[protected_environment_deploy_access_levels] DROP CONSTRAINT [fk_rails_898a13b650]
GO
ALTER TABLE [dbo].[protected_environment_deploy_access_levels] DROP CONSTRAINT [fk_rails_5b9f6970fe]
GO
ALTER TABLE [dbo].[protected_environment_deploy_access_levels] DROP CONSTRAINT [fk_rails_45cc02a931]
GO
ALTER TABLE [dbo].[protected_branches] DROP CONSTRAINT [fk_7a9c6d93e7]
GO
ALTER TABLE [dbo].[protected_branch_unprotect_access_levels] DROP CONSTRAINT [fk_rails_e9eb8dc025]
GO
ALTER TABLE [dbo].[protected_branch_unprotect_access_levels] DROP CONSTRAINT [fk_rails_5be1abfc25]
GO
ALTER TABLE [dbo].[protected_branch_unprotect_access_levels] DROP CONSTRAINT [fk_rails_2d2aba21ef]
GO
ALTER TABLE [dbo].[protected_branch_push_access_levels] DROP CONSTRAINT [fk_rails_8dcb712d65]
GO
ALTER TABLE [dbo].[protected_branch_push_access_levels] DROP CONSTRAINT [fk_9ffc86a3d9]
GO
ALTER TABLE [dbo].[protected_branch_push_access_levels] DROP CONSTRAINT [fk_7111b68cdb]
GO
ALTER TABLE [dbo].[protected_branch_merge_access_levels] DROP CONSTRAINT [fk_rails_5ffb4f3590]
GO
ALTER TABLE [dbo].[protected_branch_merge_access_levels] DROP CONSTRAINT [fk_98f3d044fe]
GO
ALTER TABLE [dbo].[protected_branch_merge_access_levels] DROP CONSTRAINT [fk_8a3072ccb3]
GO
ALTER TABLE [dbo].[prometheus_alerts] DROP CONSTRAINT [fk_rails_e6351447ec]
GO
ALTER TABLE [dbo].[prometheus_alerts] DROP CONSTRAINT [fk_rails_6d9b283465]
GO
ALTER TABLE [dbo].[prometheus_alert_events] DROP CONSTRAINT [fk_rails_4675865839]
GO
ALTER TABLE [dbo].[prometheus_alert_events] DROP CONSTRAINT [fk_rails_106f901176]
GO
ALTER TABLE [dbo].[project_tracing_settings] DROP CONSTRAINT [fk_rails_fe56f57fc6]
GO
ALTER TABLE [dbo].[project_statistics] DROP CONSTRAINT [fk_rails_12c471002f]
GO
ALTER TABLE [dbo].[project_settings] DROP CONSTRAINT [fk_rails_c6df6e6328]
GO
ALTER TABLE [dbo].[project_repository_states] DROP CONSTRAINT [fk_rails_0f2298ca8a]
GO
ALTER TABLE [dbo].[project_repositories] DROP CONSTRAINT [fk_rails_c3258dc63b]
GO
ALTER TABLE [dbo].[project_repositories] DROP CONSTRAINT [fk_rails_7a810d4121]
GO
ALTER TABLE [dbo].[project_mirror_data] DROP CONSTRAINT [fk_d1aad367d7]
GO
ALTER TABLE [dbo].[project_metrics_settings] DROP CONSTRAINT [fk_rails_4c6037ee4f]
GO
ALTER TABLE [dbo].[project_import_data] DROP CONSTRAINT [fk_ffb9ee3a10]
GO
ALTER TABLE [dbo].[project_group_links] DROP CONSTRAINT [fk_daa8cee94c]
GO
ALTER TABLE [dbo].[project_features] DROP CONSTRAINT [fk_18513d9b92]
GO
ALTER TABLE [dbo].[project_feature_usages] DROP CONSTRAINT [fk_rails_c22a50024b]
GO
ALTER TABLE [dbo].[project_error_tracking_settings] DROP CONSTRAINT [fk_rails_910a2b8bd9]
GO
ALTER TABLE [dbo].[project_deploy_tokens] DROP CONSTRAINT [fk_rails_170e03cbaf]
GO
ALTER TABLE [dbo].[project_deploy_tokens] DROP CONSTRAINT [fk_rails_0aca134388]
GO
ALTER TABLE [dbo].[project_daily_statistics] DROP CONSTRAINT [fk_rails_8e549b272d]
GO
ALTER TABLE [dbo].[project_custom_attributes] DROP CONSTRAINT [fk_rails_719c3dccc5]
GO
ALTER TABLE [dbo].[project_ci_cd_settings] DROP CONSTRAINT [fk_24c15d2f2e]
GO
ALTER TABLE [dbo].[project_auto_devops] DROP CONSTRAINT [fk_rails_45436b12b2]
GO
ALTER TABLE [dbo].[project_authorizations] DROP CONSTRAINT [fk_rails_11e7aa3ed9]
GO
ALTER TABLE [dbo].[project_authorizations] DROP CONSTRAINT [fk_rails_0f84bb11f3]
GO
ALTER TABLE [dbo].[project_aliases] DROP CONSTRAINT [fk_rails_a1804f74a7]
GO
ALTER TABLE [dbo].[project_alerting_settings] DROP CONSTRAINT [fk_rails_27a84b407d]
GO
ALTER TABLE [dbo].[pool_repositories] DROP CONSTRAINT [fk_rails_d2711daad4]
GO
ALTER TABLE [dbo].[pool_repositories] DROP CONSTRAINT [fk_rails_af3f8c5d62]
GO
ALTER TABLE [dbo].[personal_access_tokens] DROP CONSTRAINT [fk_personal_access_tokens_user_id]
GO
ALTER TABLE [dbo].[path_locks] DROP CONSTRAINT [fk_rails_762cdcf942]
GO
ALTER TABLE [dbo].[path_locks] DROP CONSTRAINT [fk_5265c98f24]
GO
ALTER TABLE [dbo].[pages_domains] DROP CONSTRAINT [fk_ea2f6dfc6f]
GO
ALTER TABLE [dbo].[pages_domain_acme_orders] DROP CONSTRAINT [fk_rails_76581b1c16]
GO
ALTER TABLE [dbo].[packages_packages] DROP CONSTRAINT [fk_rails_e1ac527425]
GO
ALTER TABLE [dbo].[packages_package_files] DROP CONSTRAINT [fk_86f0f182f8]
GO
ALTER TABLE [dbo].[packages_maven_metadata] DROP CONSTRAINT [fk_be88aed360]
GO
ALTER TABLE [dbo].[packages_dependency_links] DROP CONSTRAINT [fk_rails_96ef1c00d3]
GO
ALTER TABLE [dbo].[packages_dependency_links] DROP CONSTRAINT [fk_rails_4437bf4070]
GO
ALTER TABLE [dbo].[packages_conan_metadata] DROP CONSTRAINT [fk_rails_8c68cfec8b]
GO
ALTER TABLE [dbo].[packages_conan_file_metadata] DROP CONSTRAINT [fk_rails_0afabd9328]
GO
ALTER TABLE [dbo].[packages_build_infos] DROP CONSTRAINT [fk_rails_17a9a0dffc]
GO
ALTER TABLE [dbo].[operations_strategies] DROP CONSTRAINT [fk_rails_d183b6e6dd]
GO
ALTER TABLE [dbo].[operations_scopes] DROP CONSTRAINT [fk_rails_7a9358853b]
GO
ALTER TABLE [dbo].[operations_feature_flags_clients] DROP CONSTRAINT [fk_rails_6650ed902c]
GO
ALTER TABLE [dbo].[operations_feature_flags] DROP CONSTRAINT [fk_rails_648e241be7]
GO
ALTER TABLE [dbo].[operations_feature_flag_scopes] DROP CONSTRAINT [fk_rails_a50a04d0a4]
GO
ALTER TABLE [dbo].[open_project_tracker_data] DROP CONSTRAINT [fk_rails_1987546e48]
GO
ALTER TABLE [dbo].[oauth_openid_requests] DROP CONSTRAINT [fk_77114b3b09]
GO
ALTER TABLE [dbo].[notification_settings] DROP CONSTRAINT [fk_0c95e91db7]
GO
ALTER TABLE [dbo].[notes] DROP CONSTRAINT [fk_99e097b079]
GO
ALTER TABLE [dbo].[notes] DROP CONSTRAINT [fk_2e82291620]
GO
ALTER TABLE [dbo].[note_diff_files] DROP CONSTRAINT [fk_rails_3d66047aeb]
GO
ALTER TABLE [dbo].[namespaces] DROP CONSTRAINT [fk_fdd12e5b80]
GO
ALTER TABLE [dbo].[namespaces] DROP CONSTRAINT [fk_319256d87a]
GO
ALTER TABLE [dbo].[namespace_statistics] DROP CONSTRAINT [fk_rails_0062050394]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] DROP CONSTRAINT [fk_rails_a0702c430b]
GO
ALTER TABLE [dbo].[namespace_aggregation_schedules] DROP CONSTRAINT [fk_rails_b565c8d16c]
GO
ALTER TABLE [dbo].[merge_trains] DROP CONSTRAINT [fk_rails_f90820cb08]
GO
ALTER TABLE [dbo].[merge_trains] DROP CONSTRAINT [fk_rails_b9d67af01d]
GO
ALTER TABLE [dbo].[merge_trains] DROP CONSTRAINT [fk_rails_b374b5225d]
GO
ALTER TABLE [dbo].[merge_trains] DROP CONSTRAINT [fk_rails_b29261ce31]
GO
ALTER TABLE [dbo].[merge_requests_closing_issues] DROP CONSTRAINT [fk_rails_f8540692be]
GO
ALTER TABLE [dbo].[merge_requests_closing_issues] DROP CONSTRAINT [fk_rails_458eda8667]
GO
ALTER TABLE [dbo].[merge_requests] DROP CONSTRAINT [fk_fd82eae0b9]
GO
ALTER TABLE [dbo].[merge_requests] DROP CONSTRAINT [fk_6a5165a692]
GO
ALTER TABLE [dbo].[merge_requests] DROP CONSTRAINT [fk_6149611a04]
GO
ALTER TABLE [dbo].[merge_requests] DROP CONSTRAINT [fk_3308fe130c]
GO
ALTER TABLE [dbo].[merge_request_user_mentions] DROP CONSTRAINT [fk_rails_c440b9ea31]
GO
ALTER TABLE [dbo].[merge_request_user_mentions] DROP CONSTRAINT [fk_rails_aa1b2961b1]
GO
ALTER TABLE [dbo].[merge_request_metrics] DROP CONSTRAINT [fk_rails_e6d7c24d1b]
GO
ALTER TABLE [dbo].[merge_request_metrics] DROP CONSTRAINT [fk_rails_33ae169d48]
GO
ALTER TABLE [dbo].[merge_request_metrics] DROP CONSTRAINT [fk_7f28d925f3]
GO
ALTER TABLE [dbo].[merge_request_diffs] DROP CONSTRAINT [fk_8483f3258f]
GO
ALTER TABLE [dbo].[merge_request_diff_files] DROP CONSTRAINT [fk_rails_501aa0a391]
GO
ALTER TABLE [dbo].[merge_request_diff_commits] DROP CONSTRAINT [fk_rails_316aaceda3]
GO
ALTER TABLE [dbo].[merge_request_context_commit_diff_files] DROP CONSTRAINT [fk_rails_74a00a1787]
GO
ALTER TABLE [dbo].[merge_request_blocks] DROP CONSTRAINT [fk_rails_364d4bea8b]
GO
ALTER TABLE [dbo].[merge_request_assignees] DROP CONSTRAINT [fk_rails_579d375628]
GO
ALTER TABLE [dbo].[merge_request_assignees] DROP CONSTRAINT [fk_rails_443443ce6f]
GO
ALTER TABLE [dbo].[members] DROP CONSTRAINT [fk_2e88fb7ce9]
GO
ALTER TABLE [dbo].[lists] DROP CONSTRAINT [fk_rails_baed5f39b7]
GO
ALTER TABLE [dbo].[lists] DROP CONSTRAINT [fk_d6cf4279f7]
GO
ALTER TABLE [dbo].[lists] DROP CONSTRAINT [fk_7a5553d60f]
GO
ALTER TABLE [dbo].[lists] DROP CONSTRAINT [fk_0d3f677137]
GO
ALTER TABLE [dbo].[lfs_file_locks] DROP CONSTRAINT [fk_rails_43df7a0412]
GO
ALTER TABLE [dbo].[lfs_file_locks] DROP CONSTRAINT [fk_rails_27a1d98fa8]
GO
ALTER TABLE [dbo].[labels] DROP CONSTRAINT [fk_rails_c1ac5161d8]
GO
ALTER TABLE [dbo].[label_priorities] DROP CONSTRAINT [fk_rails_ef916d14fa]
GO
ALTER TABLE [dbo].[label_priorities] DROP CONSTRAINT [fk_rails_e161058b0f]
GO
ALTER TABLE [dbo].[label_links] DROP CONSTRAINT [fk_d97dd08678]
GO
ALTER TABLE [dbo].[jira_tracker_data] DROP CONSTRAINT [fk_rails_a299066916]
GO
ALTER TABLE [dbo].[jira_connect_subscriptions] DROP CONSTRAINT [fk_rails_f1d617343f]
GO
ALTER TABLE [dbo].[jira_connect_subscriptions] DROP CONSTRAINT [fk_rails_a3c10bcf7d]
GO
ALTER TABLE [dbo].[issues_self_managed_prometheus_alert_events] DROP CONSTRAINT [fk_rails_f7db2d72eb]
GO
ALTER TABLE [dbo].[issues_prometheus_alert_events] DROP CONSTRAINT [fk_rails_b32edb790f]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [fk_96b1dd429c]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [fk_05f1e72feb]
GO
ALTER TABLE [dbo].[issue_user_mentions] DROP CONSTRAINT [fk_rails_57581fda73]
GO
ALTER TABLE [dbo].[issue_user_mentions] DROP CONSTRAINT [fk_rails_3861d9fefa]
GO
ALTER TABLE [dbo].[issue_tracker_data] DROP CONSTRAINT [fk_rails_ccc0840427]
GO
ALTER TABLE [dbo].[issue_metrics] DROP CONSTRAINT [fk_rails_4bb543d85d]
GO
ALTER TABLE [dbo].[issue_links] DROP CONSTRAINT [fk_c900194ff2]
GO
ALTER TABLE [dbo].[issue_assignees] DROP CONSTRAINT [fk_b7d881734a]
GO
ALTER TABLE [dbo].[issue_assignees] DROP CONSTRAINT [fk_5e0c8d9154]
GO
ALTER TABLE [dbo].[ip_restrictions] DROP CONSTRAINT [fk_rails_04a93778d5]
GO
ALTER TABLE [dbo].[internal_ids] DROP CONSTRAINT [fk_rails_f7d46b66c6]
GO
ALTER TABLE [dbo].[internal_ids] DROP CONSTRAINT [fk_162941d509]
GO
ALTER TABLE [dbo].[insights] DROP CONSTRAINT [fk_rails_f36fda3932]
GO
ALTER TABLE [dbo].[insights] DROP CONSTRAINT [fk_rails_5c4391f60a]
GO
ALTER TABLE [dbo].[index_statuses] DROP CONSTRAINT [fk_74b2492545]
GO
ALTER TABLE [dbo].[import_failures] DROP CONSTRAINT [fk_24b824da43]
GO
ALTER TABLE [dbo].[import_export_uploads] DROP CONSTRAINT [fk_rails_f129140f9e]
GO
ALTER TABLE [dbo].[identities] DROP CONSTRAINT [fk_aade90f0fc]
GO
ALTER TABLE [dbo].[group_custom_attributes] DROP CONSTRAINT [fk_rails_246e0db83a]
GO
ALTER TABLE [dbo].[gpg_signatures] DROP CONSTRAINT [fk_rails_19d4f1c6f9]
GO
ALTER TABLE [dbo].[gpg_signatures] DROP CONSTRAINT [fk_rails_11ae8cb9a7]
GO
ALTER TABLE [dbo].[gpg_keys] DROP CONSTRAINT [fk_rails_9d1f5d8719]
GO
ALTER TABLE [dbo].[gpg_key_subkeys] DROP CONSTRAINT [fk_rails_8b2c90b046]
GO
ALTER TABLE [dbo].[gitlab_subscriptions] DROP CONSTRAINT [fk_e2595d00a1]
GO
ALTER TABLE [dbo].[gitlab_subscriptions] DROP CONSTRAINT [fk_bd0c4019c3]
GO
ALTER TABLE [dbo].[geo_repositories_changed_events] DROP CONSTRAINT [fk_rails_75ec0fefcc]
GO
ALTER TABLE [dbo].[geo_node_statuses] DROP CONSTRAINT [fk_rails_0ecc699c2a]
GO
ALTER TABLE [dbo].[geo_node_namespace_links] DROP CONSTRAINT [fk_rails_546bf08d3e]
GO
ALTER TABLE [dbo].[geo_node_namespace_links] DROP CONSTRAINT [fk_rails_41ff5fb854]
GO
ALTER TABLE [dbo].[geo_hashed_storage_migrated_events] DROP CONSTRAINT [fk_rails_687ed7d7c5]
GO
ALTER TABLE [dbo].[geo_hashed_storage_attachments_events] DROP CONSTRAINT [fk_rails_d496b088e9]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_d5af95fcd9]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_cff7185ad2]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_c4b1c1f66e]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_c1f241c70d]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_9b9afb1916]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_86c84214ec]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_78a6492f68]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_6ada82d42a]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_4a99ebfd60]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_42c3b54bed]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_27548c6db3]
GO
ALTER TABLE [dbo].[geo_event_log] DROP CONSTRAINT [fk_176d3fbb5d]
GO
ALTER TABLE [dbo].[geo_container_repository_updated_events] DROP CONSTRAINT [fk_212c89c706]
GO
ALTER TABLE [dbo].[fork_networks] DROP CONSTRAINT [fk_e7b436b2b5]
GO
ALTER TABLE [dbo].[fork_network_members] DROP CONSTRAINT [fk_rails_a40860a1ca]
GO
ALTER TABLE [dbo].[fork_network_members] DROP CONSTRAINT [fk_b01280dae4]
GO
ALTER TABLE [dbo].[events] DROP CONSTRAINT [fk_rails_0434b48643]
GO
ALTER TABLE [dbo].[events] DROP CONSTRAINT [fk_edfd187b6f]
GO
ALTER TABLE [dbo].[epics] DROP CONSTRAINT [fk_f081aa4489]
GO
ALTER TABLE [dbo].[epics] DROP CONSTRAINT [fk_3654b61b03]
GO
ALTER TABLE [dbo].[epics] DROP CONSTRAINT [fk_1fbed67632]
GO
ALTER TABLE [dbo].[epic_user_mentions] DROP CONSTRAINT [fk_rails_3eaf4d88cc]
GO
ALTER TABLE [dbo].[epic_user_mentions] DROP CONSTRAINT [fk_rails_1c65976a49]
GO
ALTER TABLE [dbo].[epic_metrics] DROP CONSTRAINT [fk_rails_d071904753]
GO
ALTER TABLE [dbo].[epic_issues] DROP CONSTRAINT [fk_rails_5d942936b4]
GO
ALTER TABLE [dbo].[epic_issues] DROP CONSTRAINT [fk_rails_4209981af6]
GO
ALTER TABLE [dbo].[elasticsearch_indexed_projects] DROP CONSTRAINT [fk_rails_bd13bbdc3d]
GO
ALTER TABLE [dbo].[elasticsearch_indexed_namespaces] DROP CONSTRAINT [fk_rails_bdcf044f37]
GO
ALTER TABLE [dbo].[draft_notes] DROP CONSTRAINT [fk_rails_e753681674]
GO
ALTER TABLE [dbo].[draft_notes] DROP CONSTRAINT [fk_rails_2a8dac9901]
GO
ALTER TABLE [dbo].[design_user_mentions] DROP CONSTRAINT [fk_rails_8de8c6d632]
GO
ALTER TABLE [dbo].[design_management_versions] DROP CONSTRAINT [fk_c1440b4896]
GO
ALTER TABLE [dbo].[design_management_designs_versions] DROP CONSTRAINT [fk_f4d25ba00c]
GO
ALTER TABLE [dbo].[design_management_designs_versions] DROP CONSTRAINT [fk_03c671965c]
GO
ALTER TABLE [dbo].[design_management_designs] DROP CONSTRAINT [fk_rails_bfe283ec3c]
GO
ALTER TABLE [dbo].[design_management_designs] DROP CONSTRAINT [fk_rails_4bb1073360]
GO
ALTER TABLE [dbo].[description_versions] DROP CONSTRAINT [fk_rails_e8f4caf9c7]
GO
ALTER TABLE [dbo].[description_versions] DROP CONSTRAINT [fk_rails_3ff658220b]
GO
ALTER TABLE [dbo].[description_versions] DROP CONSTRAINT [fk_rails_12b144011c]
GO
ALTER TABLE [dbo].[deployments] DROP CONSTRAINT [fk_b9a3851b82]
GO
ALTER TABLE [dbo].[deployment_merge_requests] DROP CONSTRAINT [fk_rails_dcbce9f4df]
GO
ALTER TABLE [dbo].[deployment_merge_requests] DROP CONSTRAINT [fk_rails_86a6d8bf12]
GO
ALTER TABLE [dbo].[deployment_merge_requests] DROP CONSTRAINT [fk_a064ff4453]
GO
ALTER TABLE [dbo].[deployment_clusters] DROP CONSTRAINT [fk_rails_6359a164df]
GO
ALTER TABLE [dbo].[deployment_clusters] DROP CONSTRAINT [fk_rails_4e6243e120]
GO
ALTER TABLE [dbo].[deploy_keys_projects] DROP CONSTRAINT [fk_58a901ca7e]
GO
ALTER TABLE [dbo].[dependency_proxy_group_settings] DROP CONSTRAINT [fk_rails_616ddd680a]
GO
ALTER TABLE [dbo].[dependency_proxy_blobs] DROP CONSTRAINT [fk_rails_db58bbc5d7]
GO
ALTER TABLE [dbo].[container_repositories] DROP CONSTRAINT [fk_rails_32f7bf5aad]
GO
ALTER TABLE [dbo].[commit_user_mentions] DROP CONSTRAINT [fk_rails_a6760813e0]
GO
ALTER TABLE [dbo].[clusters_kubernetes_namespaces] DROP CONSTRAINT [fk_rails_40cc7ccbc3]
GO
ALTER TABLE [dbo].[clusters_applications_runners] DROP CONSTRAINT [fk_rails_22388594e9]
GO
ALTER TABLE [dbo].[clusters_applications_runners] DROP CONSTRAINT [fk_02de2ded36]
GO
ALTER TABLE [dbo].[clusters_applications_prometheus] DROP CONSTRAINT [fk_557e773639]
GO
ALTER TABLE [dbo].[clusters_applications_knative] DROP CONSTRAINT [fk_rails_54fc91e0a0]
GO
ALTER TABLE [dbo].[clusters_applications_jupyter] DROP CONSTRAINT [fk_rails_331f0aff78]
GO
ALTER TABLE [dbo].[clusters_applications_jupyter] DROP CONSTRAINT [fk_rails_17df21c98c]
GO
ALTER TABLE [dbo].[clusters_applications_ingress] DROP CONSTRAINT [fk_rails_753a7b41c1]
GO
ALTER TABLE [dbo].[clusters_applications_helm] DROP CONSTRAINT [fk_rails_3e2b1c06bc]
GO
ALTER TABLE [dbo].[clusters_applications_cert_managers] DROP CONSTRAINT [fk_rails_9e4f2cb4b2]
GO
ALTER TABLE [dbo].[clusters] DROP CONSTRAINT [fk_rails_ac3a663d79]
GO
ALTER TABLE [dbo].[clusters] DROP CONSTRAINT [fk_f05c5e5a42]
GO
ALTER TABLE [dbo].[cluster_providers_gcp] DROP CONSTRAINT [fk_rails_5c2c3bc814]
GO
ALTER TABLE [dbo].[cluster_providers_aws] DROP CONSTRAINT [fk_rails_ed1fdfaeb2]
GO
ALTER TABLE [dbo].[cluster_projects] DROP CONSTRAINT [fk_rails_a5a958bca1]
GO
ALTER TABLE [dbo].[cluster_projects] DROP CONSTRAINT [fk_rails_8b8c5caf07]
GO
ALTER TABLE [dbo].[cluster_platforms_kubernetes] DROP CONSTRAINT [fk_rails_e1e2cf841a]
GO
ALTER TABLE [dbo].[cluster_groups] DROP CONSTRAINT [fk_rails_fdb8648a96]
GO
ALTER TABLE [dbo].[cluster_groups] DROP CONSTRAINT [fk_rails_3d28377556]
GO
ALTER TABLE [dbo].[ci_variables] DROP CONSTRAINT [fk_ada5eb64b3]
GO
ALTER TABLE [dbo].[ci_triggers] DROP CONSTRAINT [fk_e8e10d1964]
GO
ALTER TABLE [dbo].[ci_triggers] DROP CONSTRAINT [fk_e3e63f966e]
GO
ALTER TABLE [dbo].[ci_trigger_requests] DROP CONSTRAINT [fk_b8ec8b7245]
GO
ALTER TABLE [dbo].[ci_stages] DROP CONSTRAINT [fk_fb57e6cc56]
GO
ALTER TABLE [dbo].[ci_stages] DROP CONSTRAINT [fk_2360681d1d]
GO
ALTER TABLE [dbo].[ci_sources_pipelines] DROP CONSTRAINT [fk_be5624bf37]
GO
ALTER TABLE [dbo].[ci_sources_pipelines] DROP CONSTRAINT [fk_1e53c97c0a]
GO
ALTER TABLE [dbo].[ci_runner_projects] DROP CONSTRAINT [fk_4478a6f1e4]
GO
ALTER TABLE [dbo].[ci_runner_namespaces] DROP CONSTRAINT [fk_rails_f9d9ed3308]
GO
ALTER TABLE [dbo].[ci_runner_namespaces] DROP CONSTRAINT [fk_rails_8767676b7a]
GO
ALTER TABLE [dbo].[ci_resources] DROP CONSTRAINT [fk_rails_430336af2d]
GO
ALTER TABLE [dbo].[ci_refs] DROP CONSTRAINT [fk_rails_4249db8cc3]
GO
ALTER TABLE [dbo].[ci_refs] DROP CONSTRAINT [fk_rails_1da48d19ce]
GO
ALTER TABLE [dbo].[ci_pipeline_variables] DROP CONSTRAINT [fk_f29c5f4380]
GO
ALTER TABLE [dbo].[ci_pipeline_schedules] DROP CONSTRAINT [fk_9ea99f58d2]
GO
ALTER TABLE [dbo].[ci_pipeline_schedules] DROP CONSTRAINT [fk_8ead60fcc4]
GO
ALTER TABLE [dbo].[ci_pipeline_schedule_variables] DROP CONSTRAINT [fk_41c35fda51]
GO
ALTER TABLE [dbo].[ci_pipeline_chat_data] DROP CONSTRAINT [fk_rails_f300456b63]
GO
ALTER TABLE [dbo].[ci_pipeline_chat_data] DROP CONSTRAINT [fk_rails_64ebfab6b3]
GO
ALTER TABLE [dbo].[ci_job_artifacts] DROP CONSTRAINT [fk_rails_c5137cb2c1]
GO
ALTER TABLE [dbo].[ci_job_artifacts] DROP CONSTRAINT [fk_rails_9862d392f9]
GO
ALTER TABLE [dbo].[ci_group_variables] DROP CONSTRAINT [fk_33ae4d58d8]
GO
ALTER TABLE [dbo].[ci_builds_runner_session] DROP CONSTRAINT [fk_rails_70707857d3]
GO
ALTER TABLE [dbo].[ci_builds_metadata] DROP CONSTRAINT [fk_rails_ffcf702a02]
GO
ALTER TABLE [dbo].[ci_builds_metadata] DROP CONSTRAINT [fk_rails_e20479742e]
GO
ALTER TABLE [dbo].[ci_builds] DROP CONSTRAINT [fk_87f4cefcda]
GO
ALTER TABLE [dbo].[ci_build_trace_sections] DROP CONSTRAINT [fk_4ebe41f502]
GO
ALTER TABLE [dbo].[ci_build_trace_sections] DROP CONSTRAINT [fk_264e112c66]
GO
ALTER TABLE [dbo].[ci_build_trace_section_names] DROP CONSTRAINT [fk_rails_f8cd72cd26]
GO
ALTER TABLE [dbo].[ci_build_trace_chunks] DROP CONSTRAINT [fk_rails_1013b761f2]
GO
ALTER TABLE [dbo].[ci_build_needs] DROP CONSTRAINT [fk_rails_3cf221d4ed]
GO
ALTER TABLE [dbo].[chat_teams] DROP CONSTRAINT [fk_rails_3b543909cb]
GO
ALTER TABLE [dbo].[board_project_recent_visits] DROP CONSTRAINT [fk_rails_fb6fc419cb]
GO
ALTER TABLE [dbo].[board_project_recent_visits] DROP CONSTRAINT [fk_rails_b315dd0c80]
GO
ALTER TABLE [dbo].[board_project_recent_visits] DROP CONSTRAINT [fk_rails_98f8843922]
GO
ALTER TABLE [dbo].[board_labels] DROP CONSTRAINT [fk_rails_9374a16edd]
GO
ALTER TABLE [dbo].[board_labels] DROP CONSTRAINT [fk_rails_362b0600a3]
GO
ALTER TABLE [dbo].[board_group_recent_visits] DROP CONSTRAINT [fk_rails_f410736518]
GO
ALTER TABLE [dbo].[board_group_recent_visits] DROP CONSTRAINT [fk_rails_ca04c38720]
GO
ALTER TABLE [dbo].[board_group_recent_visits] DROP CONSTRAINT [fk_rails_64bfc19bc5]
GO
ALTER TABLE [dbo].[board_assignees] DROP CONSTRAINT [fk_rails_3f6f926bd5]
GO
ALTER TABLE [dbo].[board_assignees] DROP CONSTRAINT [fk_rails_1c0ff59e82]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [fk_rails_9df4a56538]
GO
ALTER TABLE [dbo].[badges] DROP CONSTRAINT [fk_rails_5a7c055bdc]
GO
ALTER TABLE [dbo].[aws_roles] DROP CONSTRAINT [fk_rails_4ed56f4720]
GO
ALTER TABLE [dbo].[approver_groups] DROP CONSTRAINT [fk_rails_1cdcbd7723]
GO
ALTER TABLE [dbo].[approvals] DROP CONSTRAINT [fk_310d714958]
GO
ALTER TABLE [dbo].[approval_project_rules_users] DROP CONSTRAINT [fk_rails_f365da8250]
GO
ALTER TABLE [dbo].[approval_project_rules_users] DROP CONSTRAINT [fk_rails_b9e9394efb]
GO
ALTER TABLE [dbo].[approval_project_rules_protected_branches] DROP CONSTRAINT [fk_rails_65203aa786]
GO
ALTER TABLE [dbo].[approval_project_rules_groups] DROP CONSTRAINT [fk_rails_9071e863d1]
GO
ALTER TABLE [dbo].[approval_project_rules_groups] DROP CONSTRAINT [fk_rails_396841e79e]
GO
ALTER TABLE [dbo].[approval_project_rules] DROP CONSTRAINT [fk_rails_5fb4dd100b]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_users] DROP CONSTRAINT [fk_rails_bc8972fa55]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_users] DROP CONSTRAINT [fk_rails_80e6801803]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_groups] DROP CONSTRAINT [fk_rails_5b2ecf6139]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_groups] DROP CONSTRAINT [fk_rails_2020a7124a]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_approved_approvers] DROP CONSTRAINT [fk_rails_8dc94cff4d]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_approved_approvers] DROP CONSTRAINT [fk_rails_6577725edb]
GO
ALTER TABLE [dbo].[approval_merge_request_rules] DROP CONSTRAINT [fk_rails_004ce82224]
GO
ALTER TABLE [dbo].[approval_merge_request_rule_sources] DROP CONSTRAINT [fk_rails_e605a04f76]
GO
ALTER TABLE [dbo].[approval_merge_request_rule_sources] DROP CONSTRAINT [fk_rails_64e8ed3c7e]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [fk_ec757bd087]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [fk_e8a145f3a7]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [fk_964370041d]
GO
ALTER TABLE [dbo].[allowed_email_domains] DROP CONSTRAINT [fk_rails_8b5da859f9]
GO
ALTER TABLE [dbo].[alerts_service_data] DROP CONSTRAINT [fk_rails_b93215a42c]
GO
ALTER TABLE [dbo].[zoom_meetings] DROP CONSTRAINT [DF__zoom_meet__issue__7874C3FF]
GO
ALTER TABLE [dbo].[x509_commit_signatures] DROP CONSTRAINT [DF__x509_comm__verif__6FDF7DFE]
GO
ALTER TABLE [dbo].[x509_certificates] DROP CONSTRAINT [DF__x509_cert__certi__6D031153]
GO
ALTER TABLE [dbo].[wiki_page_slugs] DROP CONSTRAINT [DF__wiki_page__canon__6A26A4A8]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__job_e__61915EA7]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__repos__609D3A6E]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__confi__5FA91635]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__pipel__5EB4F1FC]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__wiki___5DC0CDC3]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__enabl__5CCCA98A]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__note___5BD88551]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__tag_p__5AE46118]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__merge__59F03CDF]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__issue__58FC18A6]
GO
ALTER TABLE [dbo].[web_hooks] DROP CONSTRAINT [DF__web_hooks__push___5807F46D]
GO
ALTER TABLE [dbo].[vulnerability_issue_links] DROP CONSTRAINT [DF__vulnerabi__link___4218B34E]
GO
ALTER TABLE [dbo].[vulnerability_exports] DROP CONSTRAINT [DF__vulnerabi__forma__379B24DB]
GO
ALTER TABLE [dbo].[vulnerabilities] DROP CONSTRAINT [DF__vulnerabi__confi__34BEB830]
GO
ALTER TABLE [dbo].[vulnerabilities] DROP CONSTRAINT [DF__vulnerabi__sever__33CA93F7]
GO
ALTER TABLE [dbo].[vulnerabilities] DROP CONSTRAINT [DF__vulnerabi__state__32D66FBE]
GO
ALTER TABLE [dbo].[users_statistics] DROP CONSTRAINT [DF__users_sta__block__2FFA0313]
GO
ALTER TABLE [dbo].[users_statistics] DROP CONSTRAINT [DF__users_stat__bots__2F05DEDA]
GO
ALTER TABLE [dbo].[users_statistics] DROP CONSTRAINT [DF__users_sta__with___2E11BAA1]
GO
ALTER TABLE [dbo].[users_statistics] DROP CONSTRAINT [DF__users_sta__with___2D1D9668]
GO
ALTER TABLE [dbo].[users_statistics] DROP CONSTRAINT [DF__users_sta__with___2C29722F]
GO
ALTER TABLE [dbo].[users_statistics] DROP CONSTRAINT [DF__users_sta__with___2B354DF6]
GO
ALTER TABLE [dbo].[users_statistics] DROP CONSTRAINT [DF__users_sta__with___2A4129BD]
GO
ALTER TABLE [dbo].[users_statistics] DROP CONSTRAINT [DF__users_sta__witho__294D0584]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__private_p__73E5190C]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__two_facto__72F0F4D3]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__require_t__71FCD09A]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__auditor__7108AC61]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__external__70148828]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__hide_proj__6F2063EF]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__layout__6E2C3FB6]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__project_v__6D381B7D]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__dashboard__6C43F744]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__otp_requi__6B4FD30B]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__password___6A5BAED2]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__hide_no_p__69678A99]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__hide_no_s__68736660]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__color_sch__677F4227]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__can_creat__668B1DEE]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__can_creat__6596F9B5]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__failed_at__64A2D57C]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__admin__63AEB143]
GO
ALTER TABLE [dbo].[users] DROP CONSTRAINT [DF__users__sign_in_c__62BA8D0A]
GO
ALTER TABLE [dbo].[user_synced_attributes_metadata] DROP CONSTRAINT [DF__user_sync__locat__5FDE205F]
GO
ALTER TABLE [dbo].[user_synced_attributes_metadata] DROP CONSTRAINT [DF__user_sync__email__5EE9FC26]
GO
ALTER TABLE [dbo].[user_synced_attributes_metadata] DROP CONSTRAINT [DF__user_sync__name___5DF5D7ED]
GO
ALTER TABLE [dbo].[user_preferences] DROP CONSTRAINT [DF__user_pref__show___593122D0]
GO
ALTER TABLE [dbo].[user_preferences] DROP CONSTRAINT [DF__user_pref__epic___583CFE97]
GO
ALTER TABLE [dbo].[user_preferences] DROP CONSTRAINT [DF__user_pref__merge__5748DA5E]
GO
ALTER TABLE [dbo].[user_preferences] DROP CONSTRAINT [DF__user_pref__issue__5654B625]
GO
ALTER TABLE [dbo].[user_details] DROP CONSTRAINT [DF__user_deta__job_t__509BDCCF]
GO
ALTER TABLE [dbo].[user_agent_details] DROP CONSTRAINT [DF__user_agen__submi__34F3C25A]
GO
ALTER TABLE [dbo].[term_agreements] DROP CONSTRAINT [DF__term_agre__accep__157B1701]
GO
ALTER TABLE [dbo].[tags] DROP CONSTRAINT [DF__tags__taggings_c__0ECE1972]
GO
ALTER TABLE [dbo].[suggestions] DROP CONSTRAINT [DF__suggestio__outda__7CAF6937]
GO
ALTER TABLE [dbo].[suggestions] DROP CONSTRAINT [DF__suggestio__lines__7BBB44FE]
GO
ALTER TABLE [dbo].[suggestions] DROP CONSTRAINT [DF__suggestio__lines__7AC720C5]
GO
ALTER TABLE [dbo].[suggestions] DROP CONSTRAINT [DF__suggestio__appli__79D2FC8C]
GO
ALTER TABLE [dbo].[status_page_settings] DROP CONSTRAINT [DF__status_pa__enabl__713DB68B]
GO
ALTER TABLE [dbo].[spam_logs] DROP CONSTRAINT [DF__spam_logs__recap__6E6149E0]
GO
ALTER TABLE [dbo].[spam_logs] DROP CONSTRAINT [DF__spam_logs__submi__6D6D25A7]
GO
ALTER TABLE [dbo].[software_license_policies] DROP CONSTRAINT [DF__software___class__64D7DFA6]
GO
ALTER TABLE [dbo].[snippets] DROP CONSTRAINT [DF__snippets__secret__61FB72FB]
GO
ALTER TABLE [dbo].[snippets] DROP CONSTRAINT [DF__snippets__visibi__61074EC2]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__instan__361CF0BD]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__templa__3528CC84]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__commen__3434A84B]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__deploy__33408412]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__confid__324C5FD9]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__job_ev__31583BA0]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__commit__30641767]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__confid__2F6FF32E]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__pipeli__2E7BCEF5]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__wiki_p__2D87AABC]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__defaul__2C938683]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__note_e__2B9F624A]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__tag_pu__2AAB3E11]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__merge___29B719D8]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__issues__28C2F59F]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__push_e__27CED166]
GO
ALTER TABLE [dbo].[services] DROP CONSTRAINT [DF__services__active__26DAAD2D]
GO
ALTER TABLE [dbo].[scim_identities] DROP CONSTRAINT [DF__scim_iden__activ__0F03239C]
GO
ALTER TABLE [dbo].[saml_providers] DROP CONSTRAINT [DF__saml_prov__prohi__0B3292B8]
GO
ALTER TABLE [dbo].[saml_providers] DROP CONSTRAINT [DF__saml_prov__enfor__0A3E6E7F]
GO
ALTER TABLE [dbo].[saml_providers] DROP CONSTRAINT [DF__saml_prov__enfor__094A4A46]
GO
ALTER TABLE [dbo].[requirements] DROP CONSTRAINT [DF__requireme__state__7172C0B5]
GO
ALTER TABLE [dbo].[remote_mirrors] DROP CONSTRAINT [DF__remote_mi__only___6DA22FD1]
GO
ALTER TABLE [dbo].[remote_mirrors] DROP CONSTRAINT [DF__remote_mi__enabl__6CAE0B98]
GO
ALTER TABLE [dbo].[push_rules] DROP CONSTRAINT [DF__push_rule__regex__5105F123]
GO
ALTER TABLE [dbo].[push_rules] DROP CONSTRAINT [DF__push_rule__preve__5011CCEA]
GO
ALTER TABLE [dbo].[push_rules] DROP CONSTRAINT [DF__push_rule__max_f__4F1DA8B1]
GO
ALTER TABLE [dbo].[push_rules] DROP CONSTRAINT [DF__push_rule__is_sa__4E298478]
GO
ALTER TABLE [dbo].[push_rules] DROP CONSTRAINT [DF__push_rule__membe__4D35603F]
GO
ALTER TABLE [dbo].[protected_tag_create_access_levels] DROP CONSTRAINT [DF__protected__acces__43ABF605]
GO
ALTER TABLE [dbo].[protected_environment_deploy_access_levels] DROP CONSTRAINT [DF__protected__acces__3B16B004]
GO
ALTER TABLE [dbo].[protected_branches] DROP CONSTRAINT [DF__protected__code___383A4359]
GO
ALTER TABLE [dbo].[protected_branch_unprotect_access_levels] DROP CONSTRAINT [DF__protected__acces__355DD6AE]
GO
ALTER TABLE [dbo].[protected_branch_push_access_levels] DROP CONSTRAINT [DF__protected__acces__32816A03]
GO
ALTER TABLE [dbo].[protected_branch_merge_access_levels] DROP CONSTRAINT [DF__protected__acces__2FA4FD58]
GO
ALTER TABLE [dbo].[prometheus_metrics] DROP CONSTRAINT [DF__prometheu__commo__28F7FFC9]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__pages___7484378A]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__servic__73901351]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__auto_c__729BEF18]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__printi__71A7CADF]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__reques__70B3A6A6]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__only_a__6FBF826D]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__public__6ECB5E34]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__pendin__6DD739FB]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__mirror__6CE315C2]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__build___6BEEF189]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__build___6AFACD50]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__shared__6A06A917]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__mirror__691284DE]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__merge___681E60A5]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__reset___672A3C6C]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__approv__66361833]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__merge___6541F3FA]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__star_c__644DCFC1]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__archiv__6359AB88]
GO
ALTER TABLE [dbo].[projects] DROP CONSTRAINT [DF__projects__visibi__6265874F]
GO
ALTER TABLE [dbo].[project_statistics] DROP CONSTRAINT [DF__project_s__packa__5DA0D232]
GO
ALTER TABLE [dbo].[project_statistics] DROP CONSTRAINT [DF__project_s__share__5CACADF9]
GO
ALTER TABLE [dbo].[project_statistics] DROP CONSTRAINT [DF__project_s__build__5BB889C0]
GO
ALTER TABLE [dbo].[project_statistics] DROP CONSTRAINT [DF__project_s__lfs_o__5AC46587]
GO
ALTER TABLE [dbo].[project_statistics] DROP CONSTRAINT [DF__project_s__repos__59D0414E]
GO
ALTER TABLE [dbo].[project_statistics] DROP CONSTRAINT [DF__project_s__stora__58DC1D15]
GO
ALTER TABLE [dbo].[project_statistics] DROP CONSTRAINT [DF__project_s__commi__57E7F8DC]
GO
ALTER TABLE [dbo].[project_pages_metadata] DROP CONSTRAINT [DF__project_p__deplo__44D52468]
GO
ALTER TABLE [dbo].[project_mirror_data] DROP CONSTRAINT [DF__project_m__retry__3E2826D9]
GO
ALTER TABLE [dbo].[project_incident_management_settings] DROP CONSTRAINT [DF__project_i__send___396371BC]
GO
ALTER TABLE [dbo].[project_incident_management_settings] DROP CONSTRAINT [DF__project_i__creat__386F4D83]
GO
ALTER TABLE [dbo].[project_group_links] DROP CONSTRAINT [DF__project_g__group__33AA9866]
GO
ALTER TABLE [dbo].[project_features] DROP CONSTRAINT [DF__project_f__repos__30CE2BBB]
GO
ALTER TABLE [dbo].[project_features] DROP CONSTRAINT [DF__project_f__snipp__2FDA0782]
GO
ALTER TABLE [dbo].[project_export_jobs] DROP CONSTRAINT [DF__project_e__statu__2B155265]
GO
ALTER TABLE [dbo].[project_error_tracking_settings] DROP CONSTRAINT [DF__project_e__enabl__2838E5BA]
GO
ALTER TABLE [dbo].[project_ci_cd_settings] DROP CONSTRAINT [DF__project_c__group__18027DF1]
GO
ALTER TABLE [dbo].[project_auto_devops] DROP CONSTRAINT [DF__project_a__deplo__15261146]
GO
ALTER TABLE [dbo].[plan_limits] DROP CONSTRAINT [DF__plan_limi__ci_pi__7889D298]
GO
ALTER TABLE [dbo].[plan_limits] DROP CONSTRAINT [DF__plan_limi__ci_pr__7795AE5F]
GO
ALTER TABLE [dbo].[plan_limits] DROP CONSTRAINT [DF__plan_limi__group__76A18A26]
GO
ALTER TABLE [dbo].[plan_limits] DROP CONSTRAINT [DF__plan_limi__proje__75AD65ED]
GO
ALTER TABLE [dbo].[plan_limits] DROP CONSTRAINT [DF__plan_limi__ci_ac__74B941B4]
GO
ALTER TABLE [dbo].[plan_limits] DROP CONSTRAINT [DF__plan_limi__ci_pi__73C51D7B]
GO
ALTER TABLE [dbo].[plan_limits] DROP CONSTRAINT [DF__plan_limi__ci_ac__72D0F942]
GO
ALTER TABLE [dbo].[personal_access_tokens] DROP CONSTRAINT [DF__personal___expir__6C23FBB3]
GO
ALTER TABLE [dbo].[personal_access_tokens] DROP CONSTRAINT [DF__personal___imper__6B2FD77A]
GO
ALTER TABLE [dbo].[personal_access_tokens] DROP CONSTRAINT [DF__personal___revok__6A3BB341]
GO
ALTER TABLE [dbo].[pages_domains] DROP CONSTRAINT [DF__pages_dom__auto___5DD5DC5C]
GO
ALTER TABLE [dbo].[pages_domains] DROP CONSTRAINT [DF__pages_dom__scope__5CE1B823]
GO
ALTER TABLE [dbo].[pages_domains] DROP CONSTRAINT [DF__pages_dom__usage__5BED93EA]
GO
ALTER TABLE [dbo].[pages_domains] DROP CONSTRAINT [DF__pages_dom__wildc__5AF96FB1]
GO
ALTER TABLE [dbo].[pages_domains] DROP CONSTRAINT [DF__pages_dom__certi__5A054B78]
GO
ALTER TABLE [dbo].[pages_domains] DROP CONSTRAINT [DF__pages_dom__auto___5911273F]
GO
ALTER TABLE [dbo].[packages_conan_file_metadata] DROP CONSTRAINT [DF__packages___recip__33DFA290]
GO
ALTER TABLE [dbo].[operations_feature_flags] DROP CONSTRAINT [DF__operation__versi__21C0F255]
GO
ALTER TABLE [dbo].[oauth_applications] DROP CONSTRAINT [DF__oauth_app__confi__0DB9F9A8]
GO
ALTER TABLE [dbo].[oauth_applications] DROP CONSTRAINT [DF__oauth_app__trust__0CC5D56F]
GO
ALTER TABLE [dbo].[notification_settings] DROP CONSTRAINT [DF__notificat__level__7306036C]
GO
ALTER TABLE [dbo].[notes] DROP CONSTRAINT [DF__notes__system__59463169]
GO
ALTER TABLE [dbo].[namespaces] DROP CONSTRAINT [DF__namespace__subgr__3D9E16F4]
GO
ALTER TABLE [dbo].[namespaces] DROP CONSTRAINT [DF__namespace__two_f__3CA9F2BB]
GO
ALTER TABLE [dbo].[namespaces] DROP CONSTRAINT [DF__namespace__requi__3BB5CE82]
GO
ALTER TABLE [dbo].[namespaces] DROP CONSTRAINT [DF__namespace__reque__3AC1AA49]
GO
ALTER TABLE [dbo].[namespaces] DROP CONSTRAINT [DF__namespace__visib__39CD8610]
GO
ALTER TABLE [dbo].[namespaces] DROP CONSTRAINT [DF__namespace__share__38D961D7]
GO
ALTER TABLE [dbo].[namespaces] DROP CONSTRAINT [DF__namespace__membe__37E53D9E]
GO
ALTER TABLE [dbo].[namespace_statistics] DROP CONSTRAINT [DF__namespace__share__3508D0F3]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] DROP CONSTRAINT [DF__namespace__packa__322C6448]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] DROP CONSTRAINT [DF__namespace__stora__3138400F]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] DROP CONSTRAINT [DF__namespace__build__30441BD6]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] DROP CONSTRAINT [DF__namespace__wiki___2F4FF79D]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] DROP CONSTRAINT [DF__namespace__lfs_o__2E5BD364]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] DROP CONSTRAINT [DF__namespace__repos__2D67AF2B]
GO
ALTER TABLE [dbo].[merge_trains] DROP CONSTRAINT [DF__merge_tra__statu__1E256B9B]
GO
ALTER TABLE [dbo].[merge_requests] DROP CONSTRAINT [DF__merge_req__state__770B9E7A]
GO
ALTER TABLE [dbo].[merge_requests] DROP CONSTRAINT [DF__merge_req__squas__76177A41]
GO
ALTER TABLE [dbo].[merge_requests] DROP CONSTRAINT [DF__merge_req__lock___75235608]
GO
ALTER TABLE [dbo].[merge_requests] DROP CONSTRAINT [DF__merge_req__merge__742F31CF]
GO
ALTER TABLE [dbo].[members] DROP CONSTRAINT [DF__members__overrid__53C2623D]
GO
ALTER TABLE [dbo].[members] DROP CONSTRAINT [DF__members__ldap__52CE3E04]
GO
ALTER TABLE [dbo].[lists] DROP CONSTRAINT [DF__lists__max_issue__4FF1D159]
GO
ALTER TABLE [dbo].[lists] DROP CONSTRAINT [DF__lists__max_issue__4EFDAD20]
GO
ALTER TABLE [dbo].[lists] DROP CONSTRAINT [DF__lists__list_type__4E0988E7]
GO
ALTER TABLE [dbo].[labels] DROP CONSTRAINT [DF__labels__template__28D80438]
GO
ALTER TABLE [dbo].[keys] DROP CONSTRAINT [DF__keys__public__12E8C319]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__state_id__049AA3C2]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__lock_ver__03A67F89]
GO
ALTER TABLE [dbo].[issues] DROP CONSTRAINT [DF__issues__confiden__02B25B50]
GO
ALTER TABLE [dbo].[issue_links] DROP CONSTRAINT [DF__issue_lin__link___7A1D154F]
GO
ALTER TABLE [dbo].[group_group_links] DROP CONSTRAINT [DF__group_gro__group__6339AFF7]
GO
ALTER TABLE [dbo].[grafana_integrations] DROP CONSTRAINT [DF__grafana_i__enabl__5303482E]
GO
ALTER TABLE [dbo].[gpg_signatures] DROP CONSTRAINT [DF__gpg_signa__verif__4885B9BB]
GO
ALTER TABLE [dbo].[gitlab_subscriptions] DROP CONSTRAINT [DF__gitlab_su__trial__3296789C]
GO
ALTER TABLE [dbo].[gitlab_subscriptions] DROP CONSTRAINT [DF__gitlab_su__seats__31A25463]
GO
ALTER TABLE [dbo].[gitlab_subscriptions] DROP CONSTRAINT [DF__gitlab_su__max_s__30AE302A]
GO
ALTER TABLE [dbo].[geo_repository_updated_events] DROP CONSTRAINT [DF__geo_repos__remov__2818EA29]
GO
ALTER TABLE [dbo].[geo_repository_updated_events] DROP CONSTRAINT [DF__geo_repos__new_b__2724C5F0]
GO
ALTER TABLE [dbo].[geo_nodes] DROP CONSTRAINT [DF__geo_nodes__sync___150615B5]
GO
ALTER TABLE [dbo].[geo_nodes] DROP CONSTRAINT [DF__geo_nodes__conta__1411F17C]
GO
ALTER TABLE [dbo].[geo_nodes] DROP CONSTRAINT [DF__geo_nodes__minim__131DCD43]
GO
ALTER TABLE [dbo].[geo_nodes] DROP CONSTRAINT [DF__geo_nodes__verif__1229A90A]
GO
ALTER TABLE [dbo].[geo_nodes] DROP CONSTRAINT [DF__geo_nodes__repos__113584D1]
GO
ALTER TABLE [dbo].[geo_nodes] DROP CONSTRAINT [DF__geo_nodes__files__10416098]
GO
ALTER TABLE [dbo].[geo_nodes] DROP CONSTRAINT [DF__geo_nodes__enabl__0F4D3C5F]
GO
ALTER TABLE [dbo].[geo_nodes] DROP CONSTRAINT [DF__geo_nodes__prima__0E591826]
GO
ALTER TABLE [dbo].[epics] DROP CONSTRAINT [DF__epics__state_id__5F9E293D]
GO
ALTER TABLE [dbo].[epics] DROP CONSTRAINT [DF__epics__lock_vers__5EAA0504]
GO
ALTER TABLE [dbo].[draft_notes] DROP CONSTRAINT [DF__draft_not__resol__31D75E8D]
GO
ALTER TABLE [dbo].[design_management_designs_versions] DROP CONSTRAINT [DF__design_ma__event__2759D01A]
GO
ALTER TABLE [dbo].[deploy_tokens] DROP CONSTRAINT [DF__deploy_to__deplo__08D548FA]
GO
ALTER TABLE [dbo].[deploy_tokens] DROP CONSTRAINT [DF__deploy_to__read___07E124C1]
GO
ALTER TABLE [dbo].[deploy_tokens] DROP CONSTRAINT [DF__deploy_to__read___06ED0088]
GO
ALTER TABLE [dbo].[deploy_tokens] DROP CONSTRAINT [DF__deploy_to__revok__05F8DC4F]
GO
ALTER TABLE [dbo].[deploy_keys_projects] DROP CONSTRAINT [DF__deploy_ke__can_p__031C6FA4]
GO
ALTER TABLE [dbo].[dependency_proxy_group_settings] DROP CONSTRAINT [DF__dependenc__enabl__004002F9]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] DROP CONSTRAINT [DF__conversat__perce__77AABCF8]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] DROP CONSTRAINT [DF__conversat__perce__76B698BF]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] DROP CONSTRAINT [DF__conversat__perce__75C27486]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] DROP CONSTRAINT [DF__conversat__perce__74CE504D]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] DROP CONSTRAINT [DF__conversat__perce__73DA2C14]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] DROP CONSTRAINT [DF__conversat__perce__72E607DB]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] DROP CONSTRAINT [DF__conversat__perce__71F1E3A2]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] DROP CONSTRAINT [DF__conversat__perce__70FDBF69]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] DROP CONSTRAINT [DF__conversat__perce__70099B30]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] DROP CONSTRAINT [DF__conversat__perce__6F1576F7]
GO
ALTER TABLE [dbo].[container_expiration_policies] DROP CONSTRAINT [DF__container__enabl__668030F6]
GO
ALTER TABLE [dbo].[container_expiration_policies] DROP CONSTRAINT [DF__container__caden__658C0CBD]
GO
ALTER TABLE [dbo].[clusters_applications_runners] DROP CONSTRAINT [DF__clusters___privi__573DED66]
GO
ALTER TABLE [dbo].[clusters_applications_ingress] DROP CONSTRAINT [DF__clusters___modse__4EA8A765]
GO
ALTER TABLE [dbo].[clusters] DROP CONSTRAINT [DF__clusters__cleanu__442B18F2]
GO
ALTER TABLE [dbo].[clusters] DROP CONSTRAINT [DF__clusters__namesp__4336F4B9]
GO
ALTER TABLE [dbo].[clusters] DROP CONSTRAINT [DF__clusters__manage__4242D080]
GO
ALTER TABLE [dbo].[clusters] DROP CONSTRAINT [DF__clusters__cluste__414EAC47]
GO
ALTER TABLE [dbo].[clusters] DROP CONSTRAINT [DF__clusters__enable__405A880E]
GO
ALTER TABLE [dbo].[cluster_providers_gcp] DROP CONSTRAINT [DF__cluster_p__cloud__3D7E1B63]
GO
ALTER TABLE [dbo].[cluster_providers_gcp] DROP CONSTRAINT [DF__cluster_p__legac__3C89F72A]
GO
ALTER TABLE [dbo].[cluster_providers_aws] DROP CONSTRAINT [DF__cluster_p__subne__39AD8A7F]
GO
ALTER TABLE [dbo].[ci_variables] DROP CONSTRAINT [DF__ci_variab__varia__2D47B39A]
GO
ALTER TABLE [dbo].[ci_variables] DROP CONSTRAINT [DF__ci_variab__maske__2C538F61]
GO
ALTER TABLE [dbo].[ci_variables] DROP CONSTRAINT [DF__ci_variab__prote__2B5F6B28]
GO
ALTER TABLE [dbo].[ci_stages] DROP CONSTRAINT [DF__ci_stages__lock___1EF99443]
GO
ALTER TABLE [dbo].[ci_runners] DROP CONSTRAINT [DF__ci_runner__priva__10AB74EC]
GO
ALTER TABLE [dbo].[ci_runners] DROP CONSTRAINT [DF__ci_runner__publi__0FB750B3]
GO
ALTER TABLE [dbo].[ci_runners] DROP CONSTRAINT [DF__ci_runner__acces__0EC32C7A]
GO
ALTER TABLE [dbo].[ci_runners] DROP CONSTRAINT [DF__ci_runner__locke__0DCF0841]
GO
ALTER TABLE [dbo].[ci_runners] DROP CONSTRAINT [DF__ci_runner__run_u__0CDAE408]
GO
ALTER TABLE [dbo].[ci_runners] DROP CONSTRAINT [DF__ci_runner__is_sh__0BE6BFCF]
GO
ALTER TABLE [dbo].[ci_runners] DROP CONSTRAINT [DF__ci_runner__activ__0AF29B96]
GO
ALTER TABLE [dbo].[ci_refs] DROP CONSTRAINT [DF__ci_refs__tag__00750D23]
GO
ALTER TABLE [dbo].[ci_refs] DROP CONSTRAINT [DF__ci_refs__lock_ve__7F80E8EA]
GO
ALTER TABLE [dbo].[ci_pipelines] DROP CONSTRAINT [DF__ci_pipeli__lock___63D8CE75]
GO
ALTER TABLE [dbo].[ci_pipelines] DROP CONSTRAINT [DF__ci_pipeline__tag__62E4AA3C]
GO
ALTER TABLE [dbo].[ci_pipeline_variables] DROP CONSTRAINT [DF__ci_pipeli__varia__5C37ACAD]
GO
ALTER TABLE [dbo].[ci_pipeline_schedules] DROP CONSTRAINT [DF__ci_pipeli__activ__595B4002]
GO
ALTER TABLE [dbo].[ci_pipeline_schedule_variables] DROP CONSTRAINT [DF__ci_pipeli__varia__52AE4273]
GO
ALTER TABLE [dbo].[ci_job_variables] DROP CONSTRAINT [DF__ci_job_va__sourc__4A18FC72]
GO
ALTER TABLE [dbo].[ci_job_variables] DROP CONSTRAINT [DF__ci_job_va__varia__4924D839]
GO
ALTER TABLE [dbo].[ci_group_variables] DROP CONSTRAINT [DF__ci_group___varia__408F9238]
GO
ALTER TABLE [dbo].[ci_group_variables] DROP CONSTRAINT [DF__ci_group___maske__3F9B6DFF]
GO
ALTER TABLE [dbo].[ci_group_variables] DROP CONSTRAINT [DF__ci_group___prote__3EA749C6]
GO
ALTER TABLE [dbo].[ci_builds_metadata] DROP CONSTRAINT [DF__ci_builds__timeo__3429BB53]
GO
ALTER TABLE [dbo].[ci_builds] DROP CONSTRAINT [DF__ci_builds__lock___0B27A5C0]
GO
ALTER TABLE [dbo].[ci_builds] DROP CONSTRAINT [DF__ci_builds__allow__0A338187]
GO
ALTER TABLE [dbo].[ci_build_needs] DROP CONSTRAINT [DF__ci_build___artif__7AF13DF7]
GO
ALTER TABLE [dbo].[broadcast_messages] DROP CONSTRAINT [DF__broadcast__broad__7073AF84]
GO
ALTER TABLE [dbo].[approval_project_rules] DROP CONSTRAINT [DF__approval___rule___3DE82FB7]
GO
ALTER TABLE [dbo].[approval_project_rules] DROP CONSTRAINT [DF__approval___appro__3CF40B7E]
GO
ALTER TABLE [dbo].[approval_merge_request_rules] DROP CONSTRAINT [DF__approval___rule___2CBDA3B5]
GO
ALTER TABLE [dbo].[approval_merge_request_rules] DROP CONSTRAINT [DF__approval___code___2BC97F7C]
GO
ALTER TABLE [dbo].[approval_merge_request_rules] DROP CONSTRAINT [DF__approval___appro__2AD55B43]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__names__2610A626]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__npm_p__251C81ED]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__email__24285DB4]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__preve__2334397B]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__preve__22401542]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__disab__214BF109]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__elast__2057CCD0]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__elast__1F63A897]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__elast__1E6F845E]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__updat__1D7B6025]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__force__1C873BEC]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__minim__1B9317B3]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__snipp__1A9EF37A]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__sourc__19AACF41]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__sourc__18B6AB08]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__eks_i__17C286CF]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__delet__16CE6296]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__push___15DA3E5D]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__push___14E61A24]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__13F1F5EB]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__12FDD1B2]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__1209AD79]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__prote__11158940]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__10216507]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__0F2D40CE]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__0E391C95]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__asset__0D44F85C]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__allow__0C50D423]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__allow__0B5CAFEA]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__raw_b__0A688BB1]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__outbo__09746778]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__login__0880433F]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__time___078C1F06]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__lock___0697FACD]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__grafa__05A3D694]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__defau__04AFB25B]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__dns_r__03BB8E22]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__elast__02C769E9]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__elast__01D345B0]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__lets___00DF2177]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__defau__7FEAFD3E]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__elast__7EF6D905]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__first__7E02B4CC]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__local__7D0E9093]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__prote__7C1A6C5A]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__diff___7B264821]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__user___7A3223E8]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__web_i__793DFFAF]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__insta__7849DB76]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__snowp__7755B73D]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__hide___76619304]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__pseud__756D6ECB]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__enfor__74794A92]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__exter__73852659]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__pages__72910220]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__exter__719CDDE7]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__passw__70A8B9AE]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__mirro__6FB49575]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__gital__6EC0713C]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__gital__6DCC4D03]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__gital__6CD828CA]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__6BE40491]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__6AEFE058]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__69FBBC1F]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__690797E6]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__681373AD]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__671F4F74]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__662B2B3B]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__65370702]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__throt__6442E2C9]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__auto___634EBE90]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__proje__625A9A57]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__hashe__6166761E]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__allow__607251E5]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__slack__5F7E2DAC]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__help___5E8A0973]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__autho__5D95E53A]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__prome__5CA1C101]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__mirro__5BAD9CC8]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__mirro__5AB9788F]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__mirro__59C55456]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__check__58D1301D]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__polli__57DD0BE4]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__geo_s__56E8E7AB]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__elast__55F4C372]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__uniqu__55009F39]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__termi__540C7B00]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__repos__531856C7]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__share__5224328E]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__html___51300E55]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__house__503BEA1C]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__house__4F47C5E3]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__house__4E53A1AA]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__house__4D5F7D71]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__house__4C6B5938]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__ed255__4B7734FF]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__ecdsa__4A8310C6]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__dsa_k__498EEC8D]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__rsa_k__489AC854]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__usage__47A6A41B]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__domai__46B27FE2]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__elast__45BE5BA9]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__elast__44CA3770]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__user___43D61337]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__conta__42E1EEFE]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__send___41EDCAC5]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__metri__40F9A68C]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__repos__40058253]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__email__3F115E1A]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__metri__3E1D39E1]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__akism__3D2915A8]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__metri__3C34F16F]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__recap__3B40CD36]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__metri__3A4CA8FD]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__metri__395884C4]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__metri__3864608B]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__metri__37703C52]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__two_f__367C1819]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__requi__3587F3E0]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__max_p__3493CFA7]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__max_a__339FAB6E]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__share__32AB8735]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__sessi__31B762FC]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__user___30C33EC3]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__defau__2FCF1A8A]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__defau__2EDAF651]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__max_a__2DE6D218]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__versi__2CF2ADDF]
GO
ALTER TABLE [dbo].[application_settings] DROP CONSTRAINT [DF__applicati__defau__2BFE89A6]
GO
ALTER TABLE [dbo].[appearances] DROP CONSTRAINT [DF__appearanc__email__2739D489]
GO
ALTER TABLE [dbo].[analytics_language_trend_repository_languages] DROP CONSTRAINT [DF__analytics__perce__25518C17]
GO
ALTER TABLE [dbo].[analytics_language_trend_repository_languages] DROP CONSTRAINT [DF__analytics__bytes__245D67DE]
GO
ALTER TABLE [dbo].[analytics_language_trend_repository_languages] DROP CONSTRAINT [DF__analytics_l__loc__236943A5]
GO
ALTER TABLE [dbo].[analytics_language_trend_repository_languages] DROP CONSTRAINT [DF__analytics__file___22751F6C]
GO
ALTER TABLE [dbo].[analytics_cycle_analytics_project_stages] DROP CONSTRAINT [DF__analytics__custo__1F98B2C1]
GO
ALTER TABLE [dbo].[analytics_cycle_analytics_project_stages] DROP CONSTRAINT [DF__analytics__hidde__1EA48E88]
GO
ALTER TABLE [dbo].[analytics_cycle_analytics_group_stages] DROP CONSTRAINT [DF__analytics__custo__1BC821DD]
GO
ALTER TABLE [dbo].[analytics_cycle_analytics_group_stages] DROP CONSTRAINT [DF__analytics__hidde__1AD3FDA4]
GO
/****** Object:  Table [dbo].[zoom_meetings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[zoom_meetings]') AND type in (N'U'))
DROP TABLE [dbo].[zoom_meetings]
GO
/****** Object:  Table [dbo].[x509_issuers]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[x509_issuers]') AND type in (N'U'))
DROP TABLE [dbo].[x509_issuers]
GO
/****** Object:  Table [dbo].[x509_commit_signatures]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[x509_commit_signatures]') AND type in (N'U'))
DROP TABLE [dbo].[x509_commit_signatures]
GO
/****** Object:  Table [dbo].[x509_certificates]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[x509_certificates]') AND type in (N'U'))
DROP TABLE [dbo].[x509_certificates]
GO
/****** Object:  Table [dbo].[wiki_page_slugs]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wiki_page_slugs]') AND type in (N'U'))
DROP TABLE [dbo].[wiki_page_slugs]
GO
/****** Object:  Table [dbo].[wiki_page_meta]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[wiki_page_meta]') AND type in (N'U'))
DROP TABLE [dbo].[wiki_page_meta]
GO
/****** Object:  Table [dbo].[web_hooks]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_hooks]') AND type in (N'U'))
DROP TABLE [dbo].[web_hooks]
GO
/****** Object:  Table [dbo].[web_hook_logs]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[web_hook_logs]') AND type in (N'U'))
DROP TABLE [dbo].[web_hook_logs]
GO
/****** Object:  Table [dbo].[vulnerability_user_mentions]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vulnerability_user_mentions]') AND type in (N'U'))
DROP TABLE [dbo].[vulnerability_user_mentions]
GO
/****** Object:  Table [dbo].[vulnerability_scanners]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vulnerability_scanners]') AND type in (N'U'))
DROP TABLE [dbo].[vulnerability_scanners]
GO
/****** Object:  Table [dbo].[vulnerability_occurrences]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vulnerability_occurrences]') AND type in (N'U'))
DROP TABLE [dbo].[vulnerability_occurrences]
GO
/****** Object:  Table [dbo].[vulnerability_occurrence_pipelines]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vulnerability_occurrence_pipelines]') AND type in (N'U'))
DROP TABLE [dbo].[vulnerability_occurrence_pipelines]
GO
/****** Object:  Table [dbo].[vulnerability_occurrence_identifiers]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vulnerability_occurrence_identifiers]') AND type in (N'U'))
DROP TABLE [dbo].[vulnerability_occurrence_identifiers]
GO
/****** Object:  Table [dbo].[vulnerability_issue_links]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vulnerability_issue_links]') AND type in (N'U'))
DROP TABLE [dbo].[vulnerability_issue_links]
GO
/****** Object:  Table [dbo].[vulnerability_identifiers]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vulnerability_identifiers]') AND type in (N'U'))
DROP TABLE [dbo].[vulnerability_identifiers]
GO
/****** Object:  Table [dbo].[vulnerability_feedback]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vulnerability_feedback]') AND type in (N'U'))
DROP TABLE [dbo].[vulnerability_feedback]
GO
/****** Object:  Table [dbo].[vulnerability_exports]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vulnerability_exports]') AND type in (N'U'))
DROP TABLE [dbo].[vulnerability_exports]
GO
/****** Object:  Table [dbo].[vulnerabilities]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[vulnerabilities]') AND type in (N'U'))
DROP TABLE [dbo].[vulnerabilities]
GO
/****** Object:  Table [dbo].[users_statistics]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users_statistics]') AND type in (N'U'))
DROP TABLE [dbo].[users_statistics]
GO
/****** Object:  Table [dbo].[users_star_projects]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users_star_projects]') AND type in (N'U'))
DROP TABLE [dbo].[users_star_projects]
GO
/****** Object:  Table [dbo].[users_security_dashboard_projects]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users_security_dashboard_projects]') AND type in (N'U'))
DROP TABLE [dbo].[users_security_dashboard_projects]
GO
/****** Object:  Table [dbo].[users_ops_dashboard_projects]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users_ops_dashboard_projects]') AND type in (N'U'))
DROP TABLE [dbo].[users_ops_dashboard_projects]
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[users]') AND type in (N'U'))
DROP TABLE [dbo].[users]
GO
/****** Object:  Table [dbo].[user_synced_attributes_metadata]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_synced_attributes_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[user_synced_attributes_metadata]
GO
/****** Object:  Table [dbo].[user_statuses]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_statuses]') AND type in (N'U'))
DROP TABLE [dbo].[user_statuses]
GO
/****** Object:  Table [dbo].[user_preferences]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_preferences]') AND type in (N'U'))
DROP TABLE [dbo].[user_preferences]
GO
/****** Object:  Table [dbo].[user_interacted_projects]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_interacted_projects]') AND type in (N'U'))
DROP TABLE [dbo].[user_interacted_projects]
GO
/****** Object:  Table [dbo].[user_highest_roles]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_highest_roles]') AND type in (N'U'))
DROP TABLE [dbo].[user_highest_roles]
GO
/****** Object:  Table [dbo].[user_details]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_details]') AND type in (N'U'))
DROP TABLE [dbo].[user_details]
GO
/****** Object:  Table [dbo].[user_custom_attributes]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_custom_attributes]') AND type in (N'U'))
DROP TABLE [dbo].[user_custom_attributes]
GO
/****** Object:  Table [dbo].[user_canonical_emails]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_canonical_emails]') AND type in (N'U'))
DROP TABLE [dbo].[user_canonical_emails]
GO
/****** Object:  Table [dbo].[user_callouts]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_callouts]') AND type in (N'U'))
DROP TABLE [dbo].[user_callouts]
GO
/****** Object:  Table [dbo].[user_agent_details]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[user_agent_details]') AND type in (N'U'))
DROP TABLE [dbo].[user_agent_details]
GO
/****** Object:  Table [dbo].[uploads]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uploads]') AND type in (N'U'))
DROP TABLE [dbo].[uploads]
GO
/****** Object:  Table [dbo].[u2f_registrations]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[u2f_registrations]') AND type in (N'U'))
DROP TABLE [dbo].[u2f_registrations]
GO
/****** Object:  Table [dbo].[trending_projects]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[trending_projects]') AND type in (N'U'))
DROP TABLE [dbo].[trending_projects]
GO
/****** Object:  Table [dbo].[todos]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[todos]') AND type in (N'U'))
DROP TABLE [dbo].[todos]
GO
/****** Object:  Table [dbo].[timelogs]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[timelogs]') AND type in (N'U'))
DROP TABLE [dbo].[timelogs]
GO
/****** Object:  Table [dbo].[term_agreements]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[term_agreements]') AND type in (N'U'))
DROP TABLE [dbo].[term_agreements]
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tags]') AND type in (N'U'))
DROP TABLE [dbo].[tags]
GO
/****** Object:  Table [dbo].[taggings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[taggings]') AND type in (N'U'))
DROP TABLE [dbo].[taggings]
GO
/****** Object:  Table [dbo].[system_note_metadata]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[system_note_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[system_note_metadata]
GO
/****** Object:  Table [dbo].[suggestions]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[suggestions]') AND type in (N'U'))
DROP TABLE [dbo].[suggestions]
GO
/****** Object:  Table [dbo].[subscriptions]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[subscriptions]') AND type in (N'U'))
DROP TABLE [dbo].[subscriptions]
GO
/****** Object:  Table [dbo].[status_page_settings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[status_page_settings]') AND type in (N'U'))
DROP TABLE [dbo].[status_page_settings]
GO
/****** Object:  Table [dbo].[spam_logs]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spam_logs]') AND type in (N'U'))
DROP TABLE [dbo].[spam_logs]
GO
/****** Object:  Table [dbo].[software_licenses]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[software_licenses]') AND type in (N'U'))
DROP TABLE [dbo].[software_licenses]
GO
/****** Object:  Table [dbo].[software_license_policies]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[software_license_policies]') AND type in (N'U'))
DROP TABLE [dbo].[software_license_policies]
GO
/****** Object:  Table [dbo].[snippets]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[snippets]') AND type in (N'U'))
DROP TABLE [dbo].[snippets]
GO
/****** Object:  Table [dbo].[snippet_user_mentions]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[snippet_user_mentions]') AND type in (N'U'))
DROP TABLE [dbo].[snippet_user_mentions]
GO
/****** Object:  Table [dbo].[snippet_repositories]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[snippet_repositories]') AND type in (N'U'))
DROP TABLE [dbo].[snippet_repositories]
GO
/****** Object:  Table [dbo].[smartcard_identities]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[smartcard_identities]') AND type in (N'U'))
DROP TABLE [dbo].[smartcard_identities]
GO
/****** Object:  Table [dbo].[slack_integrations]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[slack_integrations]') AND type in (N'U'))
DROP TABLE [dbo].[slack_integrations]
GO
/****** Object:  Table [dbo].[shards]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[shards]') AND type in (N'U'))
DROP TABLE [dbo].[shards]
GO
/****** Object:  Table [dbo].[services]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[services]') AND type in (N'U'))
DROP TABLE [dbo].[services]
GO
/****** Object:  Table [dbo].[service_desk_settings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[service_desk_settings]') AND type in (N'U'))
DROP TABLE [dbo].[service_desk_settings]
GO
/****** Object:  Table [dbo].[serverless_domain_cluster]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[serverless_domain_cluster]') AND type in (N'U'))
DROP TABLE [dbo].[serverless_domain_cluster]
GO
/****** Object:  Table [dbo].[sentry_issues]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sentry_issues]') AND type in (N'U'))
DROP TABLE [dbo].[sentry_issues]
GO
/****** Object:  Table [dbo].[sent_notifications]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[sent_notifications]') AND type in (N'U'))
DROP TABLE [dbo].[sent_notifications]
GO
/****** Object:  Table [dbo].[self_managed_prometheus_alert_events]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[self_managed_prometheus_alert_events]') AND type in (N'U'))
DROP TABLE [dbo].[self_managed_prometheus_alert_events]
GO
/****** Object:  Table [dbo].[security_scans]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[security_scans]') AND type in (N'U'))
DROP TABLE [dbo].[security_scans]
GO
/****** Object:  Table [dbo].[scim_oauth_access_tokens]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scim_oauth_access_tokens]') AND type in (N'U'))
DROP TABLE [dbo].[scim_oauth_access_tokens]
GO
/****** Object:  Table [dbo].[scim_identities]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[scim_identities]') AND type in (N'U'))
DROP TABLE [dbo].[scim_identities]
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[schema_migrations]') AND type in (N'U'))
DROP TABLE [dbo].[schema_migrations]
GO
/****** Object:  Table [dbo].[saml_providers]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[saml_providers]') AND type in (N'U'))
DROP TABLE [dbo].[saml_providers]
GO
/****** Object:  Table [dbo].[routes]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[routes]') AND type in (N'U'))
DROP TABLE [dbo].[routes]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[reviews]') AND type in (N'U'))
DROP TABLE [dbo].[reviews]
GO
/****** Object:  Table [dbo].[resource_weight_events]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[resource_weight_events]') AND type in (N'U'))
DROP TABLE [dbo].[resource_weight_events]
GO
/****** Object:  Table [dbo].[resource_milestone_events]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[resource_milestone_events]') AND type in (N'U'))
DROP TABLE [dbo].[resource_milestone_events]
GO
/****** Object:  Table [dbo].[resource_label_events]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[resource_label_events]') AND type in (N'U'))
DROP TABLE [dbo].[resource_label_events]
GO
/****** Object:  Table [dbo].[requirements]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[requirements]') AND type in (N'U'))
DROP TABLE [dbo].[requirements]
GO
/****** Object:  Table [dbo].[repository_languages]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[repository_languages]') AND type in (N'U'))
DROP TABLE [dbo].[repository_languages]
GO
/****** Object:  Table [dbo].[remote_mirrors]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[remote_mirrors]') AND type in (N'U'))
DROP TABLE [dbo].[remote_mirrors]
GO
/****** Object:  Table [dbo].[releases]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[releases]') AND type in (N'U'))
DROP TABLE [dbo].[releases]
GO
/****** Object:  Table [dbo].[release_links]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[release_links]') AND type in (N'U'))
DROP TABLE [dbo].[release_links]
GO
/****** Object:  Table [dbo].[redirect_routes]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[redirect_routes]') AND type in (N'U'))
DROP TABLE [dbo].[redirect_routes]
GO
/****** Object:  Table [dbo].[push_rules]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[push_rules]') AND type in (N'U'))
DROP TABLE [dbo].[push_rules]
GO
/****** Object:  Table [dbo].[push_event_payloads]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[push_event_payloads]') AND type in (N'U'))
DROP TABLE [dbo].[push_event_payloads]
GO
/****** Object:  Table [dbo].[protected_tags]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[protected_tags]') AND type in (N'U'))
DROP TABLE [dbo].[protected_tags]
GO
/****** Object:  Table [dbo].[protected_tag_create_access_levels]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[protected_tag_create_access_levels]') AND type in (N'U'))
DROP TABLE [dbo].[protected_tag_create_access_levels]
GO
/****** Object:  Table [dbo].[protected_environments]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[protected_environments]') AND type in (N'U'))
DROP TABLE [dbo].[protected_environments]
GO
/****** Object:  Table [dbo].[protected_environment_deploy_access_levels]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[protected_environment_deploy_access_levels]') AND type in (N'U'))
DROP TABLE [dbo].[protected_environment_deploy_access_levels]
GO
/****** Object:  Table [dbo].[protected_branches]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[protected_branches]') AND type in (N'U'))
DROP TABLE [dbo].[protected_branches]
GO
/****** Object:  Table [dbo].[protected_branch_unprotect_access_levels]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[protected_branch_unprotect_access_levels]') AND type in (N'U'))
DROP TABLE [dbo].[protected_branch_unprotect_access_levels]
GO
/****** Object:  Table [dbo].[protected_branch_push_access_levels]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[protected_branch_push_access_levels]') AND type in (N'U'))
DROP TABLE [dbo].[protected_branch_push_access_levels]
GO
/****** Object:  Table [dbo].[protected_branch_merge_access_levels]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[protected_branch_merge_access_levels]') AND type in (N'U'))
DROP TABLE [dbo].[protected_branch_merge_access_levels]
GO
/****** Object:  Table [dbo].[prometheus_metrics]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prometheus_metrics]') AND type in (N'U'))
DROP TABLE [dbo].[prometheus_metrics]
GO
/****** Object:  Table [dbo].[prometheus_alerts]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prometheus_alerts]') AND type in (N'U'))
DROP TABLE [dbo].[prometheus_alerts]
GO
/****** Object:  Table [dbo].[prometheus_alert_events]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[prometheus_alert_events]') AND type in (N'U'))
DROP TABLE [dbo].[prometheus_alert_events]
GO
/****** Object:  Table [dbo].[projects]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[projects]') AND type in (N'U'))
DROP TABLE [dbo].[projects]
GO
/****** Object:  Table [dbo].[project_tracing_settings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_tracing_settings]') AND type in (N'U'))
DROP TABLE [dbo].[project_tracing_settings]
GO
/****** Object:  Table [dbo].[project_statistics]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_statistics]') AND type in (N'U'))
DROP TABLE [dbo].[project_statistics]
GO
/****** Object:  Table [dbo].[project_settings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_settings]') AND type in (N'U'))
DROP TABLE [dbo].[project_settings]
GO
/****** Object:  Table [dbo].[project_repository_states]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_repository_states]') AND type in (N'U'))
DROP TABLE [dbo].[project_repository_states]
GO
/****** Object:  Table [dbo].[project_repositories]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_repositories]') AND type in (N'U'))
DROP TABLE [dbo].[project_repositories]
GO
/****** Object:  Table [dbo].[project_pages_metadata]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_pages_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[project_pages_metadata]
GO
/****** Object:  Table [dbo].[project_mirror_data]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_mirror_data]') AND type in (N'U'))
DROP TABLE [dbo].[project_mirror_data]
GO
/****** Object:  Table [dbo].[project_metrics_settings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_metrics_settings]') AND type in (N'U'))
DROP TABLE [dbo].[project_metrics_settings]
GO
/****** Object:  Table [dbo].[project_incident_management_settings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_incident_management_settings]') AND type in (N'U'))
DROP TABLE [dbo].[project_incident_management_settings]
GO
/****** Object:  Table [dbo].[project_import_data]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_import_data]') AND type in (N'U'))
DROP TABLE [dbo].[project_import_data]
GO
/****** Object:  Table [dbo].[project_group_links]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_group_links]') AND type in (N'U'))
DROP TABLE [dbo].[project_group_links]
GO
/****** Object:  Table [dbo].[project_features]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_features]') AND type in (N'U'))
DROP TABLE [dbo].[project_features]
GO
/****** Object:  Table [dbo].[project_feature_usages]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_feature_usages]') AND type in (N'U'))
DROP TABLE [dbo].[project_feature_usages]
GO
/****** Object:  Table [dbo].[project_export_jobs]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_export_jobs]') AND type in (N'U'))
DROP TABLE [dbo].[project_export_jobs]
GO
/****** Object:  Table [dbo].[project_error_tracking_settings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_error_tracking_settings]') AND type in (N'U'))
DROP TABLE [dbo].[project_error_tracking_settings]
GO
/****** Object:  Table [dbo].[project_deploy_tokens]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_deploy_tokens]') AND type in (N'U'))
DROP TABLE [dbo].[project_deploy_tokens]
GO
/****** Object:  Table [dbo].[project_daily_statistics]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_daily_statistics]') AND type in (N'U'))
DROP TABLE [dbo].[project_daily_statistics]
GO
/****** Object:  Table [dbo].[project_custom_attributes]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_custom_attributes]') AND type in (N'U'))
DROP TABLE [dbo].[project_custom_attributes]
GO
/****** Object:  Table [dbo].[project_ci_cd_settings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_ci_cd_settings]') AND type in (N'U'))
DROP TABLE [dbo].[project_ci_cd_settings]
GO
/****** Object:  Table [dbo].[project_auto_devops]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_auto_devops]') AND type in (N'U'))
DROP TABLE [dbo].[project_auto_devops]
GO
/****** Object:  Table [dbo].[project_authorizations]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_authorizations]') AND type in (N'U'))
DROP TABLE [dbo].[project_authorizations]
GO
/****** Object:  Table [dbo].[project_aliases]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_aliases]') AND type in (N'U'))
DROP TABLE [dbo].[project_aliases]
GO
/****** Object:  Table [dbo].[project_alerting_settings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[project_alerting_settings]') AND type in (N'U'))
DROP TABLE [dbo].[project_alerting_settings]
GO
/****** Object:  Table [dbo].[programming_languages]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[programming_languages]') AND type in (N'U'))
DROP TABLE [dbo].[programming_languages]
GO
/****** Object:  Table [dbo].[pool_repositories]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pool_repositories]') AND type in (N'U'))
DROP TABLE [dbo].[pool_repositories]
GO
/****** Object:  Table [dbo].[plans]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plans]') AND type in (N'U'))
DROP TABLE [dbo].[plans]
GO
/****** Object:  Table [dbo].[plan_limits]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[plan_limits]') AND type in (N'U'))
DROP TABLE [dbo].[plan_limits]
GO
/****** Object:  Table [dbo].[personal_access_tokens]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[personal_access_tokens]') AND type in (N'U'))
DROP TABLE [dbo].[personal_access_tokens]
GO
/****** Object:  Table [dbo].[path_locks]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[path_locks]') AND type in (N'U'))
DROP TABLE [dbo].[path_locks]
GO
/****** Object:  Table [dbo].[pages_domains]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pages_domains]') AND type in (N'U'))
DROP TABLE [dbo].[pages_domains]
GO
/****** Object:  Table [dbo].[pages_domain_acme_orders]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pages_domain_acme_orders]') AND type in (N'U'))
DROP TABLE [dbo].[pages_domain_acme_orders]
GO
/****** Object:  Table [dbo].[packages_tags]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[packages_tags]') AND type in (N'U'))
DROP TABLE [dbo].[packages_tags]
GO
/****** Object:  Table [dbo].[packages_packages]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[packages_packages]') AND type in (N'U'))
DROP TABLE [dbo].[packages_packages]
GO
/****** Object:  Table [dbo].[packages_package_files]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[packages_package_files]') AND type in (N'U'))
DROP TABLE [dbo].[packages_package_files]
GO
/****** Object:  Table [dbo].[packages_maven_metadata]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[packages_maven_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[packages_maven_metadata]
GO
/****** Object:  Table [dbo].[packages_dependency_links]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[packages_dependency_links]') AND type in (N'U'))
DROP TABLE [dbo].[packages_dependency_links]
GO
/****** Object:  Table [dbo].[packages_dependencies]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[packages_dependencies]') AND type in (N'U'))
DROP TABLE [dbo].[packages_dependencies]
GO
/****** Object:  Table [dbo].[packages_conan_metadata]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[packages_conan_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[packages_conan_metadata]
GO
/****** Object:  Table [dbo].[packages_conan_file_metadata]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[packages_conan_file_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[packages_conan_file_metadata]
GO
/****** Object:  Table [dbo].[packages_build_infos]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[packages_build_infos]') AND type in (N'U'))
DROP TABLE [dbo].[packages_build_infos]
GO
/****** Object:  Table [dbo].[operations_strategies]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[operations_strategies]') AND type in (N'U'))
DROP TABLE [dbo].[operations_strategies]
GO
/****** Object:  Table [dbo].[operations_scopes]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[operations_scopes]') AND type in (N'U'))
DROP TABLE [dbo].[operations_scopes]
GO
/****** Object:  Table [dbo].[operations_feature_flags_clients]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[operations_feature_flags_clients]') AND type in (N'U'))
DROP TABLE [dbo].[operations_feature_flags_clients]
GO
/****** Object:  Table [dbo].[operations_feature_flags]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[operations_feature_flags]') AND type in (N'U'))
DROP TABLE [dbo].[operations_feature_flags]
GO
/****** Object:  Table [dbo].[operations_feature_flag_scopes]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[operations_feature_flag_scopes]') AND type in (N'U'))
DROP TABLE [dbo].[operations_feature_flag_scopes]
GO
/****** Object:  Table [dbo].[open_project_tracker_data]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[open_project_tracker_data]') AND type in (N'U'))
DROP TABLE [dbo].[open_project_tracker_data]
GO
/****** Object:  Table [dbo].[oauth_openid_requests]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_openid_requests]') AND type in (N'U'))
DROP TABLE [dbo].[oauth_openid_requests]
GO
/****** Object:  Table [dbo].[oauth_applications]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_applications]') AND type in (N'U'))
DROP TABLE [dbo].[oauth_applications]
GO
/****** Object:  Table [dbo].[oauth_access_tokens]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_access_tokens]') AND type in (N'U'))
DROP TABLE [dbo].[oauth_access_tokens]
GO
/****** Object:  Table [dbo].[oauth_access_grants]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[oauth_access_grants]') AND type in (N'U'))
DROP TABLE [dbo].[oauth_access_grants]
GO
/****** Object:  Table [dbo].[notification_settings]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notification_settings]') AND type in (N'U'))
DROP TABLE [dbo].[notification_settings]
GO
/****** Object:  Table [dbo].[notes]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[notes]') AND type in (N'U'))
DROP TABLE [dbo].[notes]
GO
/****** Object:  Table [dbo].[note_diff_files]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[note_diff_files]') AND type in (N'U'))
DROP TABLE [dbo].[note_diff_files]
GO
/****** Object:  Table [dbo].[namespaces]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[namespaces]') AND type in (N'U'))
DROP TABLE [dbo].[namespaces]
GO
/****** Object:  Table [dbo].[namespace_statistics]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[namespace_statistics]') AND type in (N'U'))
DROP TABLE [dbo].[namespace_statistics]
GO
/****** Object:  Table [dbo].[namespace_root_storage_statistics]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[namespace_root_storage_statistics]') AND type in (N'U'))
DROP TABLE [dbo].[namespace_root_storage_statistics]
GO
/****** Object:  Table [dbo].[namespace_aggregation_schedules]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[namespace_aggregation_schedules]') AND type in (N'U'))
DROP TABLE [dbo].[namespace_aggregation_schedules]
GO
/****** Object:  Table [dbo].[milestones]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[milestones]') AND type in (N'U'))
DROP TABLE [dbo].[milestones]
GO
/****** Object:  Table [dbo].[milestone_releases]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[milestone_releases]') AND type in (N'U'))
DROP TABLE [dbo].[milestone_releases]
GO
/****** Object:  Table [dbo].[merge_trains]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_trains]') AND type in (N'U'))
DROP TABLE [dbo].[merge_trains]
GO
/****** Object:  Table [dbo].[merge_requests_closing_issues]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_requests_closing_issues]') AND type in (N'U'))
DROP TABLE [dbo].[merge_requests_closing_issues]
GO
/****** Object:  Table [dbo].[merge_requests]    Script Date: 2021/9/6 21:07:40 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_requests]') AND type in (N'U'))
DROP TABLE [dbo].[merge_requests]
GO
/****** Object:  Table [dbo].[merge_request_user_mentions]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_request_user_mentions]') AND type in (N'U'))
DROP TABLE [dbo].[merge_request_user_mentions]
GO
/****** Object:  Table [dbo].[merge_request_metrics]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_request_metrics]') AND type in (N'U'))
DROP TABLE [dbo].[merge_request_metrics]
GO
/****** Object:  Table [dbo].[merge_request_diffs]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_request_diffs]') AND type in (N'U'))
DROP TABLE [dbo].[merge_request_diffs]
GO
/****** Object:  Table [dbo].[merge_request_diff_files]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_request_diff_files]') AND type in (N'U'))
DROP TABLE [dbo].[merge_request_diff_files]
GO
/****** Object:  Table [dbo].[merge_request_diff_commits]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_request_diff_commits]') AND type in (N'U'))
DROP TABLE [dbo].[merge_request_diff_commits]
GO
/****** Object:  Table [dbo].[merge_request_context_commits]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_request_context_commits]') AND type in (N'U'))
DROP TABLE [dbo].[merge_request_context_commits]
GO
/****** Object:  Table [dbo].[merge_request_context_commit_diff_files]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_request_context_commit_diff_files]') AND type in (N'U'))
DROP TABLE [dbo].[merge_request_context_commit_diff_files]
GO
/****** Object:  Table [dbo].[merge_request_blocks]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_request_blocks]') AND type in (N'U'))
DROP TABLE [dbo].[merge_request_blocks]
GO
/****** Object:  Table [dbo].[merge_request_assignees]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[merge_request_assignees]') AND type in (N'U'))
DROP TABLE [dbo].[merge_request_assignees]
GO
/****** Object:  Table [dbo].[members]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[members]') AND type in (N'U'))
DROP TABLE [dbo].[members]
GO
/****** Object:  Table [dbo].[lists]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lists]') AND type in (N'U'))
DROP TABLE [dbo].[lists]
GO
/****** Object:  Table [dbo].[list_user_preferences]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[list_user_preferences]') AND type in (N'U'))
DROP TABLE [dbo].[list_user_preferences]
GO
/****** Object:  Table [dbo].[licenses]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[licenses]') AND type in (N'U'))
DROP TABLE [dbo].[licenses]
GO
/****** Object:  Table [dbo].[lfs_objects_projects]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lfs_objects_projects]') AND type in (N'U'))
DROP TABLE [dbo].[lfs_objects_projects]
GO
/****** Object:  Table [dbo].[lfs_objects]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lfs_objects]') AND type in (N'U'))
DROP TABLE [dbo].[lfs_objects]
GO
/****** Object:  Table [dbo].[lfs_file_locks]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[lfs_file_locks]') AND type in (N'U'))
DROP TABLE [dbo].[lfs_file_locks]
GO
/****** Object:  Table [dbo].[ldap_group_links]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ldap_group_links]') AND type in (N'U'))
DROP TABLE [dbo].[ldap_group_links]
GO
/****** Object:  Table [dbo].[labels]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[labels]') AND type in (N'U'))
DROP TABLE [dbo].[labels]
GO
/****** Object:  Table [dbo].[label_priorities]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[label_priorities]') AND type in (N'U'))
DROP TABLE [dbo].[label_priorities]
GO
/****** Object:  Table [dbo].[label_links]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[label_links]') AND type in (N'U'))
DROP TABLE [dbo].[label_links]
GO
/****** Object:  Table [dbo].[keys]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[keys]') AND type in (N'U'))
DROP TABLE [dbo].[keys]
GO
/****** Object:  Table [dbo].[jira_tracker_data]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jira_tracker_data]') AND type in (N'U'))
DROP TABLE [dbo].[jira_tracker_data]
GO
/****** Object:  Table [dbo].[jira_connect_subscriptions]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jira_connect_subscriptions]') AND type in (N'U'))
DROP TABLE [dbo].[jira_connect_subscriptions]
GO
/****** Object:  Table [dbo].[jira_connect_installations]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[jira_connect_installations]') AND type in (N'U'))
DROP TABLE [dbo].[jira_connect_installations]
GO
/****** Object:  Table [dbo].[issues_self_managed_prometheus_alert_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issues_self_managed_prometheus_alert_events]') AND type in (N'U'))
DROP TABLE [dbo].[issues_self_managed_prometheus_alert_events]
GO
/****** Object:  Table [dbo].[issues_prometheus_alert_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issues_prometheus_alert_events]') AND type in (N'U'))
DROP TABLE [dbo].[issues_prometheus_alert_events]
GO
/****** Object:  Table [dbo].[issues]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issues]') AND type in (N'U'))
DROP TABLE [dbo].[issues]
GO
/****** Object:  Table [dbo].[issue_user_mentions]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issue_user_mentions]') AND type in (N'U'))
DROP TABLE [dbo].[issue_user_mentions]
GO
/****** Object:  Table [dbo].[issue_tracker_data]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issue_tracker_data]') AND type in (N'U'))
DROP TABLE [dbo].[issue_tracker_data]
GO
/****** Object:  Table [dbo].[issue_metrics]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issue_metrics]') AND type in (N'U'))
DROP TABLE [dbo].[issue_metrics]
GO
/****** Object:  Table [dbo].[issue_links]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issue_links]') AND type in (N'U'))
DROP TABLE [dbo].[issue_links]
GO
/****** Object:  Table [dbo].[issue_assignees]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[issue_assignees]') AND type in (N'U'))
DROP TABLE [dbo].[issue_assignees]
GO
/****** Object:  Table [dbo].[ip_restrictions]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ip_restrictions]') AND type in (N'U'))
DROP TABLE [dbo].[ip_restrictions]
GO
/****** Object:  Table [dbo].[internal_ids]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[internal_ids]') AND type in (N'U'))
DROP TABLE [dbo].[internal_ids]
GO
/****** Object:  Table [dbo].[insights]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[insights]') AND type in (N'U'))
DROP TABLE [dbo].[insights]
GO
/****** Object:  Table [dbo].[index_statuses]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[index_statuses]') AND type in (N'U'))
DROP TABLE [dbo].[index_statuses]
GO
/****** Object:  Table [dbo].[import_failures]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[import_failures]') AND type in (N'U'))
DROP TABLE [dbo].[import_failures]
GO
/****** Object:  Table [dbo].[import_export_uploads]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[import_export_uploads]') AND type in (N'U'))
DROP TABLE [dbo].[import_export_uploads]
GO
/****** Object:  Table [dbo].[identities]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[identities]') AND type in (N'U'))
DROP TABLE [dbo].[identities]
GO
/****** Object:  Table [dbo].[historical_data]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[historical_data]') AND type in (N'U'))
DROP TABLE [dbo].[historical_data]
GO
/****** Object:  Table [dbo].[group_group_links]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[group_group_links]') AND type in (N'U'))
DROP TABLE [dbo].[group_group_links]
GO
/****** Object:  Table [dbo].[group_deploy_tokens]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[group_deploy_tokens]') AND type in (N'U'))
DROP TABLE [dbo].[group_deploy_tokens]
GO
/****** Object:  Table [dbo].[group_deletion_schedules]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[group_deletion_schedules]') AND type in (N'U'))
DROP TABLE [dbo].[group_deletion_schedules]
GO
/****** Object:  Table [dbo].[group_custom_attributes]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[group_custom_attributes]') AND type in (N'U'))
DROP TABLE [dbo].[group_custom_attributes]
GO
/****** Object:  Table [dbo].[grafana_integrations]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[grafana_integrations]') AND type in (N'U'))
DROP TABLE [dbo].[grafana_integrations]
GO
/****** Object:  Table [dbo].[gpg_signatures]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gpg_signatures]') AND type in (N'U'))
DROP TABLE [dbo].[gpg_signatures]
GO
/****** Object:  Table [dbo].[gpg_keys]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gpg_keys]') AND type in (N'U'))
DROP TABLE [dbo].[gpg_keys]
GO
/****** Object:  Table [dbo].[gpg_key_subkeys]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gpg_key_subkeys]') AND type in (N'U'))
DROP TABLE [dbo].[gpg_key_subkeys]
GO
/****** Object:  Table [dbo].[gitlab_subscriptions]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gitlab_subscriptions]') AND type in (N'U'))
DROP TABLE [dbo].[gitlab_subscriptions]
GO
/****** Object:  Table [dbo].[gitlab_subscription_histories]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[gitlab_subscription_histories]') AND type in (N'U'))
DROP TABLE [dbo].[gitlab_subscription_histories]
GO
/****** Object:  Table [dbo].[geo_upload_deleted_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_upload_deleted_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_upload_deleted_events]
GO
/****** Object:  Table [dbo].[geo_reset_checksum_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_reset_checksum_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_reset_checksum_events]
GO
/****** Object:  Table [dbo].[geo_repository_updated_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_repository_updated_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_repository_updated_events]
GO
/****** Object:  Table [dbo].[geo_repository_renamed_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_repository_renamed_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_repository_renamed_events]
GO
/****** Object:  Table [dbo].[geo_repository_deleted_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_repository_deleted_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_repository_deleted_events]
GO
/****** Object:  Table [dbo].[geo_repository_created_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_repository_created_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_repository_created_events]
GO
/****** Object:  Table [dbo].[geo_repositories_changed_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_repositories_changed_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_repositories_changed_events]
GO
/****** Object:  Table [dbo].[geo_nodes]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_nodes]') AND type in (N'U'))
DROP TABLE [dbo].[geo_nodes]
GO
/****** Object:  Table [dbo].[geo_node_statuses]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_node_statuses]') AND type in (N'U'))
DROP TABLE [dbo].[geo_node_statuses]
GO
/****** Object:  Table [dbo].[geo_node_namespace_links]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_node_namespace_links]') AND type in (N'U'))
DROP TABLE [dbo].[geo_node_namespace_links]
GO
/****** Object:  Table [dbo].[geo_lfs_object_deleted_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_lfs_object_deleted_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_lfs_object_deleted_events]
GO
/****** Object:  Table [dbo].[geo_job_artifact_deleted_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_job_artifact_deleted_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_job_artifact_deleted_events]
GO
/****** Object:  Table [dbo].[geo_hashed_storage_migrated_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_hashed_storage_migrated_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_hashed_storage_migrated_events]
GO
/****** Object:  Table [dbo].[geo_hashed_storage_attachments_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_hashed_storage_attachments_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_hashed_storage_attachments_events]
GO
/****** Object:  Table [dbo].[geo_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_events]
GO
/****** Object:  Table [dbo].[geo_event_log]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_event_log]') AND type in (N'U'))
DROP TABLE [dbo].[geo_event_log]
GO
/****** Object:  Table [dbo].[geo_container_repository_updated_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_container_repository_updated_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_container_repository_updated_events]
GO
/****** Object:  Table [dbo].[geo_cache_invalidation_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[geo_cache_invalidation_events]') AND type in (N'U'))
DROP TABLE [dbo].[geo_cache_invalidation_events]
GO
/****** Object:  Table [dbo].[fork_networks]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fork_networks]') AND type in (N'U'))
DROP TABLE [dbo].[fork_networks]
GO
/****** Object:  Table [dbo].[fork_network_members]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fork_network_members]') AND type in (N'U'))
DROP TABLE [dbo].[fork_network_members]
GO
/****** Object:  Table [dbo].[features]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[features]') AND type in (N'U'))
DROP TABLE [dbo].[features]
GO
/****** Object:  Table [dbo].[feature_gates]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[feature_gates]') AND type in (N'U'))
DROP TABLE [dbo].[feature_gates]
GO
/****** Object:  Table [dbo].[external_pull_requests]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[external_pull_requests]') AND type in (N'U'))
DROP TABLE [dbo].[external_pull_requests]
GO
/****** Object:  Table [dbo].[evidences]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[evidences]') AND type in (N'U'))
DROP TABLE [dbo].[evidences]
GO
/****** Object:  Table [dbo].[events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[events]') AND type in (N'U'))
DROP TABLE [dbo].[events]
GO
/****** Object:  Table [dbo].[epics]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[epics]') AND type in (N'U'))
DROP TABLE [dbo].[epics]
GO
/****** Object:  Table [dbo].[epic_user_mentions]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[epic_user_mentions]') AND type in (N'U'))
DROP TABLE [dbo].[epic_user_mentions]
GO
/****** Object:  Table [dbo].[epic_metrics]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[epic_metrics]') AND type in (N'U'))
DROP TABLE [dbo].[epic_metrics]
GO
/****** Object:  Table [dbo].[epic_issues]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[epic_issues]') AND type in (N'U'))
DROP TABLE [dbo].[epic_issues]
GO
/****** Object:  Table [dbo].[environments]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[environments]') AND type in (N'U'))
DROP TABLE [dbo].[environments]
GO
/****** Object:  Table [dbo].[emails]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[emails]') AND type in (N'U'))
DROP TABLE [dbo].[emails]
GO
/****** Object:  Table [dbo].[elasticsearch_indexed_projects]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[elasticsearch_indexed_projects]') AND type in (N'U'))
DROP TABLE [dbo].[elasticsearch_indexed_projects]
GO
/****** Object:  Table [dbo].[elasticsearch_indexed_namespaces]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[elasticsearch_indexed_namespaces]') AND type in (N'U'))
DROP TABLE [dbo].[elasticsearch_indexed_namespaces]
GO
/****** Object:  Table [dbo].[draft_notes]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[draft_notes]') AND type in (N'U'))
DROP TABLE [dbo].[draft_notes]
GO
/****** Object:  Table [dbo].[design_user_mentions]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[design_user_mentions]') AND type in (N'U'))
DROP TABLE [dbo].[design_user_mentions]
GO
/****** Object:  Table [dbo].[design_management_versions]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[design_management_versions]') AND type in (N'U'))
DROP TABLE [dbo].[design_management_versions]
GO
/****** Object:  Table [dbo].[design_management_designs_versions]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[design_management_designs_versions]') AND type in (N'U'))
DROP TABLE [dbo].[design_management_designs_versions]
GO
/****** Object:  Table [dbo].[design_management_designs]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[design_management_designs]') AND type in (N'U'))
DROP TABLE [dbo].[design_management_designs]
GO
/****** Object:  Table [dbo].[description_versions]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[description_versions]') AND type in (N'U'))
DROP TABLE [dbo].[description_versions]
GO
/****** Object:  Table [dbo].[deployments]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[deployments]') AND type in (N'U'))
DROP TABLE [dbo].[deployments]
GO
/****** Object:  Table [dbo].[deployment_merge_requests]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[deployment_merge_requests]') AND type in (N'U'))
DROP TABLE [dbo].[deployment_merge_requests]
GO
/****** Object:  Table [dbo].[deployment_clusters]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[deployment_clusters]') AND type in (N'U'))
DROP TABLE [dbo].[deployment_clusters]
GO
/****** Object:  Table [dbo].[deploy_tokens]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[deploy_tokens]') AND type in (N'U'))
DROP TABLE [dbo].[deploy_tokens]
GO
/****** Object:  Table [dbo].[deploy_keys_projects]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[deploy_keys_projects]') AND type in (N'U'))
DROP TABLE [dbo].[deploy_keys_projects]
GO
/****** Object:  Table [dbo].[dependency_proxy_group_settings]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dependency_proxy_group_settings]') AND type in (N'U'))
DROP TABLE [dbo].[dependency_proxy_group_settings]
GO
/****** Object:  Table [dbo].[dependency_proxy_blobs]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[dependency_proxy_blobs]') AND type in (N'U'))
DROP TABLE [dbo].[dependency_proxy_blobs]
GO
/****** Object:  Table [dbo].[conversational_development_index_metrics]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[conversational_development_index_metrics]') AND type in (N'U'))
DROP TABLE [dbo].[conversational_development_index_metrics]
GO
/****** Object:  Table [dbo].[container_repositories]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[container_repositories]') AND type in (N'U'))
DROP TABLE [dbo].[container_repositories]
GO
/****** Object:  Table [dbo].[container_expiration_policies]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[container_expiration_policies]') AND type in (N'U'))
DROP TABLE [dbo].[container_expiration_policies]
GO
/****** Object:  Table [dbo].[commit_user_mentions]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[commit_user_mentions]') AND type in (N'U'))
DROP TABLE [dbo].[commit_user_mentions]
GO
/****** Object:  Table [dbo].[clusters_kubernetes_namespaces]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clusters_kubernetes_namespaces]') AND type in (N'U'))
DROP TABLE [dbo].[clusters_kubernetes_namespaces]
GO
/****** Object:  Table [dbo].[clusters_applications_runners]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clusters_applications_runners]') AND type in (N'U'))
DROP TABLE [dbo].[clusters_applications_runners]
GO
/****** Object:  Table [dbo].[clusters_applications_prometheus]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clusters_applications_prometheus]') AND type in (N'U'))
DROP TABLE [dbo].[clusters_applications_prometheus]
GO
/****** Object:  Table [dbo].[clusters_applications_knative]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clusters_applications_knative]') AND type in (N'U'))
DROP TABLE [dbo].[clusters_applications_knative]
GO
/****** Object:  Table [dbo].[clusters_applications_jupyter]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clusters_applications_jupyter]') AND type in (N'U'))
DROP TABLE [dbo].[clusters_applications_jupyter]
GO
/****** Object:  Table [dbo].[clusters_applications_ingress]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clusters_applications_ingress]') AND type in (N'U'))
DROP TABLE [dbo].[clusters_applications_ingress]
GO
/****** Object:  Table [dbo].[clusters_applications_helm]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clusters_applications_helm]') AND type in (N'U'))
DROP TABLE [dbo].[clusters_applications_helm]
GO
/****** Object:  Table [dbo].[clusters_applications_elastic_stacks]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clusters_applications_elastic_stacks]') AND type in (N'U'))
DROP TABLE [dbo].[clusters_applications_elastic_stacks]
GO
/****** Object:  Table [dbo].[clusters_applications_crossplane]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clusters_applications_crossplane]') AND type in (N'U'))
DROP TABLE [dbo].[clusters_applications_crossplane]
GO
/****** Object:  Table [dbo].[clusters_applications_cert_managers]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clusters_applications_cert_managers]') AND type in (N'U'))
DROP TABLE [dbo].[clusters_applications_cert_managers]
GO
/****** Object:  Table [dbo].[clusters]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[clusters]') AND type in (N'U'))
DROP TABLE [dbo].[clusters]
GO
/****** Object:  Table [dbo].[cluster_providers_gcp]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cluster_providers_gcp]') AND type in (N'U'))
DROP TABLE [dbo].[cluster_providers_gcp]
GO
/****** Object:  Table [dbo].[cluster_providers_aws]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cluster_providers_aws]') AND type in (N'U'))
DROP TABLE [dbo].[cluster_providers_aws]
GO
/****** Object:  Table [dbo].[cluster_projects]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cluster_projects]') AND type in (N'U'))
DROP TABLE [dbo].[cluster_projects]
GO
/****** Object:  Table [dbo].[cluster_platforms_kubernetes]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cluster_platforms_kubernetes]') AND type in (N'U'))
DROP TABLE [dbo].[cluster_platforms_kubernetes]
GO
/****** Object:  Table [dbo].[cluster_groups]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[cluster_groups]') AND type in (N'U'))
DROP TABLE [dbo].[cluster_groups]
GO
/****** Object:  Table [dbo].[ci_variables]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_variables]') AND type in (N'U'))
DROP TABLE [dbo].[ci_variables]
GO
/****** Object:  Table [dbo].[ci_triggers]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_triggers]') AND type in (N'U'))
DROP TABLE [dbo].[ci_triggers]
GO
/****** Object:  Table [dbo].[ci_trigger_requests]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_trigger_requests]') AND type in (N'U'))
DROP TABLE [dbo].[ci_trigger_requests]
GO
/****** Object:  Table [dbo].[ci_subscriptions_projects]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_subscriptions_projects]') AND type in (N'U'))
DROP TABLE [dbo].[ci_subscriptions_projects]
GO
/****** Object:  Table [dbo].[ci_stages]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_stages]') AND type in (N'U'))
DROP TABLE [dbo].[ci_stages]
GO
/****** Object:  Table [dbo].[ci_sources_projects]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_sources_projects]') AND type in (N'U'))
DROP TABLE [dbo].[ci_sources_projects]
GO
/****** Object:  Table [dbo].[ci_sources_pipelines]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_sources_pipelines]') AND type in (N'U'))
DROP TABLE [dbo].[ci_sources_pipelines]
GO
/****** Object:  Table [dbo].[ci_runners]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_runners]') AND type in (N'U'))
DROP TABLE [dbo].[ci_runners]
GO
/****** Object:  Table [dbo].[ci_runner_projects]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_runner_projects]') AND type in (N'U'))
DROP TABLE [dbo].[ci_runner_projects]
GO
/****** Object:  Table [dbo].[ci_runner_namespaces]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_runner_namespaces]') AND type in (N'U'))
DROP TABLE [dbo].[ci_runner_namespaces]
GO
/****** Object:  Table [dbo].[ci_resources]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_resources]') AND type in (N'U'))
DROP TABLE [dbo].[ci_resources]
GO
/****** Object:  Table [dbo].[ci_resource_groups]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_resource_groups]') AND type in (N'U'))
DROP TABLE [dbo].[ci_resource_groups]
GO
/****** Object:  Table [dbo].[ci_refs]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_refs]') AND type in (N'U'))
DROP TABLE [dbo].[ci_refs]
GO
/****** Object:  Table [dbo].[ci_pipelines_config]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_pipelines_config]') AND type in (N'U'))
DROP TABLE [dbo].[ci_pipelines_config]
GO
/****** Object:  Table [dbo].[ci_pipelines]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_pipelines]') AND type in (N'U'))
DROP TABLE [dbo].[ci_pipelines]
GO
/****** Object:  Table [dbo].[ci_pipeline_variables]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_pipeline_variables]') AND type in (N'U'))
DROP TABLE [dbo].[ci_pipeline_variables]
GO
/****** Object:  Table [dbo].[ci_pipeline_schedules]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_pipeline_schedules]') AND type in (N'U'))
DROP TABLE [dbo].[ci_pipeline_schedules]
GO
/****** Object:  Table [dbo].[ci_pipeline_schedule_variables]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_pipeline_schedule_variables]') AND type in (N'U'))
DROP TABLE [dbo].[ci_pipeline_schedule_variables]
GO
/****** Object:  Table [dbo].[ci_pipeline_chat_data]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_pipeline_chat_data]') AND type in (N'U'))
DROP TABLE [dbo].[ci_pipeline_chat_data]
GO
/****** Object:  Table [dbo].[ci_job_variables]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_job_variables]') AND type in (N'U'))
DROP TABLE [dbo].[ci_job_variables]
GO
/****** Object:  Table [dbo].[ci_job_artifacts]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_job_artifacts]') AND type in (N'U'))
DROP TABLE [dbo].[ci_job_artifacts]
GO
/****** Object:  Table [dbo].[ci_group_variables]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_group_variables]') AND type in (N'U'))
DROP TABLE [dbo].[ci_group_variables]
GO
/****** Object:  Table [dbo].[ci_daily_report_results]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_daily_report_results]') AND type in (N'U'))
DROP TABLE [dbo].[ci_daily_report_results]
GO
/****** Object:  Table [dbo].[ci_builds_runner_session]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_builds_runner_session]') AND type in (N'U'))
DROP TABLE [dbo].[ci_builds_runner_session]
GO
/****** Object:  Table [dbo].[ci_builds_metadata]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_builds_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[ci_builds_metadata]
GO
/****** Object:  Table [dbo].[ci_builds]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_builds]') AND type in (N'U'))
DROP TABLE [dbo].[ci_builds]
GO
/****** Object:  Table [dbo].[ci_build_trace_sections]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_build_trace_sections]') AND type in (N'U'))
DROP TABLE [dbo].[ci_build_trace_sections]
GO
/****** Object:  Table [dbo].[ci_build_trace_section_names]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_build_trace_section_names]') AND type in (N'U'))
DROP TABLE [dbo].[ci_build_trace_section_names]
GO
/****** Object:  Table [dbo].[ci_build_trace_chunks]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_build_trace_chunks]') AND type in (N'U'))
DROP TABLE [dbo].[ci_build_trace_chunks]
GO
/****** Object:  Table [dbo].[ci_build_needs]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ci_build_needs]') AND type in (N'U'))
DROP TABLE [dbo].[ci_build_needs]
GO
/****** Object:  Table [dbo].[chat_teams]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chat_teams]') AND type in (N'U'))
DROP TABLE [dbo].[chat_teams]
GO
/****** Object:  Table [dbo].[chat_names]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[chat_names]') AND type in (N'U'))
DROP TABLE [dbo].[chat_names]
GO
/****** Object:  Table [dbo].[broadcast_messages]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[broadcast_messages]') AND type in (N'U'))
DROP TABLE [dbo].[broadcast_messages]
GO
/****** Object:  Table [dbo].[boards]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[boards]') AND type in (N'U'))
DROP TABLE [dbo].[boards]
GO
/****** Object:  Table [dbo].[board_project_recent_visits]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[board_project_recent_visits]') AND type in (N'U'))
DROP TABLE [dbo].[board_project_recent_visits]
GO
/****** Object:  Table [dbo].[board_labels]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[board_labels]') AND type in (N'U'))
DROP TABLE [dbo].[board_labels]
GO
/****** Object:  Table [dbo].[board_group_recent_visits]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[board_group_recent_visits]') AND type in (N'U'))
DROP TABLE [dbo].[board_group_recent_visits]
GO
/****** Object:  Table [dbo].[board_assignees]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[board_assignees]') AND type in (N'U'))
DROP TABLE [dbo].[board_assignees]
GO
/****** Object:  Table [dbo].[badges]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[badges]') AND type in (N'U'))
DROP TABLE [dbo].[badges]
GO
/****** Object:  Table [dbo].[aws_roles]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[aws_roles]') AND type in (N'U'))
DROP TABLE [dbo].[aws_roles]
GO
/****** Object:  Table [dbo].[award_emoji]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[award_emoji]') AND type in (N'U'))
DROP TABLE [dbo].[award_emoji]
GO
/****** Object:  Table [dbo].[audit_events]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[audit_events]') AND type in (N'U'))
DROP TABLE [dbo].[audit_events]
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ar_internal_metadata]') AND type in (N'U'))
DROP TABLE [dbo].[ar_internal_metadata]
GO
/****** Object:  Table [dbo].[approvers]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approvers]') AND type in (N'U'))
DROP TABLE [dbo].[approvers]
GO
/****** Object:  Table [dbo].[approver_groups]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approver_groups]') AND type in (N'U'))
DROP TABLE [dbo].[approver_groups]
GO
/****** Object:  Table [dbo].[approvals]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approvals]') AND type in (N'U'))
DROP TABLE [dbo].[approvals]
GO
/****** Object:  Table [dbo].[approval_project_rules_users]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approval_project_rules_users]') AND type in (N'U'))
DROP TABLE [dbo].[approval_project_rules_users]
GO
/****** Object:  Table [dbo].[approval_project_rules_protected_branches]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approval_project_rules_protected_branches]') AND type in (N'U'))
DROP TABLE [dbo].[approval_project_rules_protected_branches]
GO
/****** Object:  Table [dbo].[approval_project_rules_groups]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approval_project_rules_groups]') AND type in (N'U'))
DROP TABLE [dbo].[approval_project_rules_groups]
GO
/****** Object:  Table [dbo].[approval_project_rules]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approval_project_rules]') AND type in (N'U'))
DROP TABLE [dbo].[approval_project_rules]
GO
/****** Object:  Table [dbo].[approval_merge_request_rules_users]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approval_merge_request_rules_users]') AND type in (N'U'))
DROP TABLE [dbo].[approval_merge_request_rules_users]
GO
/****** Object:  Table [dbo].[approval_merge_request_rules_groups]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approval_merge_request_rules_groups]') AND type in (N'U'))
DROP TABLE [dbo].[approval_merge_request_rules_groups]
GO
/****** Object:  Table [dbo].[approval_merge_request_rules_approved_approvers]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approval_merge_request_rules_approved_approvers]') AND type in (N'U'))
DROP TABLE [dbo].[approval_merge_request_rules_approved_approvers]
GO
/****** Object:  Table [dbo].[approval_merge_request_rules]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approval_merge_request_rules]') AND type in (N'U'))
DROP TABLE [dbo].[approval_merge_request_rules]
GO
/****** Object:  Table [dbo].[approval_merge_request_rule_sources]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[approval_merge_request_rule_sources]') AND type in (N'U'))
DROP TABLE [dbo].[approval_merge_request_rule_sources]
GO
/****** Object:  Table [dbo].[application_settings]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[application_settings]') AND type in (N'U'))
DROP TABLE [dbo].[application_settings]
GO
/****** Object:  Table [dbo].[application_setting_terms]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[application_setting_terms]') AND type in (N'U'))
DROP TABLE [dbo].[application_setting_terms]
GO
/****** Object:  Table [dbo].[appearances]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[appearances]') AND type in (N'U'))
DROP TABLE [dbo].[appearances]
GO
/****** Object:  Table [dbo].[analytics_language_trend_repository_languages]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analytics_language_trend_repository_languages]') AND type in (N'U'))
DROP TABLE [dbo].[analytics_language_trend_repository_languages]
GO
/****** Object:  Table [dbo].[analytics_cycle_analytics_project_stages]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analytics_cycle_analytics_project_stages]') AND type in (N'U'))
DROP TABLE [dbo].[analytics_cycle_analytics_project_stages]
GO
/****** Object:  Table [dbo].[analytics_cycle_analytics_group_stages]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[analytics_cycle_analytics_group_stages]') AND type in (N'U'))
DROP TABLE [dbo].[analytics_cycle_analytics_group_stages]
GO
/****** Object:  Table [dbo].[allowed_email_domains]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[allowed_email_domains]') AND type in (N'U'))
DROP TABLE [dbo].[allowed_email_domains]
GO
/****** Object:  Table [dbo].[alerts_service_data]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[alerts_service_data]') AND type in (N'U'))
DROP TABLE [dbo].[alerts_service_data]
GO
/****** Object:  Table [dbo].[abuse_reports]    Script Date: 2021/9/6 21:07:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[abuse_reports]') AND type in (N'U'))
DROP TABLE [dbo].[abuse_reports]
GO
/****** Object:  Table [dbo].[abuse_reports]    Script Date: 2021/9/6 21:07:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[abuse_reports](
	[id] [int]  NOT NULL,
	[reporter_id] [int] NULL,
	[user_id] [int] NULL,
	[message] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[message_html] [varchar](max) NULL,
	[cached_markdown_version] [int] NULL,
 CONSTRAINT [abuse_reports_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[alerts_service_data]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[alerts_service_data](
	[id] [bigint]  NOT NULL,
	[service_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[encrypted_token] [varchar](255) NULL,
	[encrypted_token_iv] [varchar](255) NULL,
 CONSTRAINT [alerts_service_data_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[allowed_email_domains]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[allowed_email_domains](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[group_id] [int] NOT NULL,
	[domain] [varchar](255) NOT NULL,
 CONSTRAINT [allowed_email_domains_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[analytics_cycle_analytics_group_stages]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[analytics_cycle_analytics_group_stages](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[relative_position] [int] NULL,
	[start_event_identifier] [int] NOT NULL,
	[end_event_identifier] [int] NOT NULL,
	[group_id] [bigint] NOT NULL,
	[start_event_label_id] [bigint] NULL,
	[end_event_label_id] [bigint] NULL,
	[hidden] [bit] NOT NULL,
	[custom] [bit] NOT NULL,
	[name] [varchar](255) NOT NULL,
 CONSTRAINT [analytics_cycle_analytics_group_stages_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[analytics_cycle_analytics_project_stages]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[analytics_cycle_analytics_project_stages](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[relative_position] [int] NULL,
	[start_event_identifier] [int] NOT NULL,
	[end_event_identifier] [int] NOT NULL,
	[project_id] [bigint] NOT NULL,
	[start_event_label_id] [bigint] NULL,
	[end_event_label_id] [bigint] NULL,
	[hidden] [bit] NOT NULL,
	[custom] [bit] NOT NULL,
	[name] [varchar](255) NOT NULL,
 CONSTRAINT [analytics_cycle_analytics_project_stages_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[analytics_language_trend_repository_languages]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[analytics_language_trend_repository_languages](
	[file_count] [int] NOT NULL,
	[programming_language_id] [bigint] NOT NULL,
	[project_id] [bigint] NOT NULL,
	[loc] [int] NOT NULL,
	[bytes] [int] NOT NULL,
	[percentage] [smallint] NOT NULL,
	[snapshot_date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[appearances]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appearances](
	[id] [int]  NOT NULL,
	[title] [varchar](max) NOT NULL,
	[description] [varchar](max) NOT NULL,
	[logo] [varchar](max) NULL,
	[updated_by] [int] NULL,
	[header_logo] [varchar](max) NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[description_html] [varchar](max) NULL,
	[cached_markdown_version] [int] NULL,
	[new_project_guidelines] [varchar](max) NULL,
	[new_project_guidelines_html] [varchar](max) NULL,
	[header_message] [varchar](max) NULL,
	[header_message_html] [varchar](max) NULL,
	[footer_message] [varchar](max) NULL,
	[footer_message_html] [varchar](max) NULL,
	[message_background_color] [varchar](max) NULL,
	[message_font_color] [varchar](max) NULL,
	[favicon] [varchar](max) NULL,
	[email_header_and_footer_enabled] [bit] NOT NULL,
 CONSTRAINT [appearances_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[application_setting_terms]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_setting_terms](
	[id] [int]  NOT NULL,
	[cached_markdown_version] [int] NULL,
	[terms] [varchar](max) NOT NULL,
	[terms_html] [varchar](max) NULL,
 CONSTRAINT [application_setting_terms_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[application_settings]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[application_settings](
	[id] [int]  NOT NULL,
	[default_projects_limit] [int] NULL,
	[signup_enabled] [bit] NULL,
	[gravatar_enabled] [bit] NULL,
	[sign_in_text] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[home_page_url] [varchar](max) NULL,
	[default_branch_protection] [int] NULL,
	[help_text] [varchar](max) NULL,
	[restricted_visibility_levels] [varchar](max) NULL,
	[version_check_enabled] [bit] NULL,
	[max_attachment_size] [int] NOT NULL,
	[default_project_visibility] [int] NOT NULL,
	[default_snippet_visibility] [int] NOT NULL,
	[domain_whitelist] [varchar](max) NULL,
	[user_oauth_applications] [bit] NULL,
	[after_sign_out_path] [varchar](max) NULL,
	[session_expire_delay] [int] NOT NULL,
	[import_sources] [varchar](max) NULL,
	[help_page_text] [varchar](max) NULL,
	[admin_notification_email] [varchar](max) NULL,
	[shared_runners_enabled] [bit] NOT NULL,
	[max_artifacts_size] [int] NOT NULL,
	[runners_registration_token] [varchar](max) NULL,
	[max_pages_size] [int] NOT NULL,
	[require_two_factor_authentication] [bit] NULL,
	[two_factor_grace_period] [int] NULL,
	[metrics_enabled] [bit] NULL,
	[metrics_host] [varchar](max) NULL,
	[metrics_pool_size] [int] NULL,
	[metrics_timeout] [int] NULL,
	[metrics_method_call_threshold] [int] NULL,
	[recaptcha_enabled] [bit] NULL,
	[metrics_port] [int] NULL,
	[akismet_enabled] [bit] NULL,
	[metrics_sample_interval] [int] NULL,
	[email_author_in_body] [bit] NULL,
	[default_group_visibility] [int] NULL,
	[repository_checks_enabled] [bit] NULL,
	[shared_runners_text] [varchar](max) NULL,
	[metrics_packet_size] [int] NULL,
	[disabled_oauth_sign_in_sources] [varchar](max) NULL,
	[health_check_access_token] [varchar](max) NULL,
	[send_user_confirmation_email] [bit] NULL,
	[container_registry_token_expire_delay] [int] NULL,
	[after_sign_up_text] [varchar](max) NULL,
	[user_default_external] [bit] NOT NULL,
	[elasticsearch_indexing] [bit] NOT NULL,
	[elasticsearch_search] [bit] NOT NULL,
	[repository_storages] [varchar](max) NULL,
	[enabled_git_access_protocol] [varchar](max) NULL,
	[domain_blacklist_enabled] [bit] NULL,
	[domain_blacklist] [varchar](max) NULL,
	[usage_ping_enabled] [bit] NOT NULL,
	[sign_in_text_html] [varchar](max) NULL,
	[help_page_text_html] [varchar](max) NULL,
	[shared_runners_text_html] [varchar](max) NULL,
	[after_sign_up_text_html] [varchar](max) NULL,
	[rsa_key_restriction] [int] NOT NULL,
	[dsa_key_restriction] [int] NOT NULL,
	[ecdsa_key_restriction] [int] NOT NULL,
	[ed25519_key_restriction] [int] NOT NULL,
	[housekeeping_enabled] [bit] NOT NULL,
	[housekeeping_bitmaps_enabled] [bit] NOT NULL,
	[housekeeping_incremental_repack_period] [int] NOT NULL,
	[housekeeping_full_repack_period] [int] NOT NULL,
	[housekeeping_gc_period] [int] NOT NULL,
	[html_emails_enabled] [bit] NULL,
	[plantuml_url] [varchar](max) NULL,
	[plantuml_enabled] [bit] NULL,
	[shared_runners_minutes] [int] NOT NULL,
	[repository_size_limit] [bigint] NULL,
	[terminal_max_session_time] [int] NOT NULL,
	[unique_ips_limit_per_user] [int] NULL,
	[unique_ips_limit_time_window] [int] NULL,
	[unique_ips_limit_enabled] [bit] NOT NULL,
	[default_artifacts_expire_in] [varchar](max) NOT NULL,
	[elasticsearch_url] [varchar](max) NULL,
	[elasticsearch_aws] [bit] NOT NULL,
	[elasticsearch_aws_region] [varchar](max) NULL,
	[elasticsearch_aws_access_key] [varchar](max) NULL,
	[geo_status_timeout] [int] NULL,
	[uuid] [varchar](max) NULL,
	[polling_interval_multiplier] [float] NOT NULL,
	[elasticsearch_experimental_indexer] [bit] NULL,
	[cached_markdown_version] [int] NULL,
	[check_namespace_plan] [bit] NOT NULL,
	[mirror_max_delay] [int] NOT NULL,
	[mirror_max_capacity] [int] NOT NULL,
	[mirror_capacity_threshold] [int] NOT NULL,
	[prometheus_metrics_enabled] [bit] NOT NULL,
	[authorized_keys_enabled] [bit] NOT NULL,
	[help_page_hide_commercial_content] [bit] NULL,
	[help_page_support_url] [varchar](max) NULL,
	[slack_app_enabled] [bit] NULL,
	[slack_app_id] [varchar](max) NULL,
	[performance_bar_allowed_group_id] [int] NULL,
	[allow_group_owners_to_manage_ldap] [bit] NOT NULL,
	[hashed_storage_enabled] [bit] NOT NULL,
	[project_export_enabled] [bit] NOT NULL,
	[auto_devops_enabled] [bit] NOT NULL,
	[throttle_unauthenticated_enabled] [bit] NOT NULL,
	[throttle_unauthenticated_requests_per_period] [int] NOT NULL,
	[throttle_unauthenticated_period_in_seconds] [int] NOT NULL,
	[throttle_authenticated_api_enabled] [bit] NOT NULL,
	[throttle_authenticated_api_requests_per_period] [int] NOT NULL,
	[throttle_authenticated_api_period_in_seconds] [int] NOT NULL,
	[throttle_authenticated_web_enabled] [bit] NOT NULL,
	[throttle_authenticated_web_requests_per_period] [int] NOT NULL,
	[throttle_authenticated_web_period_in_seconds] [int] NOT NULL,
	[gitaly_timeout_default] [int] NOT NULL,
	[gitaly_timeout_medium] [int] NOT NULL,
	[gitaly_timeout_fast] [int] NOT NULL,
	[mirror_available] [bit] NOT NULL,
	[password_authentication_enabled_for_web] [bit] NULL,
	[password_authentication_enabled_for_git] [bit] NOT NULL,
	[auto_devops_domain] [varchar](max) NULL,
	[external_authorization_service_enabled] [bit] NOT NULL,
	[external_authorization_service_url] [varchar](max) NULL,
	[external_authorization_service_default_label] [varchar](max) NULL,
	[pages_domain_verification_enabled] [bit] NOT NULL,
	[user_default_internal_regex] [varchar](max) NULL,
	[external_authorization_service_timeout] [float] NULL,
	[external_auth_client_cert] [varchar](max) NULL,
	[encrypted_external_auth_client_key] [varchar](max) NULL,
	[encrypted_external_auth_client_key_iv] [varchar](max) NULL,
	[encrypted_external_auth_client_key_pass] [varchar](max) NULL,
	[encrypted_external_auth_client_key_pass_iv] [varchar](max) NULL,
	[email_additional_text] [varchar](max) NULL,
	[enforce_terms] [bit] NULL,
	[file_template_project_id] [int] NULL,
	[pseudonymizer_enabled] [bit] NOT NULL,
	[hide_third_party_offers] [bit] NOT NULL,
	[snowplow_enabled] [bit] NOT NULL,
	[snowplow_collector_hostname] [varchar](max) NULL,
	[snowplow_cookie_domain] [varchar](max) NULL,
	[instance_statistics_visibility_private] [bit] NOT NULL,
	[web_ide_clientside_preview_enabled] [bit] NOT NULL,
	[user_show_add_ssh_key_message] [bit] NOT NULL,
	[custom_project_templates_group_id] [int] NULL,
	[usage_stats_set_by_user_id] [int] NULL,
	[receive_max_input_size] [int] NULL,
	[diff_max_patch_bytes] [int] NOT NULL,
	[archive_builds_in_seconds] [int] NULL,
	[commit_email_hostname] [varchar](max) NULL,
	[protected_ci_variables] [bit] NOT NULL,
	[runners_registration_token_encrypted] [varchar](max) NULL,
	[local_markdown_version] [int] NOT NULL,
	[first_day_of_week] [int] NOT NULL,
	[elasticsearch_limit_indexing] [bit] NOT NULL,
	[default_project_creation] [int] NOT NULL,
	[lets_encrypt_notification_email] [varchar](max) NULL,
	[lets_encrypt_terms_of_service_accepted] [bit] NOT NULL,
	[geo_node_allowed_ips] [varchar](max) NULL,
	[elasticsearch_shards] [int] NOT NULL,
	[elasticsearch_replicas] [int] NOT NULL,
	[encrypted_lets_encrypt_private_key] [varchar](max) NULL,
	[encrypted_lets_encrypt_private_key_iv] [varchar](max) NULL,
	[required_instance_ci_template] [varchar](max) NULL,
	[dns_rebinding_protection_enabled] [bit] NOT NULL,
	[default_project_deletion_protection] [bit] NOT NULL,
	[grafana_enabled] [bit] NOT NULL,
	[lock_memberships_to_ldap] [bit] NOT NULL,
	[time_tracking_limit_to_hours] [bit] NOT NULL,
	[grafana_url] [varchar](max) NOT NULL,
	[login_recaptcha_protection_enabled] [bit] NOT NULL,
	[outbound_local_requests_whitelist] [varchar](255) NOT NULL,
	[raw_blob_request_limit] [int] NOT NULL,
	[allow_local_requests_from_web_hooks_and_services] [bit] NOT NULL,
	[allow_local_requests_from_system_hooks] [bit] NOT NULL,
	[instance_administration_project_id] [bigint] NULL,
	[asset_proxy_enabled] [bit] NOT NULL,
	[asset_proxy_url] [varchar](max) NULL,
	[asset_proxy_whitelist] [varchar](max) NULL,
	[encrypted_asset_proxy_secret_key] [varchar](max) NULL,
	[encrypted_asset_proxy_secret_key_iv] [varchar](max) NULL,
	[static_objects_external_storage_url] [varchar](255) NULL,
	[static_objects_external_storage_auth_token] [varchar](255) NULL,
	[max_personal_access_token_lifetime] [int] NULL,
	[throttle_protected_paths_enabled] [bit] NOT NULL,
	[throttle_protected_paths_requests_per_period] [int] NOT NULL,
	[throttle_protected_paths_period_in_seconds] [int] NOT NULL,
	[protected_paths] [varchar](255) NULL,
	[throttle_incident_management_notification_enabled] [bit] NOT NULL,
	[throttle_incident_management_notification_period_in_seconds] [int] NULL,
	[throttle_incident_management_notification_per_period] [int] NULL,
	[snowplow_iglu_registry_url] [varchar](255) NULL,
	[push_event_hooks_limit] [int] NOT NULL,
	[push_event_activities_limit] [int] NOT NULL,
	[custom_http_clone_url_root] [varchar](511) NULL,
	[deletion_adjourned_period] [int] NOT NULL,
	[license_trial_ends_on] [date] NULL,
	[eks_integration_enabled] [bit] NOT NULL,
	[eks_account_id] [varchar](128) NULL,
	[eks_access_key_id] [varchar](128) NULL,
	[encrypted_eks_secret_access_key_iv] [varchar](255) NULL,
	[encrypted_eks_secret_access_key] [varchar](max) NULL,
	[snowplow_app_id] [varchar](max) NULL,
	[productivity_analytics_start_date] [datetimeoffset](7) NULL,
	[default_ci_config_path] [varchar](255) NULL,
	[sourcegraph_enabled] [bit] NOT NULL,
	[sourcegraph_url] [varchar](255) NULL,
	[sourcegraph_public_only] [bit] NOT NULL,
	[snippet_size_limit] [bigint] NOT NULL,
	[minimum_password_length] [int] NOT NULL,
	[encrypted_akismet_api_key] [varchar](max) NULL,
	[encrypted_akismet_api_key_iv] [varchar](255) NULL,
	[encrypted_elasticsearch_aws_secret_access_key] [varchar](max) NULL,
	[encrypted_elasticsearch_aws_secret_access_key_iv] [varchar](255) NULL,
	[encrypted_recaptcha_private_key] [varchar](max) NULL,
	[encrypted_recaptcha_private_key_iv] [varchar](255) NULL,
	[encrypted_recaptcha_site_key] [varchar](max) NULL,
	[encrypted_recaptcha_site_key_iv] [varchar](255) NULL,
	[encrypted_slack_app_secret] [varchar](max) NULL,
	[encrypted_slack_app_secret_iv] [varchar](255) NULL,
	[encrypted_slack_app_verification_token] [varchar](max) NULL,
	[encrypted_slack_app_verification_token_iv] [varchar](255) NULL,
	[force_pages_access_control] [bit] NOT NULL,
	[updating_name_disabled_for_users] [bit] NOT NULL,
	[instance_administrators_group_id] [int] NULL,
	[elasticsearch_indexed_field_length_limit] [int] NOT NULL,
	[elasticsearch_max_bulk_size_mb] [smallint] NOT NULL,
	[elasticsearch_max_bulk_concurrency] [smallint] NOT NULL,
	[disable_overriding_approvers_per_merge_request] [bit] NOT NULL,
	[prevent_merge_requests_author_approval] [bit] NOT NULL,
	[prevent_merge_requests_committers_approval] [bit] NOT NULL,
	[email_restrictions_enabled] [bit] NOT NULL,
	[email_restrictions] [varchar](max) NULL,
	[npm_package_requests_forwarding] [bit] NOT NULL,
	[namespace_storage_size_limit] [bigint] NOT NULL,
 CONSTRAINT [application_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[approval_merge_request_rule_sources]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approval_merge_request_rule_sources](
	[id] [bigint]  NOT NULL,
	[approval_merge_request_rule_id] [bigint] NOT NULL,
	[approval_project_rule_id] [bigint] NOT NULL,
 CONSTRAINT [approval_merge_request_rule_sources_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[approval_merge_request_rules]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approval_merge_request_rules](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[merge_request_id] [int] NOT NULL,
	[approvals_required] [smallint] NOT NULL,
	[code_owner] [bit] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[rule_type] [smallint] NOT NULL,
	[report_type] [smallint] NULL,
 CONSTRAINT [approval_merge_request_rules_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[approval_merge_request_rules_approved_approvers]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approval_merge_request_rules_approved_approvers](
	[id] [bigint]  NOT NULL,
	[approval_merge_request_rule_id] [bigint] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [approval_merge_request_rules_approved_approvers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[approval_merge_request_rules_groups]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approval_merge_request_rules_groups](
	[id] [bigint]  NOT NULL,
	[approval_merge_request_rule_id] [bigint] NOT NULL,
	[group_id] [int] NOT NULL,
 CONSTRAINT [approval_merge_request_rules_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[approval_merge_request_rules_users]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approval_merge_request_rules_users](
	[id] [bigint]  NOT NULL,
	[approval_merge_request_rule_id] [bigint] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [approval_merge_request_rules_users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[approval_project_rules]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approval_project_rules](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [int] NOT NULL,
	[approvals_required] [smallint] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[rule_type] [smallint] NOT NULL,
 CONSTRAINT [approval_project_rules_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[approval_project_rules_groups]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approval_project_rules_groups](
	[id] [bigint]  NOT NULL,
	[approval_project_rule_id] [bigint] NOT NULL,
	[group_id] [int] NOT NULL,
 CONSTRAINT [approval_project_rules_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[approval_project_rules_protected_branches]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approval_project_rules_protected_branches](
	[approval_project_rule_id] [bigint] NOT NULL,
	[protected_branch_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[approval_project_rules_users]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approval_project_rules_users](
	[id] [bigint]  NOT NULL,
	[approval_project_rule_id] [bigint] NOT NULL,
	[user_id] [int] NOT NULL,
 CONSTRAINT [approval_project_rules_users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[approvals]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approvals](
	[id] [int]  NOT NULL,
	[merge_request_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [approvals_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[approver_groups]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approver_groups](
	[id] [int]  NOT NULL,
	[target_id] [int] NOT NULL,
	[target_type] [varchar](max) NOT NULL,
	[group_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [approver_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[approvers]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[approvers](
	[id] [int]  NOT NULL,
	[target_id] [int] NOT NULL,
	[target_type] [varchar](max) NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [approvers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ar_internal_metadata]    Script Date: 2021/9/6 21:07:42 ******/
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
/****** Object:  Table [dbo].[audit_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[audit_events](
	[id] [int]  NOT NULL,
	[author_id] [int] NOT NULL,
	[type] [varchar](max) NOT NULL,
	[entity_id] [int] NOT NULL,
	[entity_type] [varchar](max) NOT NULL,
	[details] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [audit_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[award_emoji]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[award_emoji](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NULL,
	[user_id] [int] NULL,
	[awardable_id] [int] NULL,
	[awardable_type] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [award_emoji_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[aws_roles]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aws_roles](
	[user_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[role_arn] [varchar](2048) NOT NULL,
	[role_external_id] [varchar](64) NOT NULL,
 CONSTRAINT [aws_roles_pkey] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[badges]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[badges](
	[id] [int]  NOT NULL,
	[link_url] [varchar](max) NOT NULL,
	[image_url] [varchar](max) NOT NULL,
	[project_id] [int] NULL,
	[group_id] [int] NULL,
	[type] [varchar](max) NOT NULL,
	[name] [varchar](255) NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [badges_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[board_assignees]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[board_assignees](
	[id] [int]  NOT NULL,
	[board_id] [int] NOT NULL,
	[assignee_id] [int] NOT NULL,
 CONSTRAINT [board_assignees_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[board_group_recent_visits]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[board_group_recent_visits](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[user_id] [int] NULL,
	[board_id] [int] NULL,
	[group_id] [int] NULL,
 CONSTRAINT [board_group_recent_visits_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[board_labels]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[board_labels](
	[id] [int]  NOT NULL,
	[board_id] [int] NOT NULL,
	[label_id] [int] NOT NULL,
 CONSTRAINT [board_labels_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[board_project_recent_visits]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[board_project_recent_visits](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[user_id] [int] NULL,
	[project_id] [int] NULL,
	[board_id] [int] NULL,
 CONSTRAINT [board_project_recent_visits_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[boards]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[boards](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[milestone_id] [int] NULL,
	[group_id] [int] NULL,
	[weight] [int] NULL,
 CONSTRAINT [boards_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[broadcast_messages]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[broadcast_messages](
	[id] [int]  NOT NULL,
	[message] [varchar](max) NOT NULL,
	[starts_at] [datetime] NOT NULL,
	[ends_at] [datetime] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[color] [varchar](max) NULL,
	[font] [varchar](max) NULL,
	[message_html] [varchar](max) NOT NULL,
	[cached_markdown_version] [int] NULL,
	[target_path] [varchar](255) NULL,
	[broadcast_type] [smallint] NOT NULL,
	[dismissable] [bit] NULL,
 CONSTRAINT [broadcast_messages_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[chat_names]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat_names](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[service_id] [int] NOT NULL,
	[team_id] [varchar](max) NOT NULL,
	[team_domain] [varchar](max) NULL,
	[chat_id] [varchar](max) NOT NULL,
	[chat_name] [varchar](max) NULL,
	[last_used_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [chat_names_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[chat_teams]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[chat_teams](
	[id] [int]  NOT NULL,
	[namespace_id] [int] NOT NULL,
	[team_id] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [chat_teams_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_build_needs]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_build_needs](
	[id] [int]  NOT NULL,
	[build_id] [int] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[artifacts] [bit] NOT NULL,
 CONSTRAINT [ci_build_needs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_build_trace_chunks]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_build_trace_chunks](
	[id] [bigint]  NOT NULL,
	[build_id] [int] NOT NULL,
	[chunk_index] [int] NOT NULL,
	[data_store] [int] NOT NULL,
	[raw_data] [varbinary](1024) NULL,
 CONSTRAINT [ci_build_trace_chunks_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ci_build_trace_section_names]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_build_trace_section_names](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[name] [varchar](max) NOT NULL,
 CONSTRAINT [ci_build_trace_section_names_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_build_trace_sections]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_build_trace_sections](
	[project_id] [int] NOT NULL,
	[date_start] [datetime] NOT NULL,
	[date_end] [datetime] NOT NULL,
	[byte_start] [bigint] NOT NULL,
	[byte_end] [bigint] NOT NULL,
	[build_id] [int] NOT NULL,
	[section_name_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ci_builds]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_builds](
	[id] [int]  NOT NULL,
	[status] [varchar](max) NULL,
	[finished_at] [datetime] NULL,
	[trace] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[started_at] [datetime] NULL,
	[runner_id] [int] NULL,
	[coverage] [float] NULL,
	[commit_id] [int] NULL,
	[commands] [varchar](max) NULL,
	[name] [varchar](max) NULL,
	[options] [varchar](max) NULL,
	[allow_failure] [bit] NOT NULL,
	[stage] [varchar](max) NULL,
	[trigger_request_id] [int] NULL,
	[stage_idx] [int] NULL,
	[tag] [bit] NULL,
	[ref] [varchar](max) NULL,
	[user_id] [int] NULL,
	[type] [varchar](max) NULL,
	[target_url] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[artifacts_file] [varchar](max) NULL,
	[project_id] [int] NULL,
	[artifacts_metadata] [varchar](max) NULL,
	[erased_by_id] [int] NULL,
	[erased_at] [datetime] NULL,
	[artifacts_expire_at] [datetime] NULL,
	[environment] [varchar](max) NULL,
	[artifacts_size] [bigint] NULL,
	[when] [varchar](max) NULL,
	[yaml_variables] [varchar](max) NULL,
	[queued_at] [datetime] NULL,
	[token] [varchar](max) NULL,
	[lock_version] [int] NULL,
	[coverage_regex] [varchar](max) NULL,
	[auto_canceled_by_id] [int] NULL,
	[retried] [bit] NULL,
	[stage_id] [int] NULL,
	[artifacts_file_store] [int] NULL,
	[artifacts_metadata_store] [int] NULL,
	[protected] [bit] NULL,
	[failure_reason] [int] NULL,
	[scheduled_at] [datetimeoffset](7) NULL,
	[token_encrypted] [varchar](max) NULL,
	[upstream_pipeline_id] [int] NULL,
	[resource_group_id] [bigint] NULL,
	[waiting_for_resource_at] [datetimeoffset](7) NULL,
	[processed] [bit] NULL,
	[scheduling_type] [smallint] NULL,
 CONSTRAINT [ci_builds_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_builds_metadata]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_builds_metadata](
	[id] [int]  NOT NULL,
	[build_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[timeout] [int] NULL,
	[timeout_source] [int] NOT NULL,
	[interruptible] [bit] NULL,
	[config_options] [varchar](max) NULL,
	[config_variables] [varchar](max) NULL,
	[has_exposed_artifacts] [bit] NULL,
	[environment_auto_stop_in] [varchar](255) NULL,
	[expanded_environment_name] [varchar](255) NULL,
 CONSTRAINT [ci_builds_metadata_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_builds_runner_session]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_builds_runner_session](
	[id] [bigint]  NOT NULL,
	[build_id] [int] NOT NULL,
	[url] [varchar](max) NOT NULL,
	[certificate] [varchar](max) NULL,
	[authorization] [varchar](max) NULL,
 CONSTRAINT [ci_builds_runner_session_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_daily_report_results]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_daily_report_results](
	[id] [bigint]  NOT NULL,
	[date] [date] NOT NULL,
	[project_id] [bigint] NOT NULL,
	[last_pipeline_id] [bigint] NOT NULL,
	[value] [float] NOT NULL,
	[param_type] [bigint] NOT NULL,
	[ref_path] [varchar](max) NOT NULL,
	[title] [varchar](max) NOT NULL,
 CONSTRAINT [ci_daily_report_results_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_group_variables]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_group_variables](
	[id] [int]  NOT NULL,
	[key] [varchar](max) NOT NULL,
	[value] [varchar](max) NULL,
	[encrypted_value] [varchar](max) NULL,
	[encrypted_value_salt] [varchar](max) NULL,
	[encrypted_value_iv] [varchar](max) NULL,
	[group_id] [int] NOT NULL,
	[protected] [bit] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[masked] [bit] NOT NULL,
	[variable_type] [smallint] NOT NULL,
 CONSTRAINT [ci_group_variables_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_job_artifacts]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_job_artifacts](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[job_id] [int] NOT NULL,
	[file_type] [int] NOT NULL,
	[size] [bigint] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[expire_at] [datetimeoffset](7) NULL,
	[file] [varchar](max) NULL,
	[file_store] [int] NULL,
	[file_sha256] [varbinary](1024) NULL,
	[file_format] [smallint] NULL,
	[file_location] [smallint] NULL,
 CONSTRAINT [ci_job_artifacts_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_job_variables]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_job_variables](
	[id] [bigint]  NOT NULL,
	[key] [varchar](max) NOT NULL,
	[encrypted_value] [varchar](max) NULL,
	[encrypted_value_iv] [varchar](max) NULL,
	[job_id] [bigint] NOT NULL,
	[variable_type] [smallint] NOT NULL,
	[source] [smallint] NOT NULL,
 CONSTRAINT [ci_job_variables_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_pipeline_chat_data]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_pipeline_chat_data](
	[id] [bigint]  NOT NULL,
	[pipeline_id] [int] NOT NULL,
	[chat_name_id] [int] NOT NULL,
	[response_url] [varchar](max) NOT NULL,
 CONSTRAINT [ci_pipeline_chat_data_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_pipeline_schedule_variables]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_pipeline_schedule_variables](
	[id] [int]  NOT NULL,
	[key] [varchar](max) NOT NULL,
	[value] [varchar](max) NULL,
	[encrypted_value] [varchar](max) NULL,
	[encrypted_value_salt] [varchar](max) NULL,
	[encrypted_value_iv] [varchar](max) NULL,
	[pipeline_schedule_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NULL,
	[updated_at] [datetimeoffset](7) NULL,
	[variable_type] [smallint] NOT NULL,
 CONSTRAINT [ci_pipeline_schedule_variables_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_pipeline_schedules]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_pipeline_schedules](
	[id] [int]  NOT NULL,
	[description] [varchar](max) NULL,
	[ref] [varchar](max) NULL,
	[cron] [varchar](max) NULL,
	[cron_timezone] [varchar](max) NULL,
	[next_run_at] [datetime] NULL,
	[project_id] [int] NULL,
	[owner_id] [int] NULL,
	[active] [bit] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [ci_pipeline_schedules_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_pipeline_variables]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_pipeline_variables](
	[id] [int]  NOT NULL,
	[key] [varchar](max) NOT NULL,
	[value] [varchar](max) NULL,
	[encrypted_value] [varchar](max) NULL,
	[encrypted_value_salt] [varchar](max) NULL,
	[encrypted_value_iv] [varchar](max) NULL,
	[pipeline_id] [int] NOT NULL,
	[variable_type] [smallint] NOT NULL,
 CONSTRAINT [ci_pipeline_variables_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_pipelines]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_pipelines](
	[id] [int]  NOT NULL,
	[ref] [varchar](max) NULL,
	[sha] [varchar](max) NULL,
	[before_sha] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[tag] [bit] NULL,
	[yaml_errors] [varchar](max) NULL,
	[committed_at] [datetime] NULL,
	[project_id] [int] NULL,
	[status] [varchar](max) NULL,
	[started_at] [datetime] NULL,
	[finished_at] [datetime] NULL,
	[duration] [int] NULL,
	[user_id] [int] NULL,
	[lock_version] [int] NULL,
	[auto_canceled_by_id] [int] NULL,
	[pipeline_schedule_id] [int] NULL,
	[source] [int] NULL,
	[config_source] [int] NULL,
	[protected] [bit] NULL,
	[failure_reason] [int] NULL,
	[iid] [int] NULL,
	[merge_request_id] [int] NULL,
	[source_sha] [varbinary](1024) NULL,
	[target_sha] [varbinary](1024) NULL,
	[external_pull_request_id] [bigint] NULL,
 CONSTRAINT [ci_pipelines_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_pipelines_config]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_pipelines_config](
	[pipeline_id] [bigint]  NOT NULL,
	[content] [varchar](max) NOT NULL,
 CONSTRAINT [ci_pipelines_config_pkey] PRIMARY KEY CLUSTERED 
(
	[pipeline_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_refs]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_refs](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[lock_version] [int] NULL,
	[last_updated_by_pipeline_id] [int] NULL,
	[tag] [bit] NOT NULL,
	[ref] [varchar](255) NOT NULL,
	[status] [varchar](255) NOT NULL,
 CONSTRAINT [ci_refs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ci_resource_groups]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_resource_groups](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [bigint] NOT NULL,
	[key] [varchar](255) NOT NULL,
 CONSTRAINT [ci_resource_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ci_resources]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_resources](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[resource_group_id] [bigint] NOT NULL,
	[build_id] [bigint] NULL,
 CONSTRAINT [ci_resources_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ci_runner_namespaces]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_runner_namespaces](
	[id] [int]  NOT NULL,
	[runner_id] [int] NULL,
	[namespace_id] [int] NULL,
 CONSTRAINT [ci_runner_namespaces_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ci_runner_projects]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_runner_projects](
	[id] [int]  NOT NULL,
	[runner_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[project_id] [int] NULL,
 CONSTRAINT [ci_runner_projects_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ci_runners]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_runners](
	[id] [int]  NOT NULL,
	[token] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[description] [varchar](max) NULL,
	[contacted_at] [datetime] NULL,
	[active] [bit] NOT NULL,
	[is_shared] [bit] NULL,
	[name] [varchar](max) NULL,
	[version] [varchar](max) NULL,
	[revision] [varchar](max) NULL,
	[platform] [varchar](max) NULL,
	[architecture] [varchar](max) NULL,
	[run_untagged] [bit] NOT NULL,
	[locked] [bit] NOT NULL,
	[access_level] [int] NOT NULL,
	[ip_address] [varchar](max) NULL,
	[maximum_timeout] [int] NULL,
	[runner_type] [smallint] NOT NULL,
	[token_encrypted] [varchar](max) NULL,
	[public_projects_minutes_cost_factor] [float] NOT NULL,
	[private_projects_minutes_cost_factor] [float] NOT NULL,
 CONSTRAINT [ci_runners_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_sources_pipelines]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_sources_pipelines](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[pipeline_id] [int] NULL,
	[source_project_id] [int] NULL,
	[source_job_id] [int] NULL,
	[source_pipeline_id] [int] NULL,
 CONSTRAINT [ci_sources_pipelines_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ci_sources_projects]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_sources_projects](
	[id] [bigint]  NOT NULL,
	[pipeline_id] [bigint] NOT NULL,
	[source_project_id] [bigint] NOT NULL,
 CONSTRAINT [ci_sources_projects_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ci_stages]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_stages](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[pipeline_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[name] [varchar](max) NULL,
	[status] [int] NULL,
	[lock_version] [int] NULL,
	[position] [int] NULL,
 CONSTRAINT [ci_stages_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_subscriptions_projects]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_subscriptions_projects](
	[id] [bigint]  NOT NULL,
	[downstream_project_id] [bigint] NOT NULL,
	[upstream_project_id] [bigint] NOT NULL,
 CONSTRAINT [ci_subscriptions_projects_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ci_trigger_requests]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_trigger_requests](
	[id] [int]  NOT NULL,
	[trigger_id] [int] NOT NULL,
	[variables] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[commit_id] [int] NULL,
 CONSTRAINT [ci_trigger_requests_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_triggers]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_triggers](
	[id] [int]  NOT NULL,
	[token] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[project_id] [int] NULL,
	[owner_id] [int] NOT NULL,
	[description] [varchar](max) NULL,
	[ref] [varchar](max) NULL,
 CONSTRAINT [ci_triggers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ci_variables]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ci_variables](
	[id] [int]  NOT NULL,
	[key] [varchar](max) NOT NULL,
	[value] [varchar](max) NULL,
	[encrypted_value] [varchar](max) NULL,
	[encrypted_value_salt] [varchar](max) NULL,
	[encrypted_value_iv] [varchar](max) NULL,
	[project_id] [int] NOT NULL,
	[protected] [bit] NOT NULL,
	[environment_scope] [varchar](max) NOT NULL,
	[masked] [bit] NOT NULL,
	[variable_type] [smallint] NOT NULL,
 CONSTRAINT [ci_variables_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[cluster_groups]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cluster_groups](
	[id] [int]  NOT NULL,
	[cluster_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
 CONSTRAINT [cluster_groups_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cluster_platforms_kubernetes]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cluster_platforms_kubernetes](
	[id] [int]  NOT NULL,
	[cluster_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[api_url] [varchar](max) NULL,
	[ca_cert] [varchar](max) NULL,
	[namespace] [varchar](max) NULL,
	[username] [varchar](max) NULL,
	[encrypted_password] [varchar](max) NULL,
	[encrypted_password_iv] [varchar](max) NULL,
	[encrypted_token] [varchar](max) NULL,
	[encrypted_token_iv] [varchar](max) NULL,
	[authorization_type] [smallint] NULL,
 CONSTRAINT [cluster_platforms_kubernetes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[cluster_projects]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cluster_projects](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[cluster_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [cluster_projects_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cluster_providers_aws]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cluster_providers_aws](
	[id] [bigint]  NOT NULL,
	[cluster_id] [bigint] NOT NULL,
	[created_by_user_id] [int] NULL,
	[num_nodes] [int] NOT NULL,
	[status] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[key_name] [varchar](255) NOT NULL,
	[role_arn] [varchar](2048) NOT NULL,
	[region] [varchar](255) NOT NULL,
	[vpc_id] [varchar](255) NOT NULL,
	[subnet_ids] [varchar](255) NOT NULL,
	[security_group_id] [varchar](255) NOT NULL,
	[instance_type] [varchar](255) NOT NULL,
	[access_key_id] [varchar](255) NULL,
	[encrypted_secret_access_key_iv] [varchar](255) NULL,
	[encrypted_secret_access_key] [varchar](max) NULL,
	[session_token] [varchar](max) NULL,
	[status_reason] [varchar](max) NULL,
 CONSTRAINT [cluster_providers_aws_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[cluster_providers_gcp]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cluster_providers_gcp](
	[id] [int]  NOT NULL,
	[cluster_id] [int] NOT NULL,
	[status] [int] NULL,
	[num_nodes] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[status_reason] [varchar](max) NULL,
	[gcp_project_id] [varchar](max) NOT NULL,
	[zone] [varchar](max) NOT NULL,
	[machine_type] [varchar](max) NULL,
	[operation_id] [varchar](max) NULL,
	[endpoint] [varchar](max) NULL,
	[encrypted_access_token] [varchar](max) NULL,
	[encrypted_access_token_iv] [varchar](max) NULL,
	[legacy_abac] [bit] NOT NULL,
	[cloud_run] [bit] NOT NULL,
 CONSTRAINT [cluster_providers_gcp_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[clusters]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[provider_type] [int] NULL,
	[platform_type] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[enabled] [bit] NULL,
	[name] [varchar](max) NOT NULL,
	[environment_scope] [varchar](max) NOT NULL,
	[cluster_type] [smallint] NOT NULL,
	[domain] [varchar](max) NULL,
	[managed] [bit] NOT NULL,
	[namespace_per_environment] [bit] NOT NULL,
	[management_project_id] [int] NULL,
	[cleanup_status] [smallint] NOT NULL,
	[cleanup_status_reason] [varchar](max) NULL,
 CONSTRAINT [clusters_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[clusters_applications_cert_managers]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters_applications_cert_managers](
	[id] [int]  NOT NULL,
	[cluster_id] [int] NOT NULL,
	[status] [int] NOT NULL,
	[version] [varchar](max) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[status_reason] [varchar](max) NULL,
 CONSTRAINT [clusters_applications_cert_managers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[clusters_applications_crossplane]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters_applications_crossplane](
	[id] [int]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[cluster_id] [bigint] NOT NULL,
	[status] [int] NOT NULL,
	[version] [varchar](255) NOT NULL,
	[stack] [varchar](255) NOT NULL,
	[status_reason] [varchar](max) NULL,
 CONSTRAINT [clusters_applications_crossplane_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[clusters_applications_elastic_stacks]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters_applications_elastic_stacks](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[cluster_id] [bigint] NOT NULL,
	[status] [int] NOT NULL,
	[version] [varchar](255) NOT NULL,
	[status_reason] [varchar](max) NULL,
 CONSTRAINT [clusters_applications_elastic_stacks_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[clusters_applications_helm]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters_applications_helm](
	[id] [int]  NOT NULL,
	[cluster_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[status] [int] NOT NULL,
	[version] [varchar](max) NOT NULL,
	[status_reason] [varchar](max) NULL,
	[encrypted_ca_key] [varchar](max) NULL,
	[encrypted_ca_key_iv] [varchar](max) NULL,
	[ca_cert] [varchar](max) NULL,
 CONSTRAINT [clusters_applications_helm_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[clusters_applications_ingress]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters_applications_ingress](
	[id] [int]  NOT NULL,
	[cluster_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[status] [int] NOT NULL,
	[ingress_type] [int] NOT NULL,
	[version] [varchar](max) NOT NULL,
	[cluster_ip] [varchar](max) NULL,
	[status_reason] [varchar](max) NULL,
	[external_ip] [varchar](max) NULL,
	[external_hostname] [varchar](max) NULL,
	[modsecurity_enabled] [bit] NULL,
	[modsecurity_mode] [smallint] NOT NULL,
 CONSTRAINT [clusters_applications_ingress_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[clusters_applications_jupyter]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters_applications_jupyter](
	[id] [int]  NOT NULL,
	[cluster_id] [int] NOT NULL,
	[oauth_application_id] [int] NULL,
	[status] [int] NOT NULL,
	[version] [varchar](max) NOT NULL,
	[hostname] [varchar](max) NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[status_reason] [varchar](max) NULL,
 CONSTRAINT [clusters_applications_jupyter_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[clusters_applications_knative]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters_applications_knative](
	[id] [int]  NOT NULL,
	[cluster_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[status] [int] NOT NULL,
	[version] [varchar](max) NOT NULL,
	[hostname] [varchar](max) NULL,
	[status_reason] [varchar](max) NULL,
	[external_ip] [varchar](max) NULL,
	[external_hostname] [varchar](max) NULL,
 CONSTRAINT [clusters_applications_knative_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[clusters_applications_prometheus]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters_applications_prometheus](
	[id] [int]  NOT NULL,
	[cluster_id] [int] NOT NULL,
	[status] [int] NOT NULL,
	[version] [varchar](max) NOT NULL,
	[status_reason] [varchar](max) NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[last_update_started_at] [datetimeoffset](7) NULL,
	[encrypted_alert_manager_token] [varchar](max) NULL,
	[encrypted_alert_manager_token_iv] [varchar](max) NULL,
	[healthy] [bit] NULL,
 CONSTRAINT [clusters_applications_prometheus_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[clusters_applications_runners]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters_applications_runners](
	[id] [int]  NOT NULL,
	[cluster_id] [int] NOT NULL,
	[runner_id] [int] NULL,
	[status] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[version] [varchar](max) NOT NULL,
	[status_reason] [varchar](max) NULL,
	[privileged] [bit] NOT NULL,
 CONSTRAINT [clusters_applications_runners_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[clusters_kubernetes_namespaces]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clusters_kubernetes_namespaces](
	[id] [bigint]  NOT NULL,
	[cluster_id] [int] NOT NULL,
	[project_id] [int] NULL,
	[cluster_project_id] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[encrypted_service_account_token] [varchar](max) NULL,
	[encrypted_service_account_token_iv] [varchar](max) NULL,
	[namespace] [varchar](max) NOT NULL,
	[service_account_name] [varchar](max) NULL,
	[environment_id] [bigint] NULL,
 CONSTRAINT [clusters_kubernetes_namespaces_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[commit_user_mentions]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[commit_user_mentions](
	[id] [bigint]  NOT NULL,
	[note_id] [int] NOT NULL,
	[mentioned_users_ids] [varchar](max) NULL,
	[mentioned_projects_ids] [varchar](max) NULL,
	[mentioned_groups_ids] [varchar](max) NULL,
	[commit_id] [varchar](max) NOT NULL,
 CONSTRAINT [commit_user_mentions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[container_expiration_policies]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[container_expiration_policies](
	[project_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[next_run_at] [datetimeoffset](7) NULL,
	[name_regex] [varchar](255) NULL,
	[cadence] [varchar](12) NOT NULL,
	[older_than] [varchar](12) NULL,
	[keep_n] [int] NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [container_expiration_policies_pkey] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[container_repositories]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[container_repositories](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [container_repositories_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[conversational_development_index_metrics]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[conversational_development_index_metrics](
	[id] [int]  NOT NULL,
	[leader_issues] [float] NOT NULL,
	[instance_issues] [float] NOT NULL,
	[leader_notes] [float] NOT NULL,
	[instance_notes] [float] NOT NULL,
	[leader_milestones] [float] NOT NULL,
	[instance_milestones] [float] NOT NULL,
	[leader_boards] [float] NOT NULL,
	[instance_boards] [float] NOT NULL,
	[leader_merge_requests] [float] NOT NULL,
	[instance_merge_requests] [float] NOT NULL,
	[leader_ci_pipelines] [float] NOT NULL,
	[instance_ci_pipelines] [float] NOT NULL,
	[leader_environments] [float] NOT NULL,
	[instance_environments] [float] NOT NULL,
	[leader_deployments] [float] NOT NULL,
	[instance_deployments] [float] NOT NULL,
	[leader_projects_prometheus_active] [float] NOT NULL,
	[instance_projects_prometheus_active] [float] NOT NULL,
	[leader_service_desk_issues] [float] NOT NULL,
	[instance_service_desk_issues] [float] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[percentage_boards] [float] NOT NULL,
	[percentage_ci_pipelines] [float] NOT NULL,
	[percentage_deployments] [float] NOT NULL,
	[percentage_environments] [float] NOT NULL,
	[percentage_issues] [float] NOT NULL,
	[percentage_merge_requests] [float] NOT NULL,
	[percentage_milestones] [float] NOT NULL,
	[percentage_notes] [float] NOT NULL,
	[percentage_projects_prometheus_active] [float] NOT NULL,
	[percentage_service_desk_issues] [float] NOT NULL,
 CONSTRAINT [conversational_development_index_metrics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dependency_proxy_blobs]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dependency_proxy_blobs](
	[id] [int]  NOT NULL,
	[group_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[size] [bigint] NULL,
	[file_store] [int] NULL,
	[file_name] [varchar](max) NOT NULL,
	[file] [varchar](max) NOT NULL,
 CONSTRAINT [dependency_proxy_blobs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[dependency_proxy_group_settings]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dependency_proxy_group_settings](
	[id] [int]  NOT NULL,
	[group_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [dependency_proxy_group_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deploy_keys_projects]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deploy_keys_projects](
	[id] [int]  NOT NULL,
	[deploy_key_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[can_push] [bit] NOT NULL,
 CONSTRAINT [deploy_keys_projects_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deploy_tokens]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deploy_tokens](
	[id] [int]  NOT NULL,
	[revoked] [bit] NULL,
	[read_repository] [bit] NOT NULL,
	[read_registry] [bit] NOT NULL,
	[expires_at] [datetimeoffset](7) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[name] [varchar](max) NOT NULL,
	[token] [varchar](max) NULL,
	[username] [varchar](max) NULL,
	[token_encrypted] [varchar](255) NULL,
	[deploy_token_type] [smallint] NOT NULL,
 CONSTRAINT [deploy_tokens_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[deployment_clusters]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deployment_clusters](
	[deployment_id] [int] NOT NULL,
	[cluster_id] [int] NOT NULL,
	[kubernetes_namespace] [varchar](255) NULL,
 CONSTRAINT [deployment_clusters_pkey] PRIMARY KEY CLUSTERED 
(
	[deployment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deployment_merge_requests]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deployment_merge_requests](
	[deployment_id] [int] NOT NULL,
	[merge_request_id] [int] NOT NULL,
	[environment_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[deployments]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[deployments](
	[id] [int]  NOT NULL,
	[iid] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[environment_id] [int] NOT NULL,
	[ref] [varchar](max) NOT NULL,
	[tag] [bit] NOT NULL,
	[sha] [varchar](max) NOT NULL,
	[user_id] [int] NULL,
	[deployable_id] [int] NULL,
	[deployable_type] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[on_stop] [varchar](max) NULL,
	[status] [smallint] NOT NULL,
	[finished_at] [datetimeoffset](7) NULL,
	[cluster_id] [int] NULL,
 CONSTRAINT [deployments_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[description_versions]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[description_versions](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[issue_id] [int] NULL,
	[merge_request_id] [int] NULL,
	[epic_id] [int] NULL,
	[description] [varchar](max) NULL,
	[deleted_at] [datetimeoffset](7) NULL,
 CONSTRAINT [description_versions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[design_management_designs]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[design_management_designs](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[issue_id] [int] NULL,
	[filename] [varchar](max) NOT NULL,
 CONSTRAINT [design_management_designs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[design_management_designs_versions]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[design_management_designs_versions](
	[id] [bigint]  NOT NULL,
	[design_id] [bigint] NOT NULL,
	[version_id] [bigint] NOT NULL,
	[event] [smallint] NOT NULL,
	[image_v432x230] [varchar](255) NULL,
 CONSTRAINT [design_management_designs_versions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[design_management_versions]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[design_management_versions](
	[id] [bigint]  NOT NULL,
	[sha] [varbinary](1024) NOT NULL,
	[issue_id] [bigint] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[author_id] [int] NULL,
 CONSTRAINT [design_management_versions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[design_user_mentions]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[design_user_mentions](
	[id] [bigint]  NOT NULL,
	[design_id] [int] NOT NULL,
	[note_id] [int] NOT NULL,
	[mentioned_users_ids] [varchar](max) NULL,
	[mentioned_projects_ids] [varchar](max) NULL,
	[mentioned_groups_ids] [varchar](max) NULL,
 CONSTRAINT [design_user_mentions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[draft_notes]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[draft_notes](
	[id] [bigint]  NOT NULL,
	[merge_request_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[resolve_discussion] [bit] NOT NULL,
	[discussion_id] [varchar](max) NULL,
	[note] [varchar](max) NOT NULL,
	[position] [varchar](max) NULL,
	[original_position] [varchar](max) NULL,
	[change_position] [varchar](max) NULL,
	[commit_id] [varbinary](1024) NULL,
 CONSTRAINT [draft_notes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[elasticsearch_indexed_namespaces]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[elasticsearch_indexed_namespaces](
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[namespace_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[elasticsearch_indexed_projects]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[elasticsearch_indexed_projects](
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[emails]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[emails](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[email] [varchar](max) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[confirmation_token] [varchar](max) NULL,
	[confirmed_at] [datetime] NULL,
	[confirmation_sent_at] [datetime] NULL,
 CONSTRAINT [emails_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[environments]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[environments](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[external_url] [varchar](max) NULL,
	[environment_type] [varchar](max) NULL,
	[state] [varchar](max) NOT NULL,
	[slug] [varchar](max) NOT NULL,
	[auto_stop_at] [datetimeoffset](7) NULL,
 CONSTRAINT [environments_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[epic_issues]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[epic_issues](
	[id] [int]  NOT NULL,
	[epic_id] [int] NOT NULL,
	[issue_id] [int] NOT NULL,
	[relative_position] [int] NULL,
 CONSTRAINT [epic_issues_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[epic_metrics]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[epic_metrics](
	[id] [int]  NOT NULL,
	[epic_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [epic_metrics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[epic_user_mentions]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[epic_user_mentions](
	[id] [bigint]  NOT NULL,
	[epic_id] [int] NOT NULL,
	[note_id] [int] NULL,
	[mentioned_users_ids] [varchar](max) NULL,
	[mentioned_projects_ids] [varchar](max) NULL,
	[mentioned_groups_ids] [varchar](max) NULL,
 CONSTRAINT [epic_user_mentions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[epics]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[epics](
	[id] [int]  NOT NULL,
	[group_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[assignee_id] [int] NULL,
	[iid] [int] NOT NULL,
	[cached_markdown_version] [int] NULL,
	[updated_by_id] [int] NULL,
	[last_edited_by_id] [int] NULL,
	[lock_version] [int] NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[last_edited_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[title] [varchar](max) NOT NULL,
	[title_html] [varchar](max) NOT NULL,
	[description] [varchar](max) NULL,
	[description_html] [varchar](max) NULL,
	[start_date_sourcing_milestone_id] [int] NULL,
	[due_date_sourcing_milestone_id] [int] NULL,
	[start_date_fixed] [date] NULL,
	[due_date_fixed] [date] NULL,
	[start_date_is_fixed] [bit] NULL,
	[due_date_is_fixed] [bit] NULL,
	[closed_by_id] [int] NULL,
	[closed_at] [datetime] NULL,
	[parent_id] [int] NULL,
	[relative_position] [int] NULL,
	[state_id] [smallint] NOT NULL,
	[start_date_sourcing_epic_id] [int] NULL,
	[due_date_sourcing_epic_id] [int] NULL,
	[health_status] [smallint] NULL,
	[external_key] [varchar](255) NULL,
 CONSTRAINT [epics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[events](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[author_id] [int] NOT NULL,
	[target_id] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[action] [smallint] NOT NULL,
	[target_type] [varchar](max) NULL,
	[group_id] [bigint] NULL,
 CONSTRAINT [events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[evidences]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[evidences](
	[id] [bigint]  NOT NULL,
	[release_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[summary_sha] [varbinary](1024) NULL,
	[summary] [varchar](max) NOT NULL,
 CONSTRAINT [evidences_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[external_pull_requests]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[external_pull_requests](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [bigint] NOT NULL,
	[pull_request_iid] [int] NOT NULL,
	[status] [smallint] NOT NULL,
	[source_branch] [varchar](255) NOT NULL,
	[target_branch] [varchar](255) NOT NULL,
	[source_repository] [varchar](255) NOT NULL,
	[target_repository] [varchar](255) NOT NULL,
	[source_sha] [varbinary](1024) NOT NULL,
	[target_sha] [varbinary](1024) NOT NULL,
 CONSTRAINT [external_pull_requests_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feature_gates]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feature_gates](
	[id] [int]  NOT NULL,
	[feature_key] [varchar](max) NOT NULL,
	[key] [varchar](max) NOT NULL,
	[value] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [feature_gates_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[features]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[features](
	[id] [int]  NOT NULL,
	[key] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [features_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[fork_network_members]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fork_network_members](
	[id] [int]  NOT NULL,
	[fork_network_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[forked_from_project_id] [int] NULL,
 CONSTRAINT [fork_network_members_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[fork_networks]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[fork_networks](
	[id] [int]  NOT NULL,
	[root_project_id] [int] NULL,
	[deleted_root_project_name] [varchar](max) NULL,
 CONSTRAINT [fork_networks_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_cache_invalidation_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_cache_invalidation_events](
	[id] [bigint]  NOT NULL,
	[key] [varchar](max) NOT NULL,
 CONSTRAINT [geo_cache_invalidation_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_container_repository_updated_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_container_repository_updated_events](
	[id] [bigint]  NOT NULL,
	[container_repository_id] [int] NOT NULL,
 CONSTRAINT [geo_container_repository_updated_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geo_event_log]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_event_log](
	[id] [bigint]  NOT NULL,
	[created_at] [datetime] NOT NULL,
	[repository_updated_event_id] [bigint] NULL,
	[repository_deleted_event_id] [bigint] NULL,
	[repository_renamed_event_id] [bigint] NULL,
	[repositories_changed_event_id] [bigint] NULL,
	[repository_created_event_id] [bigint] NULL,
	[hashed_storage_migrated_event_id] [bigint] NULL,
	[lfs_object_deleted_event_id] [bigint] NULL,
	[hashed_storage_attachments_event_id] [bigint] NULL,
	[upload_deleted_event_id] [bigint] NULL,
	[job_artifact_deleted_event_id] [bigint] NULL,
	[reset_checksum_event_id] [bigint] NULL,
	[cache_invalidation_event_id] [bigint] NULL,
	[container_repository_updated_event_id] [bigint] NULL,
	[geo_event_id] [int] NULL,
 CONSTRAINT [geo_event_log_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geo_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_events](
	[id] [bigint]  NOT NULL,
	[replicable_name] [varchar](255) NOT NULL,
	[event_name] [varchar](255) NOT NULL,
	[payload] [varchar](max) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [geo_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_hashed_storage_attachments_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_hashed_storage_attachments_events](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[old_attachments_path] [varchar](max) NOT NULL,
	[new_attachments_path] [varchar](max) NOT NULL,
 CONSTRAINT [geo_hashed_storage_attachments_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_hashed_storage_migrated_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_hashed_storage_migrated_events](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[repository_storage_name] [varchar](max) NOT NULL,
	[old_disk_path] [varchar](max) NOT NULL,
	[new_disk_path] [varchar](max) NOT NULL,
	[old_wiki_disk_path] [varchar](max) NOT NULL,
	[new_wiki_disk_path] [varchar](max) NOT NULL,
	[old_storage_version] [smallint] NULL,
	[new_storage_version] [smallint] NOT NULL,
	[old_design_disk_path] [varchar](max) NULL,
	[new_design_disk_path] [varchar](max) NULL,
 CONSTRAINT [geo_hashed_storage_migrated_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_job_artifact_deleted_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_job_artifact_deleted_events](
	[id] [bigint]  NOT NULL,
	[job_artifact_id] [int] NOT NULL,
	[file_path] [varchar](max) NOT NULL,
 CONSTRAINT [geo_job_artifact_deleted_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_lfs_object_deleted_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_lfs_object_deleted_events](
	[id] [bigint]  NOT NULL,
	[lfs_object_id] [int] NOT NULL,
	[oid] [varchar](max) NOT NULL,
	[file_path] [varchar](max) NOT NULL,
 CONSTRAINT [geo_lfs_object_deleted_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_node_namespace_links]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_node_namespace_links](
	[id] [int]  NOT NULL,
	[geo_node_id] [int] NOT NULL,
	[namespace_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [geo_node_namespace_links_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geo_node_statuses]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_node_statuses](
	[id] [int]  NOT NULL,
	[geo_node_id] [int] NOT NULL,
	[db_replication_lag_seconds] [int] NULL,
	[repositories_synced_count] [int] NULL,
	[repositories_failed_count] [int] NULL,
	[lfs_objects_count] [int] NULL,
	[lfs_objects_synced_count] [int] NULL,
	[lfs_objects_failed_count] [int] NULL,
	[attachments_count] [int] NULL,
	[attachments_synced_count] [int] NULL,
	[attachments_failed_count] [int] NULL,
	[last_event_id] [int] NULL,
	[last_event_date] [datetime] NULL,
	[cursor_last_event_id] [int] NULL,
	[cursor_last_event_date] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[last_successful_status_check_at] [datetime] NULL,
	[status_message] [varchar](max) NULL,
	[replication_slots_count] [int] NULL,
	[replication_slots_used_count] [int] NULL,
	[replication_slots_max_retained_wal_bytes] [bigint] NULL,
	[wikis_synced_count] [int] NULL,
	[wikis_failed_count] [int] NULL,
	[job_artifacts_count] [int] NULL,
	[job_artifacts_synced_count] [int] NULL,
	[job_artifacts_failed_count] [int] NULL,
	[version] [varchar](max) NULL,
	[revision] [varchar](max) NULL,
	[repositories_verified_count] [int] NULL,
	[repositories_verification_failed_count] [int] NULL,
	[wikis_verified_count] [int] NULL,
	[wikis_verification_failed_count] [int] NULL,
	[lfs_objects_synced_missing_on_primary_count] [int] NULL,
	[job_artifacts_synced_missing_on_primary_count] [int] NULL,
	[attachments_synced_missing_on_primary_count] [int] NULL,
	[repositories_checksummed_count] [int] NULL,
	[repositories_checksum_failed_count] [int] NULL,
	[repositories_checksum_mismatch_count] [int] NULL,
	[wikis_checksummed_count] [int] NULL,
	[wikis_checksum_failed_count] [int] NULL,
	[wikis_checksum_mismatch_count] [int] NULL,
	[storage_configuration_digest] [varbinary](1024) NULL,
	[repositories_retrying_verification_count] [int] NULL,
	[wikis_retrying_verification_count] [int] NULL,
	[projects_count] [int] NULL,
	[container_repositories_count] [int] NULL,
	[container_repositories_synced_count] [int] NULL,
	[container_repositories_failed_count] [int] NULL,
	[container_repositories_registry_count] [int] NULL,
	[design_repositories_count] [int] NULL,
	[design_repositories_synced_count] [int] NULL,
	[design_repositories_failed_count] [int] NULL,
	[design_repositories_registry_count] [int] NULL,
 CONSTRAINT [geo_node_statuses_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_nodes]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_nodes](
	[id] [int]  NOT NULL,
	[primary] [bit] NOT NULL,
	[oauth_application_id] [int] NULL,
	[enabled] [bit] NOT NULL,
	[access_key] [varchar](max) NULL,
	[encrypted_secret_access_key] [varchar](max) NULL,
	[encrypted_secret_access_key_iv] [varchar](max) NULL,
	[clone_url_prefix] [varchar](max) NULL,
	[files_max_capacity] [int] NOT NULL,
	[repos_max_capacity] [int] NOT NULL,
	[url] [varchar](max) NOT NULL,
	[selective_sync_type] [varchar](max) NULL,
	[selective_sync_shards] [varchar](max) NULL,
	[verification_max_capacity] [int] NOT NULL,
	[minimum_reverification_interval] [int] NOT NULL,
	[internal_url] [varchar](max) NULL,
	[name] [varchar](max) NOT NULL,
	[container_repositories_max_capacity] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NULL,
	[updated_at] [datetimeoffset](7) NULL,
	[sync_object_storage] [bit] NOT NULL,
 CONSTRAINT [geo_nodes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_repositories_changed_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_repositories_changed_events](
	[id] [bigint]  NOT NULL,
	[geo_node_id] [int] NOT NULL,
 CONSTRAINT [geo_repositories_changed_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geo_repository_created_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_repository_created_events](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[repository_storage_name] [varchar](max) NOT NULL,
	[repo_path] [varchar](max) NOT NULL,
	[wiki_path] [varchar](max) NULL,
	[project_name] [varchar](max) NOT NULL,
 CONSTRAINT [geo_repository_created_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_repository_deleted_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_repository_deleted_events](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[repository_storage_name] [varchar](max) NOT NULL,
	[deleted_path] [varchar](max) NOT NULL,
	[deleted_wiki_path] [varchar](max) NULL,
	[deleted_project_name] [varchar](max) NOT NULL,
 CONSTRAINT [geo_repository_deleted_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_repository_renamed_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_repository_renamed_events](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[repository_storage_name] [varchar](max) NOT NULL,
	[old_path_with_namespace] [varchar](max) NOT NULL,
	[new_path_with_namespace] [varchar](max) NOT NULL,
	[old_wiki_path_with_namespace] [varchar](max) NOT NULL,
	[new_wiki_path_with_namespace] [varchar](max) NOT NULL,
	[old_path] [varchar](max) NOT NULL,
	[new_path] [varchar](max) NOT NULL,
 CONSTRAINT [geo_repository_renamed_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_repository_updated_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_repository_updated_events](
	[id] [bigint]  NOT NULL,
	[branches_affected] [int] NOT NULL,
	[tags_affected] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[source] [smallint] NOT NULL,
	[new_branch] [bit] NOT NULL,
	[remove_branch] [bit] NOT NULL,
	[ref] [varchar](max) NULL,
 CONSTRAINT [geo_repository_updated_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[geo_reset_checksum_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_reset_checksum_events](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
 CONSTRAINT [geo_reset_checksum_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[geo_upload_deleted_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[geo_upload_deleted_events](
	[id] [bigint]  NOT NULL,
	[upload_id] [int] NOT NULL,
	[file_path] [varchar](max) NOT NULL,
	[model_id] [int] NOT NULL,
	[model_type] [varchar](max) NOT NULL,
	[uploader] [varchar](max) NOT NULL,
 CONSTRAINT [geo_upload_deleted_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[gitlab_subscription_histories]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gitlab_subscription_histories](
	[id] [bigint]  NOT NULL,
	[gitlab_subscription_created_at] [datetimeoffset](7) NULL,
	[gitlab_subscription_updated_at] [datetimeoffset](7) NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[trial_ends_on] [date] NULL,
	[namespace_id] [int] NULL,
	[hosted_plan_id] [int] NULL,
	[max_seats_used] [int] NULL,
	[seats] [int] NULL,
	[trial] [bit] NULL,
	[change_type] [smallint] NULL,
	[gitlab_subscription_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NULL,
	[trial_starts_on] [date] NULL,
	[auto_renew] [bit] NULL,
 CONSTRAINT [gitlab_subscription_histories_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gitlab_subscriptions]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gitlab_subscriptions](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[start_date] [date] NULL,
	[end_date] [date] NULL,
	[trial_ends_on] [date] NULL,
	[namespace_id] [int] NULL,
	[hosted_plan_id] [int] NULL,
	[max_seats_used] [int] NULL,
	[seats] [int] NULL,
	[trial] [bit] NULL,
	[trial_starts_on] [date] NULL,
	[auto_renew] [bit] NULL,
 CONSTRAINT [gitlab_subscriptions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gpg_key_subkeys]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gpg_key_subkeys](
	[id] [int]  NOT NULL,
	[gpg_key_id] [int] NOT NULL,
	[keyid] [varbinary](1024) NULL,
	[fingerprint] [varbinary](1024) NULL,
 CONSTRAINT [gpg_key_subkeys_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[gpg_keys]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gpg_keys](
	[id] [int]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[user_id] [int] NULL,
	[primary_keyid] [varbinary](1024) NULL,
	[fingerprint] [varbinary](1024) NULL,
	[key] [varchar](max) NULL,
 CONSTRAINT [gpg_keys_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[gpg_signatures]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gpg_signatures](
	[id] [int]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [int] NULL,
	[gpg_key_id] [int] NULL,
	[commit_sha] [varbinary](1024) NULL,
	[gpg_key_primary_keyid] [varbinary](1024) NULL,
	[gpg_key_user_name] [varchar](max) NULL,
	[gpg_key_user_email] [varchar](max) NULL,
	[verification_status] [smallint] NOT NULL,
	[gpg_key_subkey_id] [int] NULL,
 CONSTRAINT [gpg_signatures_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[grafana_integrations]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[grafana_integrations](
	[id] [bigint]  NOT NULL,
	[project_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[encrypted_token] [varchar](255) NOT NULL,
	[encrypted_token_iv] [varchar](255) NOT NULL,
	[grafana_url] [varchar](1024) NOT NULL,
	[enabled] [bit] NOT NULL,
 CONSTRAINT [grafana_integrations_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_custom_attributes]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_custom_attributes](
	[id] [int]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[group_id] [int] NOT NULL,
	[key] [varchar](max) NOT NULL,
	[value] [varchar](max) NOT NULL,
 CONSTRAINT [group_custom_attributes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[group_deletion_schedules]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_deletion_schedules](
	[group_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[marked_for_deletion_on] [date] NOT NULL,
 CONSTRAINT [group_deletion_schedules_pkey] PRIMARY KEY CLUSTERED 
(
	[group_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_deploy_tokens]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_deploy_tokens](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[group_id] [bigint] NOT NULL,
	[deploy_token_id] [bigint] NOT NULL,
 CONSTRAINT [group_deploy_tokens_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[group_group_links]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[group_group_links](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[shared_group_id] [bigint] NOT NULL,
	[shared_with_group_id] [bigint] NOT NULL,
	[expires_at] [date] NULL,
	[group_access] [smallint] NOT NULL,
 CONSTRAINT [group_group_links_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historical_data]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historical_data](
	[id] [int]  NOT NULL,
	[date] [date] NOT NULL,
	[active_user_count] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [historical_data_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[identities]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[identities](
	[id] [int]  NOT NULL,
	[extern_uid] [varchar](max) NULL,
	[provider] [varchar](max) NULL,
	[user_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[secondary_extern_uid] [varchar](max) NULL,
	[saml_provider_id] [int] NULL,
 CONSTRAINT [identities_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[import_export_uploads]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[import_export_uploads](
	[id] [int]  NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [int] NULL,
	[import_file] [varchar](max) NULL,
	[export_file] [varchar](max) NULL,
	[group_id] [bigint] NULL,
 CONSTRAINT [import_export_uploads_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[import_failures]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[import_failures](
	[id] [bigint]  NOT NULL,
	[relation_index] [int] NULL,
	[project_id] [bigint] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[relation_key] [varchar](64) NULL,
	[exception_class] [varchar](128) NULL,
	[correlation_id_value] [varchar](128) NULL,
	[exception_message] [varchar](255) NULL,
	[retry_count] [int] NULL,
	[group_id] [int] NULL,
	[source] [varchar](128) NULL,
 CONSTRAINT [import_failures_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[index_statuses]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[index_statuses](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[indexed_at] [datetime] NULL,
	[note] [varchar](max) NULL,
	[last_commit] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[last_wiki_commit] [varbinary](1024) NULL,
	[wiki_indexed_at] [datetimeoffset](7) NULL,
 CONSTRAINT [index_statuses_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[insights]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[insights](
	[id] [int]  NOT NULL,
	[namespace_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
 CONSTRAINT [insights_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[internal_ids]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[internal_ids](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NULL,
	[usage] [int] NOT NULL,
	[last_value] [int] NOT NULL,
	[namespace_id] [int] NULL,
 CONSTRAINT [internal_ids_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ip_restrictions]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ip_restrictions](
	[id] [bigint]  NOT NULL,
	[group_id] [int] NOT NULL,
	[range] [varchar](max) NOT NULL,
 CONSTRAINT [ip_restrictions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[issue_assignees]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issue_assignees](
	[user_id] [int] NOT NULL,
	[issue_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[issue_links]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issue_links](
	[id] [int]  NOT NULL,
	[source_id] [int] NOT NULL,
	[target_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[link_type] [smallint] NOT NULL,
 CONSTRAINT [issue_links_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[issue_metrics]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issue_metrics](
	[id] [int]  NOT NULL,
	[issue_id] [int] NOT NULL,
	[first_mentioned_in_commit_at] [datetime] NULL,
	[first_associated_with_milestone_at] [datetime] NULL,
	[first_added_to_board_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [issue_metrics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[issue_tracker_data]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issue_tracker_data](
	[id] [bigint]  NOT NULL,
	[service_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[encrypted_project_url] [varchar](max) NULL,
	[encrypted_project_url_iv] [varchar](max) NULL,
	[encrypted_issues_url] [varchar](max) NULL,
	[encrypted_issues_url_iv] [varchar](max) NULL,
	[encrypted_new_issue_url] [varchar](max) NULL,
	[encrypted_new_issue_url_iv] [varchar](max) NULL,
 CONSTRAINT [issue_tracker_data_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[issue_user_mentions]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issue_user_mentions](
	[id] [bigint]  NOT NULL,
	[issue_id] [int] NOT NULL,
	[note_id] [int] NULL,
	[mentioned_users_ids] [varchar](max) NULL,
	[mentioned_projects_ids] [varchar](max) NULL,
	[mentioned_groups_ids] [varchar](max) NULL,
 CONSTRAINT [issue_user_mentions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[issues]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issues](
	[id] [int]  NOT NULL,
	[title] [varchar](max) NULL,
	[author_id] [int] NULL,
	[project_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[description] [varchar](max) NULL,
	[milestone_id] [int] NULL,
	[iid] [int] NULL,
	[updated_by_id] [int] NULL,
	[weight] [int] NULL,
	[confidential] [bit] NOT NULL,
	[due_date] [date] NULL,
	[moved_to_id] [int] NULL,
	[lock_version] [int] NULL,
	[title_html] [varchar](max) NULL,
	[description_html] [varchar](max) NULL,
	[time_estimate] [int] NULL,
	[relative_position] [int] NULL,
	[service_desk_reply_to] [varchar](max) NULL,
	[cached_markdown_version] [int] NULL,
	[last_edited_at] [datetime] NULL,
	[last_edited_by_id] [int] NULL,
	[discussion_locked] [bit] NULL,
	[closed_at] [datetimeoffset](7) NULL,
	[closed_by_id] [int] NULL,
	[state_id] [smallint] NOT NULL,
	[duplicated_to_id] [int] NULL,
	[promoted_to_epic_id] [int] NULL,
	[health_status] [smallint] NULL,
	[external_key] [varchar](255) NULL,
 CONSTRAINT [issues_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[issues_prometheus_alert_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issues_prometheus_alert_events](
	[issue_id] [bigint] NOT NULL,
	[prometheus_alert_event_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[issues_self_managed_prometheus_alert_events]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[issues_self_managed_prometheus_alert_events](
	[issue_id] [bigint] NOT NULL,
	[self_managed_prometheus_alert_event_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jira_connect_installations]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jira_connect_installations](
	[id] [bigint]  NOT NULL,
	[client_key] [varchar](max) NULL,
	[encrypted_shared_secret] [varchar](max) NULL,
	[encrypted_shared_secret_iv] [varchar](max) NULL,
	[base_url] [varchar](max) NULL,
 CONSTRAINT [jira_connect_installations_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[jira_connect_subscriptions]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jira_connect_subscriptions](
	[id] [bigint]  NOT NULL,
	[jira_connect_installation_id] [bigint] NOT NULL,
	[namespace_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [jira_connect_subscriptions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[jira_tracker_data]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[jira_tracker_data](
	[id] [bigint]  NOT NULL,
	[service_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[encrypted_url] [varchar](max) NULL,
	[encrypted_url_iv] [varchar](max) NULL,
	[encrypted_api_url] [varchar](max) NULL,
	[encrypted_api_url_iv] [varchar](max) NULL,
	[encrypted_username] [varchar](max) NULL,
	[encrypted_username_iv] [varchar](max) NULL,
	[encrypted_password] [varchar](max) NULL,
	[encrypted_password_iv] [varchar](max) NULL,
	[jira_issue_transition_id] [varchar](max) NULL,
 CONSTRAINT [jira_tracker_data_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[keys]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[keys](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[key] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[type] [varchar](max) NULL,
	[fingerprint] [varchar](max) NULL,
	[public] [bit] NOT NULL,
	[last_used_at] [datetime] NULL,
	[fingerprint_sha256] [varbinary](1024) NULL,
	[expires_at] [datetimeoffset](7) NULL,
 CONSTRAINT [keys_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[label_links]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[label_links](
	[id] [int]  NOT NULL,
	[label_id] [int] NULL,
	[target_id] [int] NULL,
	[target_type] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [label_links_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[label_priorities]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[label_priorities](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[label_id] [int] NOT NULL,
	[priority] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [label_priorities_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[labels]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[labels](
	[id] [int]  NOT NULL,
	[title] [varchar](max) NULL,
	[color] [varchar](max) NULL,
	[project_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[template] [bit] NULL,
	[description] [varchar](max) NULL,
	[description_html] [varchar](max) NULL,
	[type] [varchar](max) NULL,
	[group_id] [int] NULL,
	[cached_markdown_version] [int] NULL,
 CONSTRAINT [labels_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[ldap_group_links]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ldap_group_links](
	[id] [int]  NOT NULL,
	[cn] [varchar](max) NULL,
	[group_access] [int] NOT NULL,
	[group_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[provider] [varchar](max) NULL,
	[filter] [varchar](max) NULL,
 CONSTRAINT [ldap_group_links_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[lfs_file_locks]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lfs_file_locks](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[path] [varchar](511) NULL,
 CONSTRAINT [lfs_file_locks_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lfs_objects]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lfs_objects](
	[id] [int]  NOT NULL,
	[oid] [varchar](max) NOT NULL,
	[size] [bigint] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[file] [varchar](max) NULL,
	[file_store] [int] NULL,
 CONSTRAINT [lfs_objects_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[lfs_objects_projects]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lfs_objects_projects](
	[id] [int]  NOT NULL,
	[lfs_object_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[repository_type] [smallint] NULL,
 CONSTRAINT [lfs_objects_projects_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[licenses]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[licenses](
	[id] [int]  NOT NULL,
	[data] [varchar](max) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [licenses_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[list_user_preferences]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[list_user_preferences](
	[id] [bigint]  NOT NULL,
	[user_id] [bigint] NOT NULL,
	[list_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[collapsed] [bit] NULL,
 CONSTRAINT [list_user_preferences_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[lists]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lists](
	[id] [int]  NOT NULL,
	[board_id] [int] NOT NULL,
	[label_id] [int] NULL,
	[list_type] [int] NOT NULL,
	[position] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[user_id] [int] NULL,
	[milestone_id] [int] NULL,
	[max_issue_count] [int] NOT NULL,
	[max_issue_weight] [int] NOT NULL,
	[limit_metric] [varchar](20) NULL,
 CONSTRAINT [lists_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[members]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[members](
	[id] [int]  NOT NULL,
	[access_level] [int] NOT NULL,
	[source_id] [int] NOT NULL,
	[source_type] [varchar](max) NOT NULL,
	[user_id] [int] NULL,
	[notification_level] [int] NOT NULL,
	[type] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[created_by_id] [int] NULL,
	[invite_email] [varchar](max) NULL,
	[invite_token] [varchar](max) NULL,
	[invite_accepted_at] [datetime] NULL,
	[requested_at] [datetime] NULL,
	[expires_at] [date] NULL,
	[ldap] [bit] NOT NULL,
	[override] [bit] NOT NULL,
 CONSTRAINT [members_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[merge_request_assignees]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_request_assignees](
	[id] [bigint]  NOT NULL,
	[user_id] [int] NOT NULL,
	[merge_request_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NULL,
 CONSTRAINT [merge_request_assignees_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[merge_request_blocks]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_request_blocks](
	[id] [bigint]  NOT NULL,
	[blocking_merge_request_id] [int] NOT NULL,
	[blocked_merge_request_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [merge_request_blocks_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[merge_request_context_commit_diff_files]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_request_context_commit_diff_files](
	[sha] [varbinary](1024) NOT NULL,
	[relative_order] [int] NOT NULL,
	[new_file] [bit] NOT NULL,
	[renamed_file] [bit] NOT NULL,
	[deleted_file] [bit] NOT NULL,
	[too_large] [bit] NOT NULL,
	[a_mode] [varchar](255) NOT NULL,
	[b_mode] [varchar](255) NOT NULL,
	[new_path] [varchar](max) NOT NULL,
	[old_path] [varchar](max) NOT NULL,
	[diff] [varchar](max) NULL,
	[binary] [bit] NULL,
	[merge_request_context_commit_id] [bigint] NULL
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[merge_request_context_commits]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_request_context_commits](
	[id] [bigint]  NOT NULL,
	[authored_date] [datetimeoffset](7) NULL,
	[committed_date] [datetimeoffset](7) NULL,
	[relative_order] [int] NOT NULL,
	[sha] [varbinary](1024) NOT NULL,
	[author_name] [varchar](max) NULL,
	[author_email] [varchar](max) NULL,
	[committer_name] [varchar](max) NULL,
	[committer_email] [varchar](max) NULL,
	[message] [varchar](max) NULL,
	[merge_request_id] [bigint] NULL,
 CONSTRAINT [merge_request_context_commits_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[merge_request_diff_commits]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_request_diff_commits](
	[authored_date] [datetime] NULL,
	[committed_date] [datetime] NULL,
	[merge_request_diff_id] [int] NOT NULL,
	[relative_order] [int] NOT NULL,
	[sha] [varbinary](1024) NOT NULL,
	[author_name] [varchar](max) NULL,
	[author_email] [varchar](max) NULL,
	[committer_name] [varchar](max) NULL,
	[committer_email] [varchar](max) NULL,
	[message] [varchar](max) NULL
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[merge_request_diff_files]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_request_diff_files](
	[merge_request_diff_id] [int] NOT NULL,
	[relative_order] [int] NOT NULL,
	[new_file] [bit] NOT NULL,
	[renamed_file] [bit] NOT NULL,
	[deleted_file] [bit] NOT NULL,
	[too_large] [bit] NOT NULL,
	[a_mode] [varchar](max) NOT NULL,
	[b_mode] [varchar](max) NOT NULL,
	[new_path] [varchar](max) NOT NULL,
	[old_path] [varchar](max) NOT NULL,
	[diff] [varchar](max) NULL,
	[binary] [bit] NULL,
	[external_diff_offset] [int] NULL,
	[external_diff_size] [int] NULL
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[merge_request_diffs]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_request_diffs](
	[id] [int]  NOT NULL,
	[state] [varchar](max) NULL,
	[merge_request_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[base_commit_sha] [varchar](max) NULL,
	[real_size] [varchar](max) NULL,
	[head_commit_sha] [varchar](max) NULL,
	[start_commit_sha] [varchar](max) NULL,
	[commits_count] [int] NULL,
	[external_diff] [varchar](max) NULL,
	[external_diff_store] [int] NULL,
	[stored_externally] [bit] NULL,
 CONSTRAINT [merge_request_diffs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[merge_request_metrics]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_request_metrics](
	[id] [int]  NOT NULL,
	[merge_request_id] [int] NOT NULL,
	[latest_build_started_at] [datetime] NULL,
	[latest_build_finished_at] [datetime] NULL,
	[first_deployed_to_production_at] [datetime] NULL,
	[merged_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[pipeline_id] [int] NULL,
	[merged_by_id] [int] NULL,
	[latest_closed_by_id] [int] NULL,
	[latest_closed_at] [datetimeoffset](7) NULL,
	[first_comment_at] [datetimeoffset](7) NULL,
	[first_commit_at] [datetimeoffset](7) NULL,
	[last_commit_at] [datetimeoffset](7) NULL,
	[diff_size] [int] NULL,
	[modified_paths_size] [int] NULL,
	[commits_count] [int] NULL,
	[first_approved_at] [datetimeoffset](7) NULL,
	[first_reassigned_at] [datetimeoffset](7) NULL,
 CONSTRAINT [merge_request_metrics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[merge_request_user_mentions]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_request_user_mentions](
	[id] [bigint]  NOT NULL,
	[merge_request_id] [int] NOT NULL,
	[note_id] [int] NULL,
	[mentioned_users_ids] [varchar](max) NULL,
	[mentioned_projects_ids] [varchar](max) NULL,
	[mentioned_groups_ids] [varchar](max) NULL,
 CONSTRAINT [merge_request_user_mentions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[merge_requests]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_requests](
	[id] [int]  NOT NULL,
	[target_branch] [varchar](max) NOT NULL,
	[source_branch] [varchar](max) NOT NULL,
	[source_project_id] [int] NULL,
	[author_id] [int] NULL,
	[assignee_id] [int] NULL,
	[title] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[milestone_id] [int] NULL,
	[merge_status] [varchar](max) NOT NULL,
	[target_project_id] [int] NOT NULL,
	[iid] [int] NULL,
	[description] [varchar](max) NULL,
	[updated_by_id] [int] NULL,
	[merge_error] [varchar](max) NULL,
	[merge_params] [varchar](max) NULL,
	[merge_when_pipeline_succeeds] [bit] NOT NULL,
	[merge_user_id] [int] NULL,
	[merge_commit_sha] [varchar](max) NULL,
	[approvals_before_merge] [int] NULL,
	[rebase_commit_sha] [varchar](max) NULL,
	[in_progress_merge_commit_sha] [varchar](max) NULL,
	[lock_version] [int] NULL,
	[title_html] [varchar](max) NULL,
	[description_html] [varchar](max) NULL,
	[time_estimate] [int] NULL,
	[squash] [bit] NOT NULL,
	[cached_markdown_version] [int] NULL,
	[last_edited_at] [datetime] NULL,
	[last_edited_by_id] [int] NULL,
	[head_pipeline_id] [int] NULL,
	[merge_jid] [varchar](max) NULL,
	[discussion_locked] [bit] NULL,
	[latest_merge_request_diff_id] [int] NULL,
	[allow_maintainer_to_push] [bit] NULL,
	[state_id] [smallint] NOT NULL,
	[rebase_jid] [varchar](max) NULL,
	[squash_commit_sha] [varbinary](1024) NULL,
 CONSTRAINT [merge_requests_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[merge_requests_closing_issues]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_requests_closing_issues](
	[id] [int]  NOT NULL,
	[merge_request_id] [int] NOT NULL,
	[issue_id] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [merge_requests_closing_issues_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[merge_trains]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[merge_trains](
	[id] [bigint]  NOT NULL,
	[merge_request_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[pipeline_id] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[target_project_id] [int] NOT NULL,
	[target_branch] [varchar](max) NOT NULL,
	[status] [smallint] NOT NULL,
	[merged_at] [datetimeoffset](7) NULL,
	[duration] [int] NULL,
 CONSTRAINT [merge_trains_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[milestone_releases]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[milestone_releases](
	[milestone_id] [bigint] NOT NULL,
	[release_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[milestones]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[milestones](
	[id] [int]  NOT NULL,
	[title] [varchar](max) NOT NULL,
	[project_id] [int] NULL,
	[description] [varchar](max) NULL,
	[due_date] [date] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[state] [varchar](max) NULL,
	[iid] [int] NULL,
	[title_html] [varchar](max) NULL,
	[description_html] [varchar](max) NULL,
	[start_date] [date] NULL,
	[cached_markdown_version] [int] NULL,
	[group_id] [int] NULL,
 CONSTRAINT [milestones_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[namespace_aggregation_schedules]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[namespace_aggregation_schedules](
	[namespace_id] [int] NOT NULL,
 CONSTRAINT [namespace_aggregation_schedules_pkey] PRIMARY KEY CLUSTERED 
(
	[namespace_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[namespace_root_storage_statistics]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[namespace_root_storage_statistics](
	[namespace_id] [int] NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[repository_size] [bigint] NOT NULL,
	[lfs_objects_size] [bigint] NOT NULL,
	[wiki_size] [bigint] NOT NULL,
	[build_artifacts_size] [bigint] NOT NULL,
	[storage_size] [bigint] NOT NULL,
	[packages_size] [bigint] NOT NULL,
 CONSTRAINT [namespace_root_storage_statistics_pkey] PRIMARY KEY CLUSTERED 
(
	[namespace_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[namespace_statistics]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[namespace_statistics](
	[id] [int]  NOT NULL,
	[namespace_id] [int] NOT NULL,
	[shared_runners_seconds] [int] NOT NULL,
	[shared_runners_seconds_last_reset] [datetime] NULL,
 CONSTRAINT [namespace_statistics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[namespaces]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[namespaces](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[path] [varchar](max) NOT NULL,
	[owner_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[type] [varchar](max) NULL,
	[description] [varchar](max) NOT NULL,
	[avatar] [varchar](max) NULL,
	[membership_lock] [bit] NULL,
	[share_with_group_lock] [bit] NULL,
	[visibility_level] [int] NOT NULL,
	[request_access_enabled] [bit] NOT NULL,
	[ldap_sync_status] [varchar](max) NOT NULL,
	[ldap_sync_error] [varchar](max) NULL,
	[ldap_sync_last_update_at] [datetime] NULL,
	[ldap_sync_last_successful_update_at] [datetime] NULL,
	[ldap_sync_last_sync_at] [datetime] NULL,
	[description_html] [varchar](max) NULL,
	[lfs_enabled] [bit] NULL,
	[parent_id] [int] NULL,
	[shared_runners_minutes_limit] [int] NULL,
	[repository_size_limit] [bigint] NULL,
	[require_two_factor_authentication] [bit] NOT NULL,
	[two_factor_grace_period] [int] NOT NULL,
	[cached_markdown_version] [int] NULL,
	[plan_id] [int] NULL,
	[project_creation_level] [int] NULL,
	[runners_token] [varchar](max) NULL,
	[trial_ends_on] [datetimeoffset](7) NULL,
	[file_template_project_id] [int] NULL,
	[saml_discovery_token] [varchar](max) NULL,
	[runners_token_encrypted] [varchar](max) NULL,
	[custom_project_templates_group_id] [int] NULL,
	[auto_devops_enabled] [bit] NULL,
	[extra_shared_runners_minutes_limit] [int] NULL,
	[last_ci_minutes_notification_at] [datetimeoffset](7) NULL,
	[last_ci_minutes_usage_notification_level] [int] NULL,
	[subgroup_creation_level] [int] NULL,
	[emails_disabled] [bit] NULL,
	[max_pages_size] [int] NULL,
	[max_artifacts_size] [int] NULL,
	[mentions_disabled] [bit] NULL,
	[default_branch_protection] [smallint] NULL,
	[unlock_membership_to_ldap] [bit] NULL,
	[max_personal_access_token_lifetime] [int] NULL,
 CONSTRAINT [namespaces_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[note_diff_files]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[note_diff_files](
	[id] [int]  NOT NULL,
	[diff_note_id] [int] NOT NULL,
	[diff] [varchar](max) NOT NULL,
	[new_file] [bit] NOT NULL,
	[renamed_file] [bit] NOT NULL,
	[deleted_file] [bit] NOT NULL,
	[a_mode] [varchar](max) NOT NULL,
	[b_mode] [varchar](max) NOT NULL,
	[new_path] [varchar](max) NOT NULL,
	[old_path] [varchar](max) NOT NULL,
 CONSTRAINT [note_diff_files_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[notes]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notes](
	[id] [int]  NOT NULL,
	[note] [varchar](max) NULL,
	[noteable_type] [varchar](max) NULL,
	[author_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[project_id] [int] NULL,
	[attachment] [varchar](max) NULL,
	[line_code] [varchar](max) NULL,
	[commit_id] [varchar](max) NULL,
	[noteable_id] [int] NULL,
	[system] [bit] NOT NULL,
	[st_diff] [varchar](max) NULL,
	[updated_by_id] [int] NULL,
	[type] [varchar](max) NULL,
	[position] [varchar](max) NULL,
	[original_position] [varchar](max) NULL,
	[resolved_at] [datetime] NULL,
	[resolved_by_id] [int] NULL,
	[discussion_id] [varchar](max) NULL,
	[note_html] [varchar](max) NULL,
	[cached_markdown_version] [int] NULL,
	[change_position] [varchar](max) NULL,
	[resolved_by_push] [bit] NULL,
	[review_id] [bigint] NULL,
	[confidential] [bit] NULL,
 CONSTRAINT [notes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[notification_settings]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[notification_settings](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[source_id] [int] NULL,
	[source_type] [varchar](max) NULL,
	[level] [int] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[new_note] [bit] NULL,
	[new_issue] [bit] NULL,
	[reopen_issue] [bit] NULL,
	[close_issue] [bit] NULL,
	[reassign_issue] [bit] NULL,
	[new_merge_request] [bit] NULL,
	[reopen_merge_request] [bit] NULL,
	[close_merge_request] [bit] NULL,
	[reassign_merge_request] [bit] NULL,
	[merge_merge_request] [bit] NULL,
	[failed_pipeline] [bit] NULL,
	[success_pipeline] [bit] NULL,
	[push_to_merge_request] [bit] NULL,
	[issue_due] [bit] NULL,
	[new_epic] [bit] NULL,
	[notification_email] [varchar](max) NULL,
	[fixed_pipeline] [bit] NULL,
	[new_release] [bit] NULL,
 CONSTRAINT [notification_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[oauth_access_grants]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oauth_access_grants](
	[id] [int]  NOT NULL,
	[resource_owner_id] [int] NOT NULL,
	[application_id] [int] NOT NULL,
	[token] [varchar](max) NOT NULL,
	[expires_in] [int] NOT NULL,
	[redirect_uri] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[revoked_at] [datetime] NULL,
	[scopes] [varchar](max) NULL,
 CONSTRAINT [oauth_access_grants_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[oauth_access_tokens]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oauth_access_tokens](
	[id] [int]  NOT NULL,
	[resource_owner_id] [int] NULL,
	[application_id] [int] NULL,
	[token] [varchar](max) NOT NULL,
	[refresh_token] [varchar](max) NULL,
	[expires_in] [int] NULL,
	[revoked_at] [datetime] NULL,
	[created_at] [datetime] NOT NULL,
	[scopes] [varchar](max) NULL,
 CONSTRAINT [oauth_access_tokens_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[oauth_applications]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oauth_applications](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[uid] [varchar](max) NOT NULL,
	[secret] [varchar](max) NOT NULL,
	[redirect_uri] [varchar](max) NOT NULL,
	[scopes] [varchar](max) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[owner_id] [int] NULL,
	[owner_type] [varchar](max) NULL,
	[trusted] [bit] NOT NULL,
	[confidential] [bit] NOT NULL,
 CONSTRAINT [oauth_applications_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[oauth_openid_requests]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[oauth_openid_requests](
	[id] [int]  NOT NULL,
	[access_grant_id] [int] NOT NULL,
	[nonce] [varchar](max) NOT NULL,
 CONSTRAINT [oauth_openid_requests_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[open_project_tracker_data]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[open_project_tracker_data](
	[id] [bigint]  NOT NULL,
	[service_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[encrypted_url] [varchar](255) NULL,
	[encrypted_url_iv] [varchar](255) NULL,
	[encrypted_api_url] [varchar](255) NULL,
	[encrypted_api_url_iv] [varchar](255) NULL,
	[encrypted_token] [varchar](255) NULL,
	[encrypted_token_iv] [varchar](255) NULL,
	[closed_status_id] [varchar](5) NULL,
	[project_identifier_code] [varchar](100) NULL,
 CONSTRAINT [open_project_tracker_data_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[operations_feature_flag_scopes]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operations_feature_flag_scopes](
	[id] [bigint]  NOT NULL,
	[feature_flag_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[active] [bit] NOT NULL,
	[environment_scope] [varchar](max) NOT NULL,
	[strategies] [varchar](max) NOT NULL,
 CONSTRAINT [operations_feature_flag_scopes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[operations_feature_flags]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operations_feature_flags](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[active] [bit] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[name] [varchar](max) NOT NULL,
	[description] [varchar](max) NULL,
	[iid] [int] NOT NULL,
	[version] [smallint] NOT NULL,
 CONSTRAINT [operations_feature_flags_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[operations_feature_flags_clients]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operations_feature_flags_clients](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[token_encrypted] [varchar](max) NULL,
 CONSTRAINT [operations_feature_flags_clients_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[operations_scopes]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operations_scopes](
	[id] [bigint]  NOT NULL,
	[strategy_id] [bigint] NOT NULL,
	[environment_scope] [varchar](255) NOT NULL,
 CONSTRAINT [operations_scopes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[operations_strategies]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[operations_strategies](
	[id] [bigint]  NOT NULL,
	[feature_flag_id] [bigint] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[parameters] [varchar](max) NOT NULL,
 CONSTRAINT [operations_strategies_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[packages_build_infos]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[packages_build_infos](
	[id] [bigint]  NOT NULL,
	[package_id] [int] NOT NULL,
	[pipeline_id] [int] NULL,
 CONSTRAINT [packages_build_infos_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[packages_conan_file_metadata]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[packages_conan_file_metadata](
	[id] [bigint]  NOT NULL,
	[package_file_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[recipe_revision] [varchar](255) NOT NULL,
	[package_revision] [varchar](255) NULL,
	[conan_package_reference] [varchar](255) NULL,
	[conan_file_type] [smallint] NOT NULL,
 CONSTRAINT [packages_conan_file_metadata_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[packages_conan_metadata]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[packages_conan_metadata](
	[id] [bigint]  NOT NULL,
	[package_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[package_username] [varchar](255) NOT NULL,
	[package_channel] [varchar](255) NOT NULL,
 CONSTRAINT [packages_conan_metadata_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[packages_dependencies]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[packages_dependencies](
	[id] [bigint]  NOT NULL,
	[name] [varchar](255) NOT NULL,
	[version_pattern] [varchar](255) NOT NULL,
 CONSTRAINT [packages_dependencies_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[packages_dependency_links]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[packages_dependency_links](
	[id] [bigint]  NOT NULL,
	[package_id] [bigint] NOT NULL,
	[dependency_id] [bigint] NOT NULL,
	[dependency_type] [smallint] NOT NULL,
 CONSTRAINT [packages_dependency_links_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[packages_maven_metadata]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[packages_maven_metadata](
	[id] [bigint]  NOT NULL,
	[package_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[app_group] [varchar](max) NOT NULL,
	[app_name] [varchar](max) NOT NULL,
	[app_version] [varchar](max) NULL,
	[path] [varchar](512) NOT NULL,
 CONSTRAINT [packages_maven_metadata_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[packages_package_files]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[packages_package_files](
	[id] [bigint]  NOT NULL,
	[package_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[size] [bigint] NULL,
	[file_store] [int] NULL,
	[file_md5] [varbinary](1024) NULL,
	[file_sha1] [varbinary](1024) NULL,
	[file_name] [varchar](max) NOT NULL,
	[file] [varchar](max) NOT NULL,
	[file_sha256] [varbinary](1024) NULL,
 CONSTRAINT [packages_package_files_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[packages_packages]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[packages_packages](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[name] [varchar](max) NOT NULL,
	[version] [varchar](max) NULL,
	[package_type] [smallint] NOT NULL,
 CONSTRAINT [packages_packages_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[packages_tags]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[packages_tags](
	[id] [bigint]  NOT NULL,
	[package_id] [int] NOT NULL,
	[name] [varchar](255) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [packages_tags_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pages_domain_acme_orders]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pages_domain_acme_orders](
	[id] [bigint]  NOT NULL,
	[pages_domain_id] [int] NOT NULL,
	[expires_at] [datetimeoffset](7) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[url] [varchar](max) NOT NULL,
	[challenge_token] [varchar](max) NOT NULL,
	[challenge_file_content] [varchar](max) NOT NULL,
	[encrypted_private_key] [varchar](max) NOT NULL,
	[encrypted_private_key_iv] [varchar](max) NOT NULL,
 CONSTRAINT [pages_domain_acme_orders_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[pages_domains]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pages_domains](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[certificate] [varchar](max) NULL,
	[encrypted_key] [varchar](max) NULL,
	[encrypted_key_iv] [varchar](max) NULL,
	[encrypted_key_salt] [varchar](max) NULL,
	[domain] [varchar](max) NULL,
	[verified_at] [datetimeoffset](7) NULL,
	[verification_code] [varchar](max) NOT NULL,
	[enabled_until] [datetimeoffset](7) NULL,
	[remove_at] [datetimeoffset](7) NULL,
	[auto_ssl_enabled] [bit] NOT NULL,
	[certificate_valid_not_before] [datetimeoffset](7) NULL,
	[certificate_valid_not_after] [datetimeoffset](7) NULL,
	[certificate_source] [smallint] NOT NULL,
	[wildcard] [bit] NOT NULL,
	[usage] [smallint] NOT NULL,
	[scope] [smallint] NOT NULL,
	[auto_ssl_failed] [bit] NOT NULL,
 CONSTRAINT [pages_domains_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[path_locks]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[path_locks](
	[id] [int]  NOT NULL,
	[path] [varchar](max) NOT NULL,
	[project_id] [int] NULL,
	[user_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [path_locks_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[personal_access_tokens]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal_access_tokens](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[revoked] [bit] NULL,
	[expires_at] [date] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[scopes] [varchar](max) NOT NULL,
	[impersonation] [bit] NOT NULL,
	[token_digest] [varchar](max) NULL,
	[expire_notification_delivered] [bit] NOT NULL,
 CONSTRAINT [personal_access_tokens_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[plan_limits]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[plan_limits](
	[id] [bigint]  NOT NULL,
	[plan_id] [bigint] NOT NULL,
	[ci_active_pipelines] [int] NOT NULL,
	[ci_pipeline_size] [int] NOT NULL,
	[ci_active_jobs] [int] NOT NULL,
	[project_hooks] [int] NOT NULL,
	[group_hooks] [int] NOT NULL,
	[ci_project_subscriptions] [int] NOT NULL,
	[ci_pipeline_schedules] [int] NOT NULL,
 CONSTRAINT [plan_limits_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[plans]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[plans](
	[id] [int]  NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[name] [varchar](max) NULL,
	[title] [varchar](max) NULL,
 CONSTRAINT [plans_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[pool_repositories]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pool_repositories](
	[id] [bigint]  NOT NULL,
	[shard_id] [int] NOT NULL,
	[disk_path] [varchar](max) NULL,
	[state] [varchar](max) NULL,
	[source_project_id] [int] NULL,
 CONSTRAINT [pool_repositories_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[programming_languages]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[programming_languages](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[color] [varchar](max) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [programming_languages_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[project_alerting_settings]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_alerting_settings](
	[project_id] [int] NOT NULL,
	[encrypted_token] [varchar](max) NOT NULL,
	[encrypted_token_iv] [varchar](max) NOT NULL,
 CONSTRAINT [project_alerting_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[project_aliases]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_aliases](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [project_aliases_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[project_authorizations]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_authorizations](
	[user_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[access_level] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_auto_devops]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_auto_devops](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[enabled] [bit] NULL,
	[deploy_strategy] [int] NOT NULL,
 CONSTRAINT [project_auto_devops_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_ci_cd_settings]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_ci_cd_settings](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[group_runners_enabled] [bit] NOT NULL,
	[merge_pipelines_enabled] [bit] NULL,
	[default_git_depth] [int] NULL,
	[forward_deployment_enabled] [bit] NULL,
 CONSTRAINT [project_ci_cd_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_custom_attributes]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_custom_attributes](
	[id] [int]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [int] NOT NULL,
	[key] [varchar](max) NOT NULL,
	[value] [varchar](max) NOT NULL,
 CONSTRAINT [project_custom_attributes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[project_daily_statistics]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_daily_statistics](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[fetch_count] [int] NOT NULL,
	[date] [date] NULL,
 CONSTRAINT [project_daily_statistics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_deploy_tokens]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_deploy_tokens](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[deploy_token_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [project_deploy_tokens_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_error_tracking_settings]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_error_tracking_settings](
	[project_id] [int] NOT NULL,
	[enabled] [bit] NOT NULL,
	[api_url] [varchar](max) NULL,
	[encrypted_token] [varchar](max) NULL,
	[encrypted_token_iv] [varchar](max) NULL,
	[project_name] [varchar](max) NULL,
	[organization_name] [varchar](max) NULL,
 CONSTRAINT [project_error_tracking_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[project_export_jobs]    Script Date: 2021/9/6 21:07:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_export_jobs](
	[id] [bigint]  NOT NULL,
	[project_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[status] [smallint] NOT NULL,
	[jid] [varchar](100) NOT NULL,
 CONSTRAINT [project_export_jobs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_feature_usages]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_feature_usages](
	[project_id] [int] NOT NULL,
	[jira_dvcs_cloud_last_sync_at] [datetime] NULL,
	[jira_dvcs_server_last_sync_at] [datetime] NULL,
 CONSTRAINT [project_feature_usages_pkey] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_features]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_features](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[merge_requests_access_level] [int] NULL,
	[issues_access_level] [int] NULL,
	[wiki_access_level] [int] NULL,
	[snippets_access_level] [int] NOT NULL,
	[builds_access_level] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[repository_access_level] [int] NOT NULL,
	[pages_access_level] [int] NOT NULL,
	[forking_access_level] [int] NULL,
 CONSTRAINT [project_features_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_group_links]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_group_links](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[group_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[group_access] [int] NOT NULL,
	[expires_at] [date] NULL,
 CONSTRAINT [project_group_links_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_import_data]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_import_data](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[data] [varchar](max) NULL,
	[encrypted_credentials] [varchar](max) NULL,
	[encrypted_credentials_iv] [varchar](max) NULL,
	[encrypted_credentials_salt] [varchar](max) NULL,
 CONSTRAINT [project_import_data_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[project_incident_management_settings]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_incident_management_settings](
	[project_id] [int]  NOT NULL,
	[create_issue] [bit] NOT NULL,
	[send_email] [bit] NOT NULL,
	[issue_template_key] [varchar](max) NULL,
 CONSTRAINT [project_incident_management_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[project_metrics_settings]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_metrics_settings](
	[project_id] [int] NOT NULL,
	[external_dashboard_url] [varchar](max) NOT NULL,
 CONSTRAINT [project_metrics_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[project_mirror_data]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_mirror_data](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[retry_count] [int] NOT NULL,
	[last_update_started_at] [datetime] NULL,
	[last_update_scheduled_at] [datetime] NULL,
	[next_execution_timestamp] [datetime] NULL,
	[status] [varchar](max) NULL,
	[jid] [varchar](max) NULL,
	[last_error] [varchar](max) NULL,
	[last_update_at] [datetimeoffset](7) NULL,
	[last_successful_update_at] [datetimeoffset](7) NULL,
 CONSTRAINT [project_mirror_data_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[project_pages_metadata]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_pages_metadata](
	[project_id] [bigint] NOT NULL,
	[deployed] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_repositories]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_repositories](
	[id] [bigint]  NOT NULL,
	[shard_id] [int] NOT NULL,
	[disk_path] [varchar](max) NOT NULL,
	[project_id] [int] NOT NULL,
 CONSTRAINT [project_repositories_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[project_repository_states]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_repository_states](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[repository_verification_checksum] [varbinary](1024) NULL,
	[wiki_verification_checksum] [varbinary](1024) NULL,
	[last_repository_verification_failure] [varchar](max) NULL,
	[last_wiki_verification_failure] [varchar](max) NULL,
	[repository_retry_at] [datetimeoffset](7) NULL,
	[wiki_retry_at] [datetimeoffset](7) NULL,
	[repository_retry_count] [int] NULL,
	[wiki_retry_count] [int] NULL,
	[last_repository_verification_ran_at] [datetimeoffset](7) NULL,
	[last_wiki_verification_ran_at] [datetimeoffset](7) NULL,
 CONSTRAINT [project_repository_states_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[project_settings]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_settings](
	[project_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [project_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_statistics]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_statistics](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[namespace_id] [int] NOT NULL,
	[commit_count] [bigint] NOT NULL,
	[storage_size] [bigint] NOT NULL,
	[repository_size] [bigint] NOT NULL,
	[lfs_objects_size] [bigint] NOT NULL,
	[build_artifacts_size] [bigint] NOT NULL,
	[shared_runners_seconds] [bigint] NOT NULL,
	[shared_runners_seconds_last_reset] [datetime] NULL,
	[packages_size] [bigint] NOT NULL,
	[wiki_size] [bigint] NULL,
 CONSTRAINT [project_statistics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[project_tracing_settings]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[project_tracing_settings](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [int] NOT NULL,
	[external_url] [varchar](max) NOT NULL,
 CONSTRAINT [project_tracing_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[projects]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[projects](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NULL,
	[path] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[creator_id] [int] NULL,
	[namespace_id] [int] NOT NULL,
	[last_activity_at] [datetime] NULL,
	[import_url] [varchar](max) NULL,
	[visibility_level] [int] NOT NULL,
	[archived] [bit] NOT NULL,
	[avatar] [varchar](max) NULL,
	[merge_requests_template] [varchar](max) NULL,
	[star_count] [int] NOT NULL,
	[merge_requests_rebase_enabled] [bit] NULL,
	[import_type] [varchar](max) NULL,
	[import_source] [varchar](max) NULL,
	[approvals_before_merge] [int] NOT NULL,
	[reset_approvals_on_push] [bit] NULL,
	[merge_requests_ff_only_enabled] [bit] NULL,
	[issues_template] [varchar](max) NULL,
	[mirror] [bit] NOT NULL,
	[mirror_last_update_at] [datetime] NULL,
	[mirror_last_successful_update_at] [datetime] NULL,
	[mirror_user_id] [int] NULL,
	[shared_runners_enabled] [bit] NOT NULL,
	[runners_token] [varchar](max) NULL,
	[build_coverage_regex] [varchar](max) NULL,
	[build_allow_git_fetch] [bit] NOT NULL,
	[build_timeout] [int] NOT NULL,
	[mirror_trigger_builds] [bit] NOT NULL,
	[pending_delete] [bit] NULL,
	[public_builds] [bit] NOT NULL,
	[last_repository_check_failed] [bit] NULL,
	[last_repository_check_at] [datetime] NULL,
	[container_registry_enabled] [bit] NULL,
	[only_allow_merge_if_pipeline_succeeds] [bit] NOT NULL,
	[has_external_issue_tracker] [bit] NULL,
	[repository_storage] [varchar](max) NOT NULL,
	[repository_read_only] [bit] NULL,
	[request_access_enabled] [bit] NOT NULL,
	[has_external_wiki] [bit] NULL,
	[ci_config_path] [varchar](max) NULL,
	[lfs_enabled] [bit] NULL,
	[description_html] [varchar](max) NULL,
	[only_allow_merge_if_all_discussions_are_resolved] [bit] NULL,
	[repository_size_limit] [bigint] NULL,
	[printing_merge_request_link_enabled] [bit] NOT NULL,
	[auto_cancel_pending_pipelines] [int] NOT NULL,
	[service_desk_enabled] [bit] NULL,
	[cached_markdown_version] [int] NULL,
	[delete_error] [varchar](max) NULL,
	[last_repository_updated_at] [datetime] NULL,
	[disable_overriding_approvers_per_merge_request] [bit] NULL,
	[storage_version] [smallint] NULL,
	[resolve_outdated_diff_discussions] [bit] NULL,
	[remote_mirror_available_overridden] [bit] NULL,
	[only_mirror_protected_branches] [bit] NULL,
	[pull_mirror_available_overridden] [bit] NULL,
	[jobs_cache_index] [int] NULL,
	[external_authorization_classification_label] [varchar](max) NULL,
	[mirror_overwrites_diverged_branches] [bit] NULL,
	[pages_https_only] [bit] NULL,
	[external_webhook_token] [varchar](max) NULL,
	[packages_enabled] [bit] NULL,
	[merge_requests_author_approval] [bit] NULL,
	[pool_repository_id] [bigint] NULL,
	[runners_token_encrypted] [varchar](max) NULL,
	[bfg_object_map] [varchar](max) NULL,
	[detected_repository_languages] [bit] NULL,
	[merge_requests_disable_committers_approval] [bit] NULL,
	[require_password_to_approve] [bit] NULL,
	[emails_disabled] [bit] NULL,
	[max_pages_size] [int] NULL,
	[max_artifacts_size] [int] NULL,
	[pull_mirror_branch_prefix] [varchar](50) NULL,
	[remove_source_branch_after_merge] [bit] NULL,
	[marked_for_deletion_at] [date] NULL,
	[marked_for_deletion_by_user_id] [int] NULL,
	[autoclose_referenced_issues] [bit] NULL,
	[suggestion_commit_message] [varchar](255) NULL,
 CONSTRAINT [projects_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[prometheus_alert_events]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prometheus_alert_events](
	[id] [bigint]  NOT NULL,
	[project_id] [int] NOT NULL,
	[prometheus_alert_id] [int] NOT NULL,
	[started_at] [datetimeoffset](7) NOT NULL,
	[ended_at] [datetimeoffset](7) NULL,
	[status] [smallint] NULL,
	[payload_key] [varchar](max) NULL,
 CONSTRAINT [prometheus_alert_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[prometheus_alerts]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prometheus_alerts](
	[id] [int]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[threshold] [float] NOT NULL,
	[operator] [int] NOT NULL,
	[environment_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[prometheus_metric_id] [int] NOT NULL,
 CONSTRAINT [prometheus_alerts_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prometheus_metrics]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prometheus_metrics](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[title] [varchar](max) NOT NULL,
	[query] [varchar](max) NOT NULL,
	[y_label] [varchar](max) NOT NULL,
	[unit] [varchar](max) NOT NULL,
	[legend] [varchar](max) NULL,
	[group] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[common] [bit] NOT NULL,
	[identifier] [varchar](max) NULL,
 CONSTRAINT [prometheus_metrics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[protected_branch_merge_access_levels]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[protected_branch_merge_access_levels](
	[id] [int]  NOT NULL,
	[protected_branch_id] [int] NOT NULL,
	[access_level] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[user_id] [int] NULL,
	[group_id] [int] NULL,
 CONSTRAINT [protected_branch_merge_access_levels_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[protected_branch_push_access_levels]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[protected_branch_push_access_levels](
	[id] [int]  NOT NULL,
	[protected_branch_id] [int] NOT NULL,
	[access_level] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[user_id] [int] NULL,
	[group_id] [int] NULL,
 CONSTRAINT [protected_branch_push_access_levels_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[protected_branch_unprotect_access_levels]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[protected_branch_unprotect_access_levels](
	[id] [int]  NOT NULL,
	[protected_branch_id] [int] NOT NULL,
	[access_level] [int] NULL,
	[user_id] [int] NULL,
	[group_id] [int] NULL,
 CONSTRAINT [protected_branch_unprotect_access_levels_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[protected_branches]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[protected_branches](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[code_owner_approval_required] [bit] NOT NULL,
 CONSTRAINT [protected_branches_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[protected_environment_deploy_access_levels]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[protected_environment_deploy_access_levels](
	[id] [int]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[access_level] [int] NULL,
	[protected_environment_id] [int] NOT NULL,
	[user_id] [int] NULL,
	[group_id] [int] NULL,
 CONSTRAINT [protected_environment_deploy_access_levels_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[protected_environments]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[protected_environments](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[name] [varchar](max) NOT NULL,
 CONSTRAINT [protected_environments_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[protected_tag_create_access_levels]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[protected_tag_create_access_levels](
	[id] [int]  NOT NULL,
	[protected_tag_id] [int] NOT NULL,
	[access_level] [int] NULL,
	[user_id] [int] NULL,
	[group_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [protected_tag_create_access_levels_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[protected_tags]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[protected_tags](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[name] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [protected_tags_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[push_event_payloads]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[push_event_payloads](
	[commit_count] [bigint] NOT NULL,
	[event_id] [int] NOT NULL,
	[action] [smallint] NOT NULL,
	[ref_type] [smallint] NOT NULL,
	[commit_from] [varbinary](1024) NULL,
	[commit_to] [varbinary](1024) NULL,
	[ref] [varchar](max) NULL,
	[commit_title] [varchar](70) NULL,
	[ref_count] [int] NULL
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[push_rules]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[push_rules](
	[id] [int]  NOT NULL,
	[force_push_regex] [varchar](max) NULL,
	[delete_branch_regex] [varchar](max) NULL,
	[commit_message_regex] [varchar](max) NULL,
	[deny_delete_tag] [bit] NULL,
	[project_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[author_email_regex] [varchar](max) NULL,
	[member_check] [bit] NOT NULL,
	[file_name_regex] [varchar](max) NULL,
	[is_sample] [bit] NULL,
	[max_file_size] [int] NOT NULL,
	[prevent_secrets] [bit] NOT NULL,
	[branch_name_regex] [varchar](max) NULL,
	[reject_unsigned_commits] [bit] NULL,
	[commit_committer_check] [bit] NULL,
	[regexp_uses_re2] [bit] NULL,
	[commit_message_negative_regex] [varchar](max) NULL,
 CONSTRAINT [push_rules_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[redirect_routes]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[redirect_routes](
	[id] [int]  NOT NULL,
	[source_id] [int] NOT NULL,
	[source_type] [varchar](max) NOT NULL,
	[path] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [redirect_routes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[release_links]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[release_links](
	[id] [bigint]  NOT NULL,
	[release_id] [int] NOT NULL,
	[url] [varchar](max) NOT NULL,
	[name] [varchar](max) NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[filepath] [varchar](128) NULL,
 CONSTRAINT [release_links_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[releases]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[releases](
	[id] [int]  NOT NULL,
	[tag] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[project_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[description_html] [varchar](max) NULL,
	[cached_markdown_version] [int] NULL,
	[author_id] [int] NULL,
	[name] [varchar](max) NULL,
	[sha] [varchar](max) NULL,
	[released_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [releases_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[remote_mirrors]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[remote_mirrors](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[url] [varchar](max) NULL,
	[enabled] [bit] NULL,
	[update_status] [varchar](max) NULL,
	[last_update_at] [datetime] NULL,
	[last_successful_update_at] [datetime] NULL,
	[last_error] [varchar](max) NULL,
	[encrypted_credentials] [varchar](max) NULL,
	[encrypted_credentials_iv] [varchar](max) NULL,
	[encrypted_credentials_salt] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[last_update_started_at] [datetime] NULL,
	[only_protected_branches] [bit] NOT NULL,
	[remote_name] [varchar](max) NULL,
	[error_notification_sent] [bit] NULL,
	[keep_divergent_refs] [bit] NULL,
 CONSTRAINT [remote_mirrors_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[repository_languages]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[repository_languages](
	[project_id] [int] NOT NULL,
	[programming_language_id] [int] NOT NULL,
	[share] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[requirements]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[requirements](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [int] NOT NULL,
	[author_id] [int] NULL,
	[iid] [int] NOT NULL,
	[cached_markdown_version] [int] NULL,
	[state] [smallint] NOT NULL,
	[title] [varchar](255) NOT NULL,
	[title_html] [varchar](max) NULL,
 CONSTRAINT [requirements_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[resource_label_events]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resource_label_events](
	[id] [bigint]  NOT NULL,
	[action] [int] NOT NULL,
	[issue_id] [int] NULL,
	[merge_request_id] [int] NULL,
	[epic_id] [int] NULL,
	[label_id] [int] NULL,
	[user_id] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[cached_markdown_version] [int] NULL,
	[reference] [varchar](max) NULL,
	[reference_html] [varchar](max) NULL,
 CONSTRAINT [resource_label_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[resource_milestone_events]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resource_milestone_events](
	[id] [bigint]  NOT NULL,
	[user_id] [bigint] NOT NULL,
	[issue_id] [bigint] NULL,
	[merge_request_id] [bigint] NULL,
	[milestone_id] [bigint] NULL,
	[action] [smallint] NOT NULL,
	[state] [smallint] NOT NULL,
	[cached_markdown_version] [int] NULL,
	[reference] [varchar](max) NULL,
	[reference_html] [varchar](max) NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [resource_milestone_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[resource_weight_events]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resource_weight_events](
	[id] [bigint]  NOT NULL,
	[user_id] [bigint] NOT NULL,
	[issue_id] [bigint] NOT NULL,
	[weight] [int] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [resource_weight_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reviews]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reviews](
	[id] [bigint]  NOT NULL,
	[author_id] [int] NULL,
	[merge_request_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [reviews_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[routes]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[routes](
	[id] [int]  NOT NULL,
	[source_id] [int] NOT NULL,
	[source_type] [varchar](max) NOT NULL,
	[path] [varchar](max) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[name] [varchar](max) NULL,
 CONSTRAINT [routes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[saml_providers]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[saml_providers](
	[id] [int]  NOT NULL,
	[group_id] [int] NOT NULL,
	[enabled] [bit] NOT NULL,
	[certificate_fingerprint] [varchar](max) NOT NULL,
	[sso_url] [varchar](max) NOT NULL,
	[enforced_sso] [bit] NOT NULL,
	[enforced_group_managed_accounts] [bit] NOT NULL,
	[prohibited_outer_forks] [bit] NOT NULL,
 CONSTRAINT [saml_providers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[schema_migrations]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[schema_migrations](
	[version] [varchar](max) NOT NULL
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[scim_identities]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scim_identities](
	[id] [bigint]  NOT NULL,
	[group_id] [bigint] NOT NULL,
	[user_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[active] [bit] NULL,
	[extern_uid] [varchar](255) NOT NULL,
 CONSTRAINT [scim_identities_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[scim_oauth_access_tokens]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[scim_oauth_access_tokens](
	[id] [int]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[group_id] [int] NOT NULL,
	[token_encrypted] [varchar](max) NOT NULL,
 CONSTRAINT [scim_oauth_access_tokens_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[security_scans]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[security_scans](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[build_id] [bigint] NOT NULL,
	[scan_type] [smallint] NOT NULL,
 CONSTRAINT [security_scans_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[self_managed_prometheus_alert_events]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[self_managed_prometheus_alert_events](
	[id] [bigint]  NOT NULL,
	[project_id] [bigint] NOT NULL,
	[environment_id] [bigint] NULL,
	[started_at] [datetimeoffset](7) NOT NULL,
	[ended_at] [datetimeoffset](7) NULL,
	[status] [smallint] NOT NULL,
	[title] [varchar](255) NOT NULL,
	[query_expression] [varchar](255) NULL,
	[payload_key] [varchar](255) NOT NULL,
 CONSTRAINT [self_managed_prometheus_alert_events_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sent_notifications]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sent_notifications](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[noteable_id] [int] NULL,
	[noteable_type] [varchar](max) NULL,
	[recipient_id] [int] NULL,
	[commit_id] [varchar](max) NULL,
	[reply_key] [varchar](max) NOT NULL,
	[line_code] [varchar](max) NULL,
	[note_type] [varchar](max) NULL,
	[position] [varchar](max) NULL,
	[in_reply_to_discussion_id] [varchar](max) NULL,
 CONSTRAINT [sent_notifications_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[sentry_issues]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sentry_issues](
	[id] [bigint]  NOT NULL,
	[issue_id] [bigint] NOT NULL,
	[sentry_issue_identifier] [bigint] NOT NULL,
 CONSTRAINT [sentry_issues_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[serverless_domain_cluster]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[serverless_domain_cluster](
	[uuid] [varchar](14) NOT NULL,
	[pages_domain_id] [bigint] NOT NULL,
	[clusters_applications_knative_id] [bigint] NOT NULL,
	[creator_id] [bigint] NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[encrypted_key] [varchar](max) NULL,
	[encrypted_key_iv] [varchar](255) NULL,
	[certificate] [varchar](max) NULL,
 CONSTRAINT [serverless_domain_cluster_pkey] PRIMARY KEY CLUSTERED 
(
	[uuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[service_desk_settings]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service_desk_settings](
	[project_id] [bigint] NOT NULL,
	[issue_template_key] [varchar](255) NULL,
	[outgoing_name] [varchar](255) NULL,
	[project_key] [varchar](255) NULL,
 CONSTRAINT [service_desk_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[services]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[services](
	[id] [int]  NOT NULL,
	[type] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[project_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[active] [bit] NOT NULL,
	[properties] [varchar](max) NULL,
	[push_events] [bit] NULL,
	[issues_events] [bit] NULL,
	[merge_requests_events] [bit] NULL,
	[tag_push_events] [bit] NULL,
	[note_events] [bit] NOT NULL,
	[category] [varchar](max) NOT NULL,
	[default] [bit] NULL,
	[wiki_page_events] [bit] NULL,
	[pipeline_events] [bit] NOT NULL,
	[confidential_issues_events] [bit] NOT NULL,
	[commit_events] [bit] NOT NULL,
	[job_events] [bit] NOT NULL,
	[confidential_note_events] [bit] NULL,
	[deployment_events] [bit] NOT NULL,
	[description] [varchar](500) NULL,
	[comment_on_event_enabled] [bit] NOT NULL,
	[template] [bit] NULL,
	[instance] [bit] NOT NULL,
 CONSTRAINT [services_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[shards]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[shards](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
 CONSTRAINT [shards_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[slack_integrations]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slack_integrations](
	[id] [int]  NOT NULL,
	[service_id] [int] NOT NULL,
	[team_id] [varchar](max) NOT NULL,
	[team_name] [varchar](max) NOT NULL,
	[alias] [varchar](max) NOT NULL,
	[user_id] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [slack_integrations_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[smartcard_identities]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[smartcard_identities](
	[id] [bigint]  NOT NULL,
	[user_id] [int] NOT NULL,
	[subject] [varchar](max) NOT NULL,
	[issuer] [varchar](max) NOT NULL,
 CONSTRAINT [smartcard_identities_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[snippet_repositories]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[snippet_repositories](
	[snippet_id] [bigint] NOT NULL,
	[shard_id] [bigint] NOT NULL,
	[disk_path] [varchar](80) NOT NULL,
 CONSTRAINT [snippet_repositories_pkey] PRIMARY KEY CLUSTERED 
(
	[snippet_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[snippet_user_mentions]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[snippet_user_mentions](
	[id] [bigint]  NOT NULL,
	[snippet_id] [int] NOT NULL,
	[note_id] [int] NULL,
	[mentioned_users_ids] [varchar](max) NULL,
	[mentioned_projects_ids] [varchar](max) NULL,
	[mentioned_groups_ids] [varchar](max) NULL,
 CONSTRAINT [snippet_user_mentions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[snippets]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[snippets](
	[id] [int]  NOT NULL,
	[title] [varchar](max) NULL,
	[content] [varchar](max) NULL,
	[author_id] [int] NOT NULL,
	[project_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[file_name] [varchar](max) NULL,
	[type] [varchar](max) NULL,
	[visibility_level] [int] NOT NULL,
	[title_html] [varchar](max) NULL,
	[content_html] [varchar](max) NULL,
	[cached_markdown_version] [int] NULL,
	[description] [varchar](max) NULL,
	[description_html] [varchar](max) NULL,
	[encrypted_secret_token] [varchar](255) NULL,
	[encrypted_secret_token_iv] [varchar](255) NULL,
	[secret] [bit] NOT NULL,
 CONSTRAINT [snippets_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[software_license_policies]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[software_license_policies](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[software_license_id] [int] NOT NULL,
	[classification] [int] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [software_license_policies_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[software_licenses]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[software_licenses](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NOT NULL,
	[spdx_identifier] [varchar](255) NULL,
 CONSTRAINT [software_licenses_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[spam_logs]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[spam_logs](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[source_ip] [varchar](max) NULL,
	[user_agent] [varchar](max) NULL,
	[via_api] [bit] NULL,
	[noteable_type] [varchar](max) NULL,
	[title] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[submitted_as_ham] [bit] NOT NULL,
	[recaptcha_verified] [bit] NOT NULL,
 CONSTRAINT [spam_logs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[status_page_settings]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[status_page_settings](
	[project_id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[enabled] [bit] NOT NULL,
	[aws_s3_bucket_name] [varchar](63) NOT NULL,
	[aws_region] [varchar](255) NOT NULL,
	[aws_access_key] [varchar](255) NOT NULL,
	[encrypted_aws_secret_key] [varchar](255) NOT NULL,
	[encrypted_aws_secret_key_iv] [varchar](255) NOT NULL,
 CONSTRAINT [status_page_settings_pkey] PRIMARY KEY CLUSTERED 
(
	[project_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[subscriptions]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[subscriptions](
	[id] [int]  NOT NULL,
	[user_id] [int] NULL,
	[subscribable_id] [int] NULL,
	[subscribable_type] [varchar](max) NULL,
	[subscribed] [bit] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[project_id] [int] NULL,
 CONSTRAINT [subscriptions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[suggestions]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[suggestions](
	[id] [bigint]  NOT NULL,
	[note_id] [int] NOT NULL,
	[relative_order] [smallint] NOT NULL,
	[applied] [bit] NOT NULL,
	[commit_id] [varchar](max) NULL,
	[from_content] [varchar](max) NOT NULL,
	[to_content] [varchar](max) NOT NULL,
	[lines_above] [int] NOT NULL,
	[lines_below] [int] NOT NULL,
	[outdated] [bit] NOT NULL,
 CONSTRAINT [suggestions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[system_note_metadata]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[system_note_metadata](
	[id] [int]  NOT NULL,
	[note_id] [int] NOT NULL,
	[commit_count] [int] NULL,
	[action] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[description_version_id] [bigint] NULL,
 CONSTRAINT [system_note_metadata_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[taggings]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[taggings](
	[id] [int]  NOT NULL,
	[tag_id] [int] NULL,
	[taggable_id] [int] NULL,
	[taggable_type] [varchar](max) NULL,
	[tagger_id] [int] NULL,
	[tagger_type] [varchar](max) NULL,
	[context] [varchar](max) NULL,
	[created_at] [datetime] NULL,
 CONSTRAINT [taggings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[tags]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tags](
	[id] [int]  NOT NULL,
	[name] [varchar](max) NULL,
	[taggings_count] [int] NULL,
 CONSTRAINT [tags_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[term_agreements]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[term_agreements](
	[id] [int]  NOT NULL,
	[term_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[accepted] [bit] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [term_agreements_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[timelogs]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[timelogs](
	[id] [int]  NOT NULL,
	[time_spent] [int] NOT NULL,
	[user_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[issue_id] [int] NULL,
	[merge_request_id] [int] NULL,
	[spent_at] [datetime] NULL,
 CONSTRAINT [timelogs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[todos]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[todos](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[project_id] [int] NULL,
	[target_id] [int] NULL,
	[target_type] [varchar](max) NOT NULL,
	[author_id] [int] NOT NULL,
	[action] [int] NOT NULL,
	[state] [varchar](max) NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[note_id] [int] NULL,
	[commit_id] [varchar](max) NULL,
	[group_id] [int] NULL,
 CONSTRAINT [todos_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[trending_projects]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trending_projects](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
 CONSTRAINT [trending_projects_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[u2f_registrations]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[u2f_registrations](
	[id] [int]  NOT NULL,
	[certificate] [varchar](max) NULL,
	[key_handle] [varchar](max) NULL,
	[public_key] [varchar](max) NULL,
	[counter] [int] NULL,
	[user_id] [int] NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[name] [varchar](max) NULL,
 CONSTRAINT [u2f_registrations_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[uploads]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uploads](
	[id] [int]  NOT NULL,
	[size] [bigint] NOT NULL,
	[path] [varchar](511) NOT NULL,
	[checksum] [varchar](64) NULL,
	[model_id] [int] NULL,
	[model_type] [varchar](max) NULL,
	[uploader] [varchar](max) NOT NULL,
	[created_at] [datetime] NOT NULL,
	[store] [int] NULL,
	[mount_point] [varchar](max) NULL,
	[secret] [varchar](max) NULL,
 CONSTRAINT [uploads_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_agent_details]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_agent_details](
	[id] [int]  NOT NULL,
	[user_agent] [varchar](max) NOT NULL,
	[ip_address] [varchar](max) NOT NULL,
	[subject_id] [int] NOT NULL,
	[subject_type] [varchar](max) NOT NULL,
	[submitted] [bit] NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [user_agent_details_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_callouts]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_callouts](
	[id] [int]  NOT NULL,
	[feature_name] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[dismissed_at] [datetimeoffset](7) NULL,
 CONSTRAINT [user_callouts_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_canonical_emails]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_canonical_emails](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[user_id] [bigint] NOT NULL,
	[canonical_email] [varchar](max) NOT NULL,
 CONSTRAINT [user_canonical_emails_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_custom_attributes]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_custom_attributes](
	[id] [int]  NOT NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[user_id] [int] NOT NULL,
	[key] [varchar](max) NOT NULL,
	[value] [varchar](max) NOT NULL,
 CONSTRAINT [user_custom_attributes_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_details]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_details](
	[user_id] [bigint]  NOT NULL,
	[job_title] [varchar](200) NOT NULL,
 CONSTRAINT [user_details_pkey] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_highest_roles]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_highest_roles](
	[user_id] [bigint] NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[highest_access_level] [int] NULL,
 CONSTRAINT [user_highest_roles_pkey] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_interacted_projects]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_interacted_projects](
	[user_id] [int] NOT NULL,
	[project_id] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user_preferences]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_preferences](
	[id] [int]  NOT NULL,
	[user_id] [int] NOT NULL,
	[issue_notes_filter] [smallint] NOT NULL,
	[merge_request_notes_filter] [smallint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[epics_sort] [varchar](max) NULL,
	[roadmap_epics_state] [int] NULL,
	[epic_notes_filter] [smallint] NOT NULL,
	[issues_sort] [varchar](max) NULL,
	[merge_requests_sort] [varchar](max) NULL,
	[roadmaps_sort] [varchar](max) NULL,
	[first_day_of_week] [int] NULL,
	[timezone] [varchar](max) NULL,
	[time_display_relative] [bit] NULL,
	[time_format_in_24h] [bit] NULL,
	[projects_sort] [varchar](64) NULL,
	[show_whitespace_in_diffs] [bit] NOT NULL,
	[sourcegraph_enabled] [bit] NULL,
	[setup_for_company] [bit] NULL,
	[render_whitespace_in_code] [bit] NULL,
	[tab_width] [smallint] NULL,
	[feature_filter_type] [bigint] NULL,
 CONSTRAINT [user_preferences_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_statuses]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_statuses](
	[user_id] [int]  NOT NULL,
	[cached_markdown_version] [int] NULL,
	[emoji] [varchar](max) NOT NULL,
	[message] [varchar](100) NULL,
	[message_html] [varchar](max) NULL,
 CONSTRAINT [user_statuses_pkey] PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[user_synced_attributes_metadata]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user_synced_attributes_metadata](
	[id] [int]  NOT NULL,
	[name_synced] [bit] NULL,
	[email_synced] [bit] NULL,
	[location_synced] [bit] NULL,
	[user_id] [int] NOT NULL,
	[provider] [varchar](max) NULL,
 CONSTRAINT [user_synced_attributes_metadata_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[users]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[id] [int]  NOT NULL,
	[email] [varchar](max) NOT NULL,
	[encrypted_password] [varchar](max) NOT NULL,
	[reset_password_token] [varchar](max) NULL,
	[reset_password_sent_at] [datetime] NULL,
	[remember_created_at] [datetime] NULL,
	[sign_in_count] [int] NULL,
	[current_sign_in_at] [datetime] NULL,
	[last_sign_in_at] [datetime] NULL,
	[current_sign_in_ip] [varchar](max) NULL,
	[last_sign_in_ip] [varchar](max) NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[name] [varchar](max) NULL,
	[admin] [bit] NOT NULL,
	[projects_limit] [int] NOT NULL,
	[skype] [varchar](max) NOT NULL,
	[linkedin] [varchar](max) NOT NULL,
	[twitter] [varchar](max) NOT NULL,
	[bio] [varchar](max) NULL,
	[failed_attempts] [int] NULL,
	[locked_at] [datetime] NULL,
	[username] [varchar](max) NULL,
	[can_create_group] [bit] NOT NULL,
	[can_create_team] [bit] NOT NULL,
	[state] [varchar](max) NULL,
	[color_scheme_id] [int] NOT NULL,
	[password_expires_at] [datetime] NULL,
	[created_by_id] [int] NULL,
	[last_credential_check_at] [datetime] NULL,
	[avatar] [varchar](max) NULL,
	[confirmation_token] [varchar](max) NULL,
	[confirmed_at] [datetime] NULL,
	[confirmation_sent_at] [datetime] NULL,
	[unconfirmed_email] [varchar](max) NULL,
	[hide_no_ssh_key] [bit] NULL,
	[website_url] [varchar](max) NOT NULL,
	[admin_email_unsubscribed_at] [datetime] NULL,
	[notification_email] [varchar](max) NULL,
	[hide_no_password] [bit] NULL,
	[password_automatically_set] [bit] NULL,
	[location] [varchar](max) NULL,
	[encrypted_otp_secret] [varchar](max) NULL,
	[encrypted_otp_secret_iv] [varchar](max) NULL,
	[encrypted_otp_secret_salt] [varchar](max) NULL,
	[otp_required_for_login] [bit] NOT NULL,
	[otp_backup_codes] [varchar](max) NULL,
	[public_email] [varchar](max) NOT NULL,
	[dashboard] [int] NULL,
	[project_view] [int] NULL,
	[consumed_timestep] [int] NULL,
	[layout] [int] NULL,
	[hide_project_limit] [bit] NULL,
	[note] [varchar](max) NULL,
	[unlock_token] [varchar](max) NULL,
	[otp_grace_period_started_at] [datetime] NULL,
	[external] [bit] NULL,
	[incoming_email_token] [varchar](max) NULL,
	[organization] [varchar](max) NULL,
	[auditor] [bit] NOT NULL,
	[require_two_factor_authentication_from_group] [bit] NOT NULL,
	[two_factor_grace_period] [int] NOT NULL,
	[ghost] [bit] NULL,
	[last_activity_on] [date] NULL,
	[notified_of_own_activity] [bit] NULL,
	[preferred_language] [varchar](max) NULL,
	[email_opted_in] [bit] NULL,
	[email_opted_in_ip] [varchar](max) NULL,
	[email_opted_in_source_id] [int] NULL,
	[email_opted_in_at] [datetime] NULL,
	[theme_id] [smallint] NULL,
	[accepted_term_id] [int] NULL,
	[feed_token] [varchar](max) NULL,
	[private_profile] [bit] NOT NULL,
	[roadmap_layout] [smallint] NULL,
	[include_private_contributions] [bit] NULL,
	[commit_email] [varchar](max) NULL,
	[group_view] [int] NULL,
	[managing_group_id] [int] NULL,
	[bot_type] [smallint] NULL,
	[first_name] [varchar](255) NULL,
	[last_name] [varchar](255) NULL,
	[static_object_token] [varchar](255) NULL,
	[role] [smallint] NULL,
	[user_type] [smallint] NULL,
 CONSTRAINT [users_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[users_ops_dashboard_projects]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_ops_dashboard_projects](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[user_id] [int] NOT NULL,
	[project_id] [int] NOT NULL,
 CONSTRAINT [users_ops_dashboard_projects_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_security_dashboard_projects]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_security_dashboard_projects](
	[user_id] [bigint] NOT NULL,
	[project_id] [bigint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_star_projects]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_star_projects](
	[id] [int]  NOT NULL,
	[project_id] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [users_star_projects_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[users_statistics]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users_statistics](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[without_groups_and_projects] [int] NOT NULL,
	[with_highest_role_guest] [int] NOT NULL,
	[with_highest_role_reporter] [int] NOT NULL,
	[with_highest_role_developer] [int] NOT NULL,
	[with_highest_role_maintainer] [int] NOT NULL,
	[with_highest_role_owner] [int] NOT NULL,
	[bots] [int] NOT NULL,
	[blocked] [int] NOT NULL,
 CONSTRAINT [users_statistics_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vulnerabilities]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vulnerabilities](
	[id] [bigint]  NOT NULL,
	[milestone_id] [bigint] NULL,
	[epic_id] [bigint] NULL,
	[project_id] [bigint] NOT NULL,
	[author_id] [bigint] NOT NULL,
	[updated_by_id] [bigint] NULL,
	[last_edited_by_id] [bigint] NULL,
	[start_date] [date] NULL,
	[due_date] [date] NULL,
	[last_edited_at] [datetimeoffset](7) NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[title] [varchar](255) NOT NULL,
	[title_html] [varchar](max) NULL,
	[description] [varchar](max) NULL,
	[description_html] [varchar](max) NULL,
	[start_date_sourcing_milestone_id] [bigint] NULL,
	[due_date_sourcing_milestone_id] [bigint] NULL,
	[state] [smallint] NOT NULL,
	[severity] [smallint] NOT NULL,
	[severity_overridden] [bit] NULL,
	[confidence] [smallint] NOT NULL,
	[confidence_overridden] [bit] NULL,
	[resolved_by_id] [bigint] NULL,
	[resolved_at] [datetimeoffset](7) NULL,
	[report_type] [smallint] NOT NULL,
	[cached_markdown_version] [int] NULL,
	[confirmed_by_id] [bigint] NULL,
	[confirmed_at] [datetimeoffset](7) NULL,
	[dismissed_at] [datetimeoffset](7) NULL,
	[dismissed_by_id] [bigint] NULL,
 CONSTRAINT [vulnerabilities_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[vulnerability_exports]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vulnerability_exports](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[started_at] [datetimeoffset](7) NULL,
	[finished_at] [datetimeoffset](7) NULL,
	[status] [varchar](255) NOT NULL,
	[file] [varchar](255) NULL,
	[project_id] [bigint] NOT NULL,
	[author_id] [bigint] NOT NULL,
	[file_store] [int] NULL,
	[format] [smallint] NOT NULL,
 CONSTRAINT [vulnerability_exports_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vulnerability_feedback]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vulnerability_feedback](
	[id] [int]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[feedback_type] [smallint] NOT NULL,
	[category] [smallint] NOT NULL,
	[project_id] [int] NOT NULL,
	[author_id] [int] NOT NULL,
	[pipeline_id] [int] NULL,
	[issue_id] [int] NULL,
	[project_fingerprint] [varchar](40) NOT NULL,
	[merge_request_id] [int] NULL,
	[comment_author_id] [int] NULL,
	[comment] [varchar](max) NULL,
	[comment_timestamp] [datetimeoffset](7) NULL,
 CONSTRAINT [vulnerability_feedback_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[vulnerability_identifiers]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vulnerability_identifiers](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [int] NOT NULL,
	[fingerprint] [varbinary](1024) NOT NULL,
	[external_type] [varchar](max) NOT NULL,
	[external_id] [varchar](max) NOT NULL,
	[name] [varchar](max) NOT NULL,
	[url] [varchar](max) NULL,
 CONSTRAINT [vulnerability_identifiers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[vulnerability_issue_links]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vulnerability_issue_links](
	[id] [bigint]  NOT NULL,
	[vulnerability_id] [bigint] NOT NULL,
	[issue_id] [bigint] NOT NULL,
	[link_type] [smallint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
 CONSTRAINT [vulnerability_issue_links_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vulnerability_occurrence_identifiers]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vulnerability_occurrence_identifiers](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[occurrence_id] [bigint] NOT NULL,
	[identifier_id] [bigint] NOT NULL,
 CONSTRAINT [vulnerability_occurrence_identifiers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vulnerability_occurrence_pipelines]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vulnerability_occurrence_pipelines](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[occurrence_id] [bigint] NOT NULL,
	[pipeline_id] [int] NOT NULL,
 CONSTRAINT [vulnerability_occurrence_pipelines_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vulnerability_occurrences]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vulnerability_occurrences](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[severity] [smallint] NOT NULL,
	[confidence] [smallint] NOT NULL,
	[report_type] [smallint] NOT NULL,
	[project_id] [int] NOT NULL,
	[scanner_id] [bigint] NOT NULL,
	[primary_identifier_id] [bigint] NOT NULL,
	[project_fingerprint] [varbinary](1024) NOT NULL,
	[location_fingerprint] [varbinary](1024) NOT NULL,
	[uuid] [varchar](36) NOT NULL,
	[name] [varchar](max) NOT NULL,
	[metadata_version] [varchar](max) NOT NULL,
	[raw_metadata] [varchar](max) NOT NULL,
	[vulnerability_id] [bigint] NULL,
 CONSTRAINT [vulnerability_occurrences_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[vulnerability_scanners]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vulnerability_scanners](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [int] NOT NULL,
	[external_id] [varchar](max) NOT NULL,
	[name] [varchar](max) NOT NULL,
 CONSTRAINT [vulnerability_scanners_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[vulnerability_user_mentions]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vulnerability_user_mentions](
	[id] [bigint]  NOT NULL,
	[vulnerability_id] [bigint] NOT NULL,
	[note_id] [int] NULL,
	[mentioned_users_ids] [varchar](max) NULL,
	[mentioned_projects_ids] [varchar](max) NULL,
	[mentioned_groups_ids] [varchar](max) NULL,
 CONSTRAINT [vulnerability_user_mentions_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[web_hook_logs]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_hook_logs](
	[id] [int]  NOT NULL,
	[web_hook_id] [int] NOT NULL,
	[trigger] [varchar](max) NULL,
	[url] [varchar](max) NULL,
	[request_headers] [varchar](max) NULL,
	[request_data] [varchar](max) NULL,
	[response_headers] [varchar](max) NULL,
	[response_body] [varchar](max) NULL,
	[response_status] [varchar](max) NULL,
	[execution_duration] [float] NULL,
	[internal_error_message] [varchar](max) NULL,
	[created_at] [datetime] NOT NULL,
	[updated_at] [datetime] NOT NULL,
 CONSTRAINT [web_hook_logs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[web_hooks]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[web_hooks](
	[id] [int]  NOT NULL,
	[project_id] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_at] [datetime] NULL,
	[type] [varchar](max) NULL,
	[service_id] [int] NULL,
	[push_events] [bit] NOT NULL,
	[issues_events] [bit] NOT NULL,
	[merge_requests_events] [bit] NOT NULL,
	[tag_push_events] [bit] NULL,
	[group_id] [int] NULL,
	[note_events] [bit] NOT NULL,
	[enable_ssl_verification] [bit] NULL,
	[wiki_page_events] [bit] NOT NULL,
	[pipeline_events] [bit] NOT NULL,
	[confidential_issues_events] [bit] NOT NULL,
	[repository_update_events] [bit] NOT NULL,
	[job_events] [bit] NOT NULL,
	[confidential_note_events] [bit] NULL,
	[push_events_branch_filter] [varchar](max) NULL,
	[encrypted_token] [varchar](max) NULL,
	[encrypted_token_iv] [varchar](max) NULL,
	[encrypted_url] [varchar](max) NULL,
	[encrypted_url_iv] [varchar](max) NULL,
 CONSTRAINT [web_hooks_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] 
GO
/****** Object:  Table [dbo].[wiki_page_meta]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wiki_page_meta](
	[id] [int]  NOT NULL,
	[project_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[title] [varchar](255) NOT NULL,
 CONSTRAINT [wiki_page_meta_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[wiki_page_slugs]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[wiki_page_slugs](
	[id] [int]  NOT NULL,
	[canonical] [bit] NOT NULL,
	[wiki_page_meta_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[slug] [varchar](2048) NOT NULL,
 CONSTRAINT [wiki_page_slugs_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[x509_certificates]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[x509_certificates](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[subject_key_identifier] [varchar](255) NOT NULL,
	[subject] [varchar](255) NOT NULL,
	[email] [varchar](255) NOT NULL,
	[serial_number] [varbinary](1024) NOT NULL,
	[certificate_status] [smallint] NOT NULL,
	[x509_issuer_id] [bigint] NOT NULL,
 CONSTRAINT [x509_certificates_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[x509_commit_signatures]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[x509_commit_signatures](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[project_id] [bigint] NOT NULL,
	[x509_certificate_id] [bigint] NOT NULL,
	[commit_sha] [varbinary](1024) NOT NULL,
	[verification_status] [smallint] NOT NULL,
 CONSTRAINT [x509_commit_signatures_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[x509_issuers]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[x509_issuers](
	[id] [bigint]  NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[subject_key_identifier] [varchar](255) NOT NULL,
	[subject] [varchar](255) NOT NULL,
	[crl_url] [varchar](255) NOT NULL,
 CONSTRAINT [x509_issuers_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[zoom_meetings]    Script Date: 2021/9/6 21:07:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[zoom_meetings](
	[id] [bigint]  NOT NULL,
	[project_id] [bigint] NOT NULL,
	[issue_id] [bigint] NOT NULL,
	[created_at] [datetimeoffset](7) NOT NULL,
	[updated_at] [datetimeoffset](7) NOT NULL,
	[issue_status] [smallint] NOT NULL,
	[url] [varchar](255) NULL,
 CONSTRAINT [zoom_meetings_pkey] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[analytics_cycle_analytics_group_stages] ADD  DEFAULT ((0)) FOR [hidden]
GO
ALTER TABLE [dbo].[analytics_cycle_analytics_group_stages] ADD  DEFAULT ((1)) FOR [custom]
GO
ALTER TABLE [dbo].[analytics_cycle_analytics_project_stages] ADD  DEFAULT ((0)) FOR [hidden]
GO
ALTER TABLE [dbo].[analytics_cycle_analytics_project_stages] ADD  DEFAULT ((1)) FOR [custom]
GO
ALTER TABLE [dbo].[analytics_language_trend_repository_languages] ADD  DEFAULT ((0)) FOR [file_count]
GO
ALTER TABLE [dbo].[analytics_language_trend_repository_languages] ADD  DEFAULT ((0)) FOR [loc]
GO
ALTER TABLE [dbo].[analytics_language_trend_repository_languages] ADD  DEFAULT ((0)) FOR [bytes]
GO
ALTER TABLE [dbo].[analytics_language_trend_repository_languages] ADD  DEFAULT ((0)) FOR [percentage]
GO
ALTER TABLE [dbo].[appearances] ADD  DEFAULT ((0)) FOR [email_header_and_footer_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((2)) FOR [default_branch_protection]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [version_check_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((10)) FOR [max_attachment_size]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [default_project_visibility]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [default_snippet_visibility]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [user_oauth_applications]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((10080)) FOR [session_expire_delay]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [shared_runners_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((100)) FOR [max_artifacts_size]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((100)) FOR [max_pages_size]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [require_two_factor_authentication]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((48)) FOR [two_factor_grace_period]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [metrics_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((16)) FOR [metrics_pool_size]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((10)) FOR [metrics_timeout]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((10)) FOR [metrics_method_call_threshold]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [recaptcha_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((8089)) FOR [metrics_port]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [akismet_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((15)) FOR [metrics_sample_interval]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [email_author_in_body]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [repository_checks_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [metrics_packet_size]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [send_user_confirmation_email]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((5)) FOR [container_registry_token_expire_delay]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [user_default_external]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [elasticsearch_indexing]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [elasticsearch_search]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [domain_blacklist_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [usage_ping_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [rsa_key_restriction]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((-1)) FOR [dsa_key_restriction]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [ecdsa_key_restriction]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [ed25519_key_restriction]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [housekeeping_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [housekeeping_bitmaps_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((10)) FOR [housekeeping_incremental_repack_period]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((50)) FOR [housekeeping_full_repack_period]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((200)) FOR [housekeeping_gc_period]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [html_emails_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [shared_runners_minutes]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [repository_size_limit]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [terminal_max_session_time]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [unique_ips_limit_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [elasticsearch_aws]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((10)) FOR [geo_status_timeout]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1.0)) FOR [polling_interval_multiplier]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [check_namespace_plan]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((300)) FOR [mirror_max_delay]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((100)) FOR [mirror_max_capacity]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((50)) FOR [mirror_capacity_threshold]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [prometheus_metrics_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [authorized_keys_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [help_page_hide_commercial_content]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [slack_app_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [allow_group_owners_to_manage_ldap]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [hashed_storage_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [project_export_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [auto_devops_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [throttle_unauthenticated_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((3600)) FOR [throttle_unauthenticated_requests_per_period]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((3600)) FOR [throttle_unauthenticated_period_in_seconds]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [throttle_authenticated_api_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((7200)) FOR [throttle_authenticated_api_requests_per_period]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((3600)) FOR [throttle_authenticated_api_period_in_seconds]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [throttle_authenticated_web_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((7200)) FOR [throttle_authenticated_web_requests_per_period]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((3600)) FOR [throttle_authenticated_web_period_in_seconds]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((55)) FOR [gitaly_timeout_default]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((30)) FOR [gitaly_timeout_medium]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((10)) FOR [gitaly_timeout_fast]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [mirror_available]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [password_authentication_enabled_for_git]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [external_authorization_service_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [pages_domain_verification_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0.5)) FOR [external_authorization_service_timeout]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [enforce_terms]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [pseudonymizer_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [hide_third_party_offers]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [snowplow_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [instance_statistics_visibility_private]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [web_ide_clientside_preview_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [user_show_add_ssh_key_message]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((102400)) FOR [diff_max_patch_bytes]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [protected_ci_variables]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [local_markdown_version]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [first_day_of_week]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [elasticsearch_limit_indexing]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((2)) FOR [default_project_creation]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [lets_encrypt_terms_of_service_accepted]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((5)) FOR [elasticsearch_shards]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [elasticsearch_replicas]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [dns_rebinding_protection_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [default_project_deletion_protection]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [grafana_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [lock_memberships_to_ldap]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [time_tracking_limit_to_hours]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [login_recaptcha_protection_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ('{}') FOR [outbound_local_requests_whitelist]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((300)) FOR [raw_blob_request_limit]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [allow_local_requests_from_web_hooks_and_services]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [allow_local_requests_from_system_hooks]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [asset_proxy_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [throttle_protected_paths_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((10)) FOR [throttle_protected_paths_requests_per_period]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((60)) FOR [throttle_protected_paths_period_in_seconds]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ('{/users/password,/users/sign_in,/api/v3/session.json,/api/v3/session,/api/v4/session.json,/api/v4/session,/users,/users/confirmation,/unsubscribes/,/import/github/personal_access_token,/admin/session}') FOR [protected_paths]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [throttle_incident_management_notification_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((3600)) FOR [throttle_incident_management_notification_period_in_seconds]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((3600)) FOR [throttle_incident_management_notification_per_period]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((3)) FOR [push_event_hooks_limit]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((3)) FOR [push_event_activities_limit]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((7)) FOR [deletion_adjourned_period]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [eks_integration_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [sourcegraph_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [sourcegraph_public_only]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((52428800)) FOR [snippet_size_limit]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((8)) FOR [minimum_password_length]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [force_pages_access_control]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [updating_name_disabled_for_users]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [elasticsearch_indexed_field_length_limit]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((10)) FOR [elasticsearch_max_bulk_size_mb]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((10)) FOR [elasticsearch_max_bulk_concurrency]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [disable_overriding_approvers_per_merge_request]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [prevent_merge_requests_author_approval]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [prevent_merge_requests_committers_approval]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [email_restrictions_enabled]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((1)) FOR [npm_package_requests_forwarding]
GO
ALTER TABLE [dbo].[application_settings] ADD  DEFAULT ((0)) FOR [namespace_storage_size_limit]
GO
ALTER TABLE [dbo].[approval_merge_request_rules] ADD  DEFAULT ((0)) FOR [approvals_required]
GO
ALTER TABLE [dbo].[approval_merge_request_rules] ADD  DEFAULT ((0)) FOR [code_owner]
GO
ALTER TABLE [dbo].[approval_merge_request_rules] ADD  DEFAULT ((1)) FOR [rule_type]
GO
ALTER TABLE [dbo].[approval_project_rules] ADD  DEFAULT ((0)) FOR [approvals_required]
GO
ALTER TABLE [dbo].[approval_project_rules] ADD  DEFAULT ((0)) FOR [rule_type]
GO
ALTER TABLE [dbo].[broadcast_messages] ADD  DEFAULT ((1)) FOR [broadcast_type]
GO
ALTER TABLE [dbo].[ci_build_needs] ADD  DEFAULT ((1)) FOR [artifacts]
GO
ALTER TABLE [dbo].[ci_builds] ADD  DEFAULT ((0)) FOR [allow_failure]
GO
ALTER TABLE [dbo].[ci_builds] ADD  DEFAULT ((0)) FOR [lock_version]
GO
ALTER TABLE [dbo].[ci_builds_metadata] ADD  DEFAULT ((1)) FOR [timeout_source]
GO
ALTER TABLE [dbo].[ci_group_variables] ADD  DEFAULT ((0)) FOR [protected]
GO
ALTER TABLE [dbo].[ci_group_variables] ADD  DEFAULT ((0)) FOR [masked]
GO
ALTER TABLE [dbo].[ci_group_variables] ADD  DEFAULT ((1)) FOR [variable_type]
GO
ALTER TABLE [dbo].[ci_job_variables] ADD  DEFAULT ((1)) FOR [variable_type]
GO
ALTER TABLE [dbo].[ci_job_variables] ADD  DEFAULT ((0)) FOR [source]
GO
ALTER TABLE [dbo].[ci_pipeline_schedule_variables] ADD  DEFAULT ((1)) FOR [variable_type]
GO
ALTER TABLE [dbo].[ci_pipeline_schedules] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[ci_pipeline_variables] ADD  DEFAULT ((1)) FOR [variable_type]
GO
ALTER TABLE [dbo].[ci_pipelines] ADD  DEFAULT ((0)) FOR [tag]
GO
ALTER TABLE [dbo].[ci_pipelines] ADD  DEFAULT ((0)) FOR [lock_version]
GO
ALTER TABLE [dbo].[ci_refs] ADD  DEFAULT ((0)) FOR [lock_version]
GO
ALTER TABLE [dbo].[ci_refs] ADD  DEFAULT ((0)) FOR [tag]
GO
ALTER TABLE [dbo].[ci_runners] ADD  DEFAULT ((1)) FOR [active]
GO
ALTER TABLE [dbo].[ci_runners] ADD  DEFAULT ((0)) FOR [is_shared]
GO
ALTER TABLE [dbo].[ci_runners] ADD  DEFAULT ((1)) FOR [run_untagged]
GO
ALTER TABLE [dbo].[ci_runners] ADD  DEFAULT ((0)) FOR [locked]
GO
ALTER TABLE [dbo].[ci_runners] ADD  DEFAULT ((0)) FOR [access_level]
GO
ALTER TABLE [dbo].[ci_runners] ADD  DEFAULT ((0.0)) FOR [public_projects_minutes_cost_factor]
GO
ALTER TABLE [dbo].[ci_runners] ADD  DEFAULT ((1.0)) FOR [private_projects_minutes_cost_factor]
GO
ALTER TABLE [dbo].[ci_stages] ADD  DEFAULT ((0)) FOR [lock_version]
GO
ALTER TABLE [dbo].[ci_variables] ADD  DEFAULT ((0)) FOR [protected]
GO
ALTER TABLE [dbo].[ci_variables] ADD  DEFAULT ((0)) FOR [masked]
GO
ALTER TABLE [dbo].[ci_variables] ADD  DEFAULT ((1)) FOR [variable_type]
GO
ALTER TABLE [dbo].[cluster_providers_aws] ADD  DEFAULT ('{}') FOR [subnet_ids]
GO
ALTER TABLE [dbo].[cluster_providers_gcp] ADD  DEFAULT ((0)) FOR [legacy_abac]
GO
ALTER TABLE [dbo].[cluster_providers_gcp] ADD  DEFAULT ((0)) FOR [cloud_run]
GO
ALTER TABLE [dbo].[clusters] ADD  DEFAULT ((1)) FOR [enabled]
GO
ALTER TABLE [dbo].[clusters] ADD  DEFAULT ((3)) FOR [cluster_type]
GO
ALTER TABLE [dbo].[clusters] ADD  DEFAULT ((1)) FOR [managed]
GO
ALTER TABLE [dbo].[clusters] ADD  DEFAULT ((1)) FOR [namespace_per_environment]
GO
ALTER TABLE [dbo].[clusters] ADD  DEFAULT ((1)) FOR [cleanup_status]
GO
ALTER TABLE [dbo].[clusters_applications_ingress] ADD  DEFAULT ((0)) FOR [modsecurity_mode]
GO
ALTER TABLE [dbo].[clusters_applications_runners] ADD  DEFAULT ((1)) FOR [privileged]
GO
ALTER TABLE [dbo].[container_expiration_policies] ADD  DEFAULT ('7d') FOR [cadence]
GO
ALTER TABLE [dbo].[container_expiration_policies] ADD  DEFAULT ((0)) FOR [enabled]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] ADD  DEFAULT ((0.0)) FOR [percentage_boards]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] ADD  DEFAULT ((0.0)) FOR [percentage_ci_pipelines]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] ADD  DEFAULT ((0.0)) FOR [percentage_deployments]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] ADD  DEFAULT ((0.0)) FOR [percentage_environments]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] ADD  DEFAULT ((0.0)) FOR [percentage_issues]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] ADD  DEFAULT ((0.0)) FOR [percentage_merge_requests]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] ADD  DEFAULT ((0.0)) FOR [percentage_milestones]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] ADD  DEFAULT ((0.0)) FOR [percentage_notes]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] ADD  DEFAULT ((0.0)) FOR [percentage_projects_prometheus_active]
GO
ALTER TABLE [dbo].[conversational_development_index_metrics] ADD  DEFAULT ((0.0)) FOR [percentage_service_desk_issues]
GO
ALTER TABLE [dbo].[dependency_proxy_group_settings] ADD  DEFAULT ((0)) FOR [enabled]
GO
ALTER TABLE [dbo].[deploy_keys_projects] ADD  DEFAULT ((0)) FOR [can_push]
GO
ALTER TABLE [dbo].[deploy_tokens] ADD  DEFAULT ((0)) FOR [revoked]
GO
ALTER TABLE [dbo].[deploy_tokens] ADD  DEFAULT ((0)) FOR [read_repository]
GO
ALTER TABLE [dbo].[deploy_tokens] ADD  DEFAULT ((0)) FOR [read_registry]
GO
ALTER TABLE [dbo].[deploy_tokens] ADD  DEFAULT ((2)) FOR [deploy_token_type]
GO
ALTER TABLE [dbo].[design_management_designs_versions] ADD  DEFAULT ((0)) FOR [event]
GO
ALTER TABLE [dbo].[draft_notes] ADD  DEFAULT ((0)) FOR [resolve_discussion]
GO
ALTER TABLE [dbo].[epics] ADD  DEFAULT ((0)) FOR [lock_version]
GO
ALTER TABLE [dbo].[epics] ADD  DEFAULT ((1)) FOR [state_id]
GO
ALTER TABLE [dbo].[geo_nodes] ADD  DEFAULT ((0)) FOR [primary]
GO
ALTER TABLE [dbo].[geo_nodes] ADD  DEFAULT ((1)) FOR [enabled]
GO
ALTER TABLE [dbo].[geo_nodes] ADD  DEFAULT ((10)) FOR [files_max_capacity]
GO
ALTER TABLE [dbo].[geo_nodes] ADD  DEFAULT ((25)) FOR [repos_max_capacity]
GO
ALTER TABLE [dbo].[geo_nodes] ADD  DEFAULT ((100)) FOR [verification_max_capacity]
GO
ALTER TABLE [dbo].[geo_nodes] ADD  DEFAULT ((7)) FOR [minimum_reverification_interval]
GO
ALTER TABLE [dbo].[geo_nodes] ADD  DEFAULT ((10)) FOR [container_repositories_max_capacity]
GO
ALTER TABLE [dbo].[geo_nodes] ADD  DEFAULT ((0)) FOR [sync_object_storage]
GO
ALTER TABLE [dbo].[geo_repository_updated_events] ADD  DEFAULT ((0)) FOR [new_branch]
GO
ALTER TABLE [dbo].[geo_repository_updated_events] ADD  DEFAULT ((0)) FOR [remove_branch]
GO
ALTER TABLE [dbo].[gitlab_subscriptions] ADD  DEFAULT ((0)) FOR [max_seats_used]
GO
ALTER TABLE [dbo].[gitlab_subscriptions] ADD  DEFAULT ((0)) FOR [seats]
GO
ALTER TABLE [dbo].[gitlab_subscriptions] ADD  DEFAULT ((0)) FOR [trial]
GO
ALTER TABLE [dbo].[gpg_signatures] ADD  DEFAULT ((0)) FOR [verification_status]
GO
ALTER TABLE [dbo].[grafana_integrations] ADD  DEFAULT ((0)) FOR [enabled]
GO
ALTER TABLE [dbo].[group_group_links] ADD  DEFAULT ((30)) FOR [group_access]
GO
ALTER TABLE [dbo].[issue_links] ADD  DEFAULT ((0)) FOR [link_type]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT ((0)) FOR [confidential]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT ((0)) FOR [lock_version]
GO
ALTER TABLE [dbo].[issues] ADD  DEFAULT ((1)) FOR [state_id]
GO
ALTER TABLE [dbo].[keys] ADD  DEFAULT ((0)) FOR [public]
GO
ALTER TABLE [dbo].[labels] ADD  DEFAULT ((0)) FOR [template]
GO
ALTER TABLE [dbo].[lists] ADD  DEFAULT ((1)) FOR [list_type]
GO
ALTER TABLE [dbo].[lists] ADD  DEFAULT ((0)) FOR [max_issue_count]
GO
ALTER TABLE [dbo].[lists] ADD  DEFAULT ((0)) FOR [max_issue_weight]
GO
ALTER TABLE [dbo].[members] ADD  DEFAULT ((0)) FOR [ldap]
GO
ALTER TABLE [dbo].[members] ADD  DEFAULT ((0)) FOR [override]
GO
ALTER TABLE [dbo].[merge_requests] ADD  DEFAULT ((0)) FOR [merge_when_pipeline_succeeds]
GO
ALTER TABLE [dbo].[merge_requests] ADD  DEFAULT ((0)) FOR [lock_version]
GO
ALTER TABLE [dbo].[merge_requests] ADD  DEFAULT ((0)) FOR [squash]
GO
ALTER TABLE [dbo].[merge_requests] ADD  DEFAULT ((1)) FOR [state_id]
GO
ALTER TABLE [dbo].[merge_trains] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] ADD  DEFAULT ((0)) FOR [repository_size]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] ADD  DEFAULT ((0)) FOR [lfs_objects_size]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] ADD  DEFAULT ((0)) FOR [wiki_size]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] ADD  DEFAULT ((0)) FOR [build_artifacts_size]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] ADD  DEFAULT ((0)) FOR [storage_size]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] ADD  DEFAULT ((0)) FOR [packages_size]
GO
ALTER TABLE [dbo].[namespace_statistics] ADD  DEFAULT ((0)) FOR [shared_runners_seconds]
GO
ALTER TABLE [dbo].[namespaces] ADD  DEFAULT ((0)) FOR [membership_lock]
GO
ALTER TABLE [dbo].[namespaces] ADD  DEFAULT ((0)) FOR [share_with_group_lock]
GO
ALTER TABLE [dbo].[namespaces] ADD  DEFAULT ((20)) FOR [visibility_level]
GO
ALTER TABLE [dbo].[namespaces] ADD  DEFAULT ((1)) FOR [request_access_enabled]
GO
ALTER TABLE [dbo].[namespaces] ADD  DEFAULT ((0)) FOR [require_two_factor_authentication]
GO
ALTER TABLE [dbo].[namespaces] ADD  DEFAULT ((48)) FOR [two_factor_grace_period]
GO
ALTER TABLE [dbo].[namespaces] ADD  DEFAULT ((1)) FOR [subgroup_creation_level]
GO
ALTER TABLE [dbo].[notes] ADD  DEFAULT ((0)) FOR [system]
GO
ALTER TABLE [dbo].[notification_settings] ADD  DEFAULT ((0)) FOR [level]
GO
ALTER TABLE [dbo].[oauth_applications] ADD  DEFAULT ((0)) FOR [trusted]
GO
ALTER TABLE [dbo].[oauth_applications] ADD  DEFAULT ((1)) FOR [confidential]
GO
ALTER TABLE [dbo].[operations_feature_flags] ADD  DEFAULT ((1)) FOR [version]
GO
ALTER TABLE [dbo].[packages_conan_file_metadata] ADD  DEFAULT ('0') FOR [recipe_revision]
GO
ALTER TABLE [dbo].[pages_domains] ADD  DEFAULT ((0)) FOR [auto_ssl_enabled]
GO
ALTER TABLE [dbo].[pages_domains] ADD  DEFAULT ((0)) FOR [certificate_source]
GO
ALTER TABLE [dbo].[pages_domains] ADD  DEFAULT ((0)) FOR [wildcard]
GO
ALTER TABLE [dbo].[pages_domains] ADD  DEFAULT ((0)) FOR [usage]
GO
ALTER TABLE [dbo].[pages_domains] ADD  DEFAULT ((2)) FOR [scope]
GO
ALTER TABLE [dbo].[pages_domains] ADD  DEFAULT ((0)) FOR [auto_ssl_failed]
GO
ALTER TABLE [dbo].[personal_access_tokens] ADD  DEFAULT ((0)) FOR [revoked]
GO
ALTER TABLE [dbo].[personal_access_tokens] ADD  DEFAULT ((0)) FOR [impersonation]
GO
ALTER TABLE [dbo].[personal_access_tokens] ADD  DEFAULT ((0)) FOR [expire_notification_delivered]
GO
ALTER TABLE [dbo].[plan_limits] ADD  DEFAULT ((0)) FOR [ci_active_pipelines]
GO
ALTER TABLE [dbo].[plan_limits] ADD  DEFAULT ((0)) FOR [ci_pipeline_size]
GO
ALTER TABLE [dbo].[plan_limits] ADD  DEFAULT ((0)) FOR [ci_active_jobs]
GO
ALTER TABLE [dbo].[plan_limits] ADD  DEFAULT ((100)) FOR [project_hooks]
GO
ALTER TABLE [dbo].[plan_limits] ADD  DEFAULT ((50)) FOR [group_hooks]
GO
ALTER TABLE [dbo].[plan_limits] ADD  DEFAULT ((2)) FOR [ci_project_subscriptions]
GO
ALTER TABLE [dbo].[plan_limits] ADD  DEFAULT ((10)) FOR [ci_pipeline_schedules]
GO
ALTER TABLE [dbo].[project_auto_devops] ADD  DEFAULT ((0)) FOR [deploy_strategy]
GO
ALTER TABLE [dbo].[project_ci_cd_settings] ADD  DEFAULT ((1)) FOR [group_runners_enabled]
GO
ALTER TABLE [dbo].[project_error_tracking_settings] ADD  DEFAULT ((0)) FOR [enabled]
GO
ALTER TABLE [dbo].[project_export_jobs] ADD  DEFAULT ((0)) FOR [status]
GO
ALTER TABLE [dbo].[project_features] ADD  DEFAULT ((20)) FOR [snippets_access_level]
GO
ALTER TABLE [dbo].[project_features] ADD  DEFAULT ((20)) FOR [repository_access_level]
GO
ALTER TABLE [dbo].[project_group_links] ADD  DEFAULT ((30)) FOR [group_access]
GO
ALTER TABLE [dbo].[project_incident_management_settings] ADD  DEFAULT ((1)) FOR [create_issue]
GO
ALTER TABLE [dbo].[project_incident_management_settings] ADD  DEFAULT ((0)) FOR [send_email]
GO
ALTER TABLE [dbo].[project_mirror_data] ADD  DEFAULT ((0)) FOR [retry_count]
GO
ALTER TABLE [dbo].[project_pages_metadata] ADD  DEFAULT ((0)) FOR [deployed]
GO
ALTER TABLE [dbo].[project_statistics] ADD  DEFAULT ((0)) FOR [commit_count]
GO
ALTER TABLE [dbo].[project_statistics] ADD  DEFAULT ((0)) FOR [storage_size]
GO
ALTER TABLE [dbo].[project_statistics] ADD  DEFAULT ((0)) FOR [repository_size]
GO
ALTER TABLE [dbo].[project_statistics] ADD  DEFAULT ((0)) FOR [lfs_objects_size]
GO
ALTER TABLE [dbo].[project_statistics] ADD  DEFAULT ((0)) FOR [build_artifacts_size]
GO
ALTER TABLE [dbo].[project_statistics] ADD  DEFAULT ((0)) FOR [shared_runners_seconds]
GO
ALTER TABLE [dbo].[project_statistics] ADD  DEFAULT ((0)) FOR [packages_size]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [visibility_level]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [archived]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [star_count]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [merge_requests_rebase_enabled]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [approvals_before_merge]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((1)) FOR [reset_approvals_on_push]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [merge_requests_ff_only_enabled]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [mirror]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((1)) FOR [shared_runners_enabled]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((1)) FOR [build_allow_git_fetch]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((3600)) FOR [build_timeout]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [mirror_trigger_builds]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [pending_delete]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((1)) FOR [public_builds]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((0)) FOR [only_allow_merge_if_pipeline_succeeds]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((1)) FOR [request_access_enabled]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((1)) FOR [printing_merge_request_link_enabled]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((1)) FOR [auto_cancel_pending_pipelines]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((1)) FOR [service_desk_enabled]
GO
ALTER TABLE [dbo].[projects] ADD  DEFAULT ((1)) FOR [pages_https_only]
GO
ALTER TABLE [dbo].[prometheus_metrics] ADD  DEFAULT ((0)) FOR [common]
GO
ALTER TABLE [dbo].[protected_branch_merge_access_levels] ADD  DEFAULT ((40)) FOR [access_level]
GO
ALTER TABLE [dbo].[protected_branch_push_access_levels] ADD  DEFAULT ((40)) FOR [access_level]
GO
ALTER TABLE [dbo].[protected_branch_unprotect_access_levels] ADD  DEFAULT ((40)) FOR [access_level]
GO
ALTER TABLE [dbo].[protected_branches] ADD  DEFAULT ((0)) FOR [code_owner_approval_required]
GO
ALTER TABLE [dbo].[protected_environment_deploy_access_levels] ADD  DEFAULT ((40)) FOR [access_level]
GO
ALTER TABLE [dbo].[protected_tag_create_access_levels] ADD  DEFAULT ((40)) FOR [access_level]
GO
ALTER TABLE [dbo].[push_rules] ADD  DEFAULT ((0)) FOR [member_check]
GO
ALTER TABLE [dbo].[push_rules] ADD  DEFAULT ((0)) FOR [is_sample]
GO
ALTER TABLE [dbo].[push_rules] ADD  DEFAULT ((0)) FOR [max_file_size]
GO
ALTER TABLE [dbo].[push_rules] ADD  DEFAULT ((0)) FOR [prevent_secrets]
GO
ALTER TABLE [dbo].[push_rules] ADD  DEFAULT ((1)) FOR [regexp_uses_re2]
GO
ALTER TABLE [dbo].[remote_mirrors] ADD  DEFAULT ((0)) FOR [enabled]
GO
ALTER TABLE [dbo].[remote_mirrors] ADD  DEFAULT ((0)) FOR [only_protected_branches]
GO
ALTER TABLE [dbo].[requirements] ADD  DEFAULT ((1)) FOR [state]
GO
ALTER TABLE [dbo].[saml_providers] ADD  DEFAULT ((0)) FOR [enforced_sso]
GO
ALTER TABLE [dbo].[saml_providers] ADD  DEFAULT ((0)) FOR [enforced_group_managed_accounts]
GO
ALTER TABLE [dbo].[saml_providers] ADD  DEFAULT ((1)) FOR [prohibited_outer_forks]
GO
ALTER TABLE [dbo].[scim_identities] ADD  DEFAULT ((0)) FOR [active]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((0)) FOR [active]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((1)) FOR [push_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((1)) FOR [issues_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((1)) FOR [merge_requests_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((1)) FOR [tag_push_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((1)) FOR [note_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((0)) FOR [default]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((1)) FOR [wiki_page_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((0)) FOR [pipeline_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((1)) FOR [confidential_issues_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((1)) FOR [commit_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((0)) FOR [job_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((1)) FOR [confidential_note_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((0)) FOR [deployment_events]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((1)) FOR [comment_on_event_enabled]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((0)) FOR [template]
GO
ALTER TABLE [dbo].[services] ADD  DEFAULT ((0)) FOR [instance]
GO
ALTER TABLE [dbo].[snippets] ADD  DEFAULT ((0)) FOR [visibility_level]
GO
ALTER TABLE [dbo].[snippets] ADD  DEFAULT ((0)) FOR [secret]
GO
ALTER TABLE [dbo].[software_license_policies] ADD  DEFAULT ((0)) FOR [classification]
GO
ALTER TABLE [dbo].[spam_logs] ADD  DEFAULT ((0)) FOR [submitted_as_ham]
GO
ALTER TABLE [dbo].[spam_logs] ADD  DEFAULT ((0)) FOR [recaptcha_verified]
GO
ALTER TABLE [dbo].[status_page_settings] ADD  DEFAULT ((0)) FOR [enabled]
GO
ALTER TABLE [dbo].[suggestions] ADD  DEFAULT ((0)) FOR [applied]
GO
ALTER TABLE [dbo].[suggestions] ADD  DEFAULT ((0)) FOR [lines_above]
GO
ALTER TABLE [dbo].[suggestions] ADD  DEFAULT ((0)) FOR [lines_below]
GO
ALTER TABLE [dbo].[suggestions] ADD  DEFAULT ((0)) FOR [outdated]
GO
ALTER TABLE [dbo].[tags] ADD  DEFAULT ((0)) FOR [taggings_count]
GO
ALTER TABLE [dbo].[term_agreements] ADD  DEFAULT ((0)) FOR [accepted]
GO
ALTER TABLE [dbo].[user_agent_details] ADD  DEFAULT ((0)) FOR [submitted]
GO
ALTER TABLE [dbo].[user_details] ADD  DEFAULT ('') FOR [job_title]
GO
ALTER TABLE [dbo].[user_preferences] ADD  DEFAULT ((0)) FOR [issue_notes_filter]
GO
ALTER TABLE [dbo].[user_preferences] ADD  DEFAULT ((0)) FOR [merge_request_notes_filter]
GO
ALTER TABLE [dbo].[user_preferences] ADD  DEFAULT ((0)) FOR [epic_notes_filter]
GO
ALTER TABLE [dbo].[user_preferences] ADD  DEFAULT ((1)) FOR [show_whitespace_in_diffs]
GO
ALTER TABLE [dbo].[user_synced_attributes_metadata] ADD  DEFAULT ((0)) FOR [name_synced]
GO
ALTER TABLE [dbo].[user_synced_attributes_metadata] ADD  DEFAULT ((0)) FOR [email_synced]
GO
ALTER TABLE [dbo].[user_synced_attributes_metadata] ADD  DEFAULT ((0)) FOR [location_synced]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [sign_in_count]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [admin]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [failed_attempts]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [can_create_group]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [can_create_team]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((1)) FOR [color_scheme_id]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [hide_no_ssh_key]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [hide_no_password]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [password_automatically_set]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [otp_required_for_login]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [dashboard]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [project_view]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [layout]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [hide_project_limit]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [external]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [auditor]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [require_two_factor_authentication_from_group]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((48)) FOR [two_factor_grace_period]
GO
ALTER TABLE [dbo].[users] ADD  DEFAULT ((0)) FOR [private_profile]
GO
ALTER TABLE [dbo].[users_statistics] ADD  DEFAULT ((0)) FOR [without_groups_and_projects]
GO
ALTER TABLE [dbo].[users_statistics] ADD  DEFAULT ((0)) FOR [with_highest_role_guest]
GO
ALTER TABLE [dbo].[users_statistics] ADD  DEFAULT ((0)) FOR [with_highest_role_reporter]
GO
ALTER TABLE [dbo].[users_statistics] ADD  DEFAULT ((0)) FOR [with_highest_role_developer]
GO
ALTER TABLE [dbo].[users_statistics] ADD  DEFAULT ((0)) FOR [with_highest_role_maintainer]
GO
ALTER TABLE [dbo].[users_statistics] ADD  DEFAULT ((0)) FOR [with_highest_role_owner]
GO
ALTER TABLE [dbo].[users_statistics] ADD  DEFAULT ((0)) FOR [bots]
GO
ALTER TABLE [dbo].[users_statistics] ADD  DEFAULT ((0)) FOR [blocked]
GO
ALTER TABLE [dbo].[vulnerabilities] ADD  DEFAULT ((1)) FOR [state]
GO
ALTER TABLE [dbo].[vulnerabilities] ADD  DEFAULT ((0)) FOR [severity_overridden]
GO
ALTER TABLE [dbo].[vulnerabilities] ADD  DEFAULT ((0)) FOR [confidence_overridden]
GO
ALTER TABLE [dbo].[vulnerability_exports] ADD  DEFAULT ((0)) FOR [format]
GO
ALTER TABLE [dbo].[vulnerability_issue_links] ADD  DEFAULT ((1)) FOR [link_type]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((1)) FOR [push_events]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((0)) FOR [issues_events]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((0)) FOR [merge_requests_events]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((0)) FOR [tag_push_events]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((0)) FOR [note_events]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((1)) FOR [enable_ssl_verification]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((0)) FOR [wiki_page_events]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((0)) FOR [pipeline_events]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((0)) FOR [confidential_issues_events]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((0)) FOR [repository_update_events]
GO
ALTER TABLE [dbo].[web_hooks] ADD  DEFAULT ((0)) FOR [job_events]
GO
ALTER TABLE [dbo].[wiki_page_slugs] ADD  DEFAULT ((0)) FOR [canonical]
GO
ALTER TABLE [dbo].[x509_certificates] ADD  DEFAULT ((0)) FOR [certificate_status]
GO
ALTER TABLE [dbo].[x509_commit_signatures] ADD  DEFAULT ((0)) FOR [verification_status]
GO
ALTER TABLE [dbo].[zoom_meetings] ADD  DEFAULT ((1)) FOR [issue_status]
GO
ALTER TABLE [dbo].[alerts_service_data]  WITH CHECK ADD  CONSTRAINT [fk_rails_b93215a42c] FOREIGN KEY([service_id])
REFERENCES [dbo].[services] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[alerts_service_data] CHECK CONSTRAINT [fk_rails_b93215a42c]
GO
ALTER TABLE [dbo].[allowed_email_domains]  WITH CHECK ADD  CONSTRAINT [fk_rails_8b5da859f9] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[allowed_email_domains] CHECK CONSTRAINT [fk_rails_8b5da859f9]
GO
ALTER TABLE [dbo].[application_settings]  WITH CHECK ADD  CONSTRAINT [fk_964370041d] FOREIGN KEY([usage_stats_set_by_user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[application_settings] CHECK CONSTRAINT [fk_964370041d]
GO
ALTER TABLE [dbo].[application_settings]  WITH CHECK ADD  CONSTRAINT [fk_e8a145f3a7] FOREIGN KEY([instance_administrators_group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[application_settings] CHECK CONSTRAINT [fk_e8a145f3a7]
GO
ALTER TABLE [dbo].[application_settings]  WITH CHECK ADD  CONSTRAINT [fk_ec757bd087] FOREIGN KEY([file_template_project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[application_settings] CHECK CONSTRAINT [fk_ec757bd087]
GO
ALTER TABLE [dbo].[approval_merge_request_rule_sources]  WITH CHECK ADD  CONSTRAINT [fk_rails_64e8ed3c7e] FOREIGN KEY([approval_project_rule_id])
REFERENCES [dbo].[approval_project_rules] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_merge_request_rule_sources] CHECK CONSTRAINT [fk_rails_64e8ed3c7e]
GO
ALTER TABLE [dbo].[approval_merge_request_rule_sources]  WITH CHECK ADD  CONSTRAINT [fk_rails_e605a04f76] FOREIGN KEY([approval_merge_request_rule_id])
REFERENCES [dbo].[approval_merge_request_rules] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_merge_request_rule_sources] CHECK CONSTRAINT [fk_rails_e605a04f76]
GO
ALTER TABLE [dbo].[approval_merge_request_rules]  WITH CHECK ADD  CONSTRAINT [fk_rails_004ce82224] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_merge_request_rules] CHECK CONSTRAINT [fk_rails_004ce82224]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_approved_approvers]  WITH CHECK ADD  CONSTRAINT [fk_rails_6577725edb] FOREIGN KEY([approval_merge_request_rule_id])
REFERENCES [dbo].[approval_merge_request_rules] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_merge_request_rules_approved_approvers] CHECK CONSTRAINT [fk_rails_6577725edb]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_approved_approvers]  WITH CHECK ADD  CONSTRAINT [fk_rails_8dc94cff4d] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_merge_request_rules_approved_approvers] CHECK CONSTRAINT [fk_rails_8dc94cff4d]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_groups]  WITH CHECK ADD  CONSTRAINT [fk_rails_2020a7124a] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_merge_request_rules_groups] CHECK CONSTRAINT [fk_rails_2020a7124a]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_groups]  WITH CHECK ADD  CONSTRAINT [fk_rails_5b2ecf6139] FOREIGN KEY([approval_merge_request_rule_id])
REFERENCES [dbo].[approval_merge_request_rules] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_merge_request_rules_groups] CHECK CONSTRAINT [fk_rails_5b2ecf6139]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_users]  WITH CHECK ADD  CONSTRAINT [fk_rails_80e6801803] FOREIGN KEY([approval_merge_request_rule_id])
REFERENCES [dbo].[approval_merge_request_rules] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_merge_request_rules_users] CHECK CONSTRAINT [fk_rails_80e6801803]
GO
ALTER TABLE [dbo].[approval_merge_request_rules_users]  WITH CHECK ADD  CONSTRAINT [fk_rails_bc8972fa55] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_merge_request_rules_users] CHECK CONSTRAINT [fk_rails_bc8972fa55]
GO
ALTER TABLE [dbo].[approval_project_rules]  WITH CHECK ADD  CONSTRAINT [fk_rails_5fb4dd100b] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_project_rules] CHECK CONSTRAINT [fk_rails_5fb4dd100b]
GO
ALTER TABLE [dbo].[approval_project_rules_groups]  WITH CHECK ADD  CONSTRAINT [fk_rails_396841e79e] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_project_rules_groups] CHECK CONSTRAINT [fk_rails_396841e79e]
GO
ALTER TABLE [dbo].[approval_project_rules_groups]  WITH CHECK ADD  CONSTRAINT [fk_rails_9071e863d1] FOREIGN KEY([approval_project_rule_id])
REFERENCES [dbo].[approval_project_rules] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_project_rules_groups] CHECK CONSTRAINT [fk_rails_9071e863d1]
GO
ALTER TABLE [dbo].[approval_project_rules_protected_branches]  WITH CHECK ADD  CONSTRAINT [fk_rails_65203aa786] FOREIGN KEY([approval_project_rule_id])
REFERENCES [dbo].[approval_project_rules] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_project_rules_protected_branches] CHECK CONSTRAINT [fk_rails_65203aa786]
GO
ALTER TABLE [dbo].[approval_project_rules_users]  WITH CHECK ADD  CONSTRAINT [fk_rails_b9e9394efb] FOREIGN KEY([approval_project_rule_id])
REFERENCES [dbo].[approval_project_rules] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_project_rules_users] CHECK CONSTRAINT [fk_rails_b9e9394efb]
GO
ALTER TABLE [dbo].[approval_project_rules_users]  WITH CHECK ADD  CONSTRAINT [fk_rails_f365da8250] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approval_project_rules_users] CHECK CONSTRAINT [fk_rails_f365da8250]
GO
ALTER TABLE [dbo].[approvals]  WITH CHECK ADD  CONSTRAINT [fk_310d714958] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approvals] CHECK CONSTRAINT [fk_310d714958]
GO
ALTER TABLE [dbo].[approver_groups]  WITH CHECK ADD  CONSTRAINT [fk_rails_1cdcbd7723] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[approver_groups] CHECK CONSTRAINT [fk_rails_1cdcbd7723]
GO
ALTER TABLE [dbo].[aws_roles]  WITH CHECK ADD  CONSTRAINT [fk_rails_4ed56f4720] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[aws_roles] CHECK CONSTRAINT [fk_rails_4ed56f4720]
GO
ALTER TABLE [dbo].[badges]  WITH CHECK ADD  CONSTRAINT [fk_rails_5a7c055bdc] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[badges] CHECK CONSTRAINT [fk_rails_5a7c055bdc]
GO
ALTER TABLE [dbo].[badges]  WITH CHECK ADD  CONSTRAINT [fk_rails_9df4a56538] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[badges] CHECK CONSTRAINT [fk_rails_9df4a56538]
GO
ALTER TABLE [dbo].[board_assignees]  WITH CHECK ADD  CONSTRAINT [fk_rails_1c0ff59e82] FOREIGN KEY([assignee_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[board_assignees] CHECK CONSTRAINT [fk_rails_1c0ff59e82]
GO
ALTER TABLE [dbo].[board_assignees]  WITH CHECK ADD  CONSTRAINT [fk_rails_3f6f926bd5] FOREIGN KEY([board_id])
REFERENCES [dbo].[boards] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[board_assignees] CHECK CONSTRAINT [fk_rails_3f6f926bd5]
GO
ALTER TABLE [dbo].[board_group_recent_visits]  WITH CHECK ADD  CONSTRAINT [fk_rails_64bfc19bc5] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[board_group_recent_visits] CHECK CONSTRAINT [fk_rails_64bfc19bc5]
GO
ALTER TABLE [dbo].[board_group_recent_visits]  WITH CHECK ADD  CONSTRAINT [fk_rails_ca04c38720] FOREIGN KEY([board_id])
REFERENCES [dbo].[boards] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[board_group_recent_visits] CHECK CONSTRAINT [fk_rails_ca04c38720]
GO
ALTER TABLE [dbo].[board_group_recent_visits]  WITH CHECK ADD  CONSTRAINT [fk_rails_f410736518] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[board_group_recent_visits] CHECK CONSTRAINT [fk_rails_f410736518]
GO
ALTER TABLE [dbo].[board_labels]  WITH CHECK ADD  CONSTRAINT [fk_rails_362b0600a3] FOREIGN KEY([label_id])
REFERENCES [dbo].[labels] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[board_labels] CHECK CONSTRAINT [fk_rails_362b0600a3]
GO
ALTER TABLE [dbo].[board_labels]  WITH CHECK ADD  CONSTRAINT [fk_rails_9374a16edd] FOREIGN KEY([board_id])
REFERENCES [dbo].[boards] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[board_labels] CHECK CONSTRAINT [fk_rails_9374a16edd]
GO
ALTER TABLE [dbo].[board_project_recent_visits]  WITH CHECK ADD  CONSTRAINT [fk_rails_98f8843922] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[board_project_recent_visits] CHECK CONSTRAINT [fk_rails_98f8843922]
GO
ALTER TABLE [dbo].[board_project_recent_visits]  WITH CHECK ADD  CONSTRAINT [fk_rails_b315dd0c80] FOREIGN KEY([board_id])
REFERENCES [dbo].[boards] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[board_project_recent_visits] CHECK CONSTRAINT [fk_rails_b315dd0c80]
GO
ALTER TABLE [dbo].[board_project_recent_visits]  WITH CHECK ADD  CONSTRAINT [fk_rails_fb6fc419cb] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[board_project_recent_visits] CHECK CONSTRAINT [fk_rails_fb6fc419cb]
GO
ALTER TABLE [dbo].[chat_teams]  WITH CHECK ADD  CONSTRAINT [fk_rails_3b543909cb] FOREIGN KEY([namespace_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[chat_teams] CHECK CONSTRAINT [fk_rails_3b543909cb]
GO
ALTER TABLE [dbo].[ci_build_needs]  WITH CHECK ADD  CONSTRAINT [fk_rails_3cf221d4ed] FOREIGN KEY([build_id])
REFERENCES [dbo].[ci_builds] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_build_needs] CHECK CONSTRAINT [fk_rails_3cf221d4ed]
GO
ALTER TABLE [dbo].[ci_build_trace_chunks]  WITH CHECK ADD  CONSTRAINT [fk_rails_1013b761f2] FOREIGN KEY([build_id])
REFERENCES [dbo].[ci_builds] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_build_trace_chunks] CHECK CONSTRAINT [fk_rails_1013b761f2]
GO
ALTER TABLE [dbo].[ci_build_trace_section_names]  WITH CHECK ADD  CONSTRAINT [fk_rails_f8cd72cd26] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_build_trace_section_names] CHECK CONSTRAINT [fk_rails_f8cd72cd26]
GO
ALTER TABLE [dbo].[ci_build_trace_sections]  WITH CHECK ADD  CONSTRAINT [fk_264e112c66] FOREIGN KEY([section_name_id])
REFERENCES [dbo].[ci_build_trace_section_names] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_build_trace_sections] CHECK CONSTRAINT [fk_264e112c66]
GO
ALTER TABLE [dbo].[ci_build_trace_sections]  WITH CHECK ADD  CONSTRAINT [fk_4ebe41f502] FOREIGN KEY([build_id])
REFERENCES [dbo].[ci_builds] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_build_trace_sections] CHECK CONSTRAINT [fk_4ebe41f502]
GO
ALTER TABLE [dbo].[ci_builds]  WITH CHECK ADD  CONSTRAINT [fk_87f4cefcda] FOREIGN KEY([upstream_pipeline_id])
REFERENCES [dbo].[ci_pipelines] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_builds] CHECK CONSTRAINT [fk_87f4cefcda]
GO
ALTER TABLE [dbo].[ci_builds_metadata]  WITH CHECK ADD  CONSTRAINT [fk_rails_e20479742e] FOREIGN KEY([build_id])
REFERENCES [dbo].[ci_builds] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_builds_metadata] CHECK CONSTRAINT [fk_rails_e20479742e]
GO
ALTER TABLE [dbo].[ci_builds_metadata]  WITH CHECK ADD  CONSTRAINT [fk_rails_ffcf702a02] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_builds_metadata] CHECK CONSTRAINT [fk_rails_ffcf702a02]
GO
ALTER TABLE [dbo].[ci_builds_runner_session]  WITH CHECK ADD  CONSTRAINT [fk_rails_70707857d3] FOREIGN KEY([build_id])
REFERENCES [dbo].[ci_builds] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_builds_runner_session] CHECK CONSTRAINT [fk_rails_70707857d3]
GO
ALTER TABLE [dbo].[ci_group_variables]  WITH CHECK ADD  CONSTRAINT [fk_33ae4d58d8] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_group_variables] CHECK CONSTRAINT [fk_33ae4d58d8]
GO
ALTER TABLE [dbo].[ci_job_artifacts]  WITH CHECK ADD  CONSTRAINT [fk_rails_9862d392f9] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_job_artifacts] CHECK CONSTRAINT [fk_rails_9862d392f9]
GO
ALTER TABLE [dbo].[ci_job_artifacts]  WITH CHECK ADD  CONSTRAINT [fk_rails_c5137cb2c1] FOREIGN KEY([job_id])
REFERENCES [dbo].[ci_builds] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_job_artifacts] CHECK CONSTRAINT [fk_rails_c5137cb2c1]
GO
ALTER TABLE [dbo].[ci_pipeline_chat_data]  WITH CHECK ADD  CONSTRAINT [fk_rails_64ebfab6b3] FOREIGN KEY([pipeline_id])
REFERENCES [dbo].[ci_pipelines] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_pipeline_chat_data] CHECK CONSTRAINT [fk_rails_64ebfab6b3]
GO
ALTER TABLE [dbo].[ci_pipeline_chat_data]  WITH CHECK ADD  CONSTRAINT [fk_rails_f300456b63] FOREIGN KEY([chat_name_id])
REFERENCES [dbo].[chat_names] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_pipeline_chat_data] CHECK CONSTRAINT [fk_rails_f300456b63]
GO
ALTER TABLE [dbo].[ci_pipeline_schedule_variables]  WITH CHECK ADD  CONSTRAINT [fk_41c35fda51] FOREIGN KEY([pipeline_schedule_id])
REFERENCES [dbo].[ci_pipeline_schedules] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_pipeline_schedule_variables] CHECK CONSTRAINT [fk_41c35fda51]
GO
ALTER TABLE [dbo].[ci_pipeline_schedules]  WITH CHECK ADD  CONSTRAINT [fk_8ead60fcc4] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_pipeline_schedules] CHECK CONSTRAINT [fk_8ead60fcc4]
GO
ALTER TABLE [dbo].[ci_pipeline_schedules]  WITH CHECK ADD  CONSTRAINT [fk_9ea99f58d2] FOREIGN KEY([owner_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ci_pipeline_schedules] CHECK CONSTRAINT [fk_9ea99f58d2]
GO
ALTER TABLE [dbo].[ci_pipeline_variables]  WITH CHECK ADD  CONSTRAINT [fk_f29c5f4380] FOREIGN KEY([pipeline_id])
REFERENCES [dbo].[ci_pipelines] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_pipeline_variables] CHECK CONSTRAINT [fk_f29c5f4380]
GO
ALTER TABLE [dbo].[ci_refs]  WITH CHECK ADD  CONSTRAINT [fk_rails_1da48d19ce] FOREIGN KEY([last_updated_by_pipeline_id])
REFERENCES [dbo].[ci_pipelines] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[ci_refs] CHECK CONSTRAINT [fk_rails_1da48d19ce]
GO
ALTER TABLE [dbo].[ci_refs]  WITH CHECK ADD  CONSTRAINT [fk_rails_4249db8cc3] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_refs] CHECK CONSTRAINT [fk_rails_4249db8cc3]
GO
ALTER TABLE [dbo].[ci_resources]  WITH CHECK ADD  CONSTRAINT [fk_rails_430336af2d] FOREIGN KEY([resource_group_id])
REFERENCES [dbo].[ci_resource_groups] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_resources] CHECK CONSTRAINT [fk_rails_430336af2d]
GO
ALTER TABLE [dbo].[ci_runner_namespaces]  WITH CHECK ADD  CONSTRAINT [fk_rails_8767676b7a] FOREIGN KEY([runner_id])
REFERENCES [dbo].[ci_runners] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_runner_namespaces] CHECK CONSTRAINT [fk_rails_8767676b7a]
GO
ALTER TABLE [dbo].[ci_runner_namespaces]  WITH CHECK ADD  CONSTRAINT [fk_rails_f9d9ed3308] FOREIGN KEY([namespace_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_runner_namespaces] CHECK CONSTRAINT [fk_rails_f9d9ed3308]
GO
ALTER TABLE [dbo].[ci_runner_projects]  WITH CHECK ADD  CONSTRAINT [fk_4478a6f1e4] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_runner_projects] CHECK CONSTRAINT [fk_4478a6f1e4]
GO
ALTER TABLE [dbo].[ci_sources_pipelines]  WITH CHECK ADD  CONSTRAINT [fk_1e53c97c0a] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_sources_pipelines] CHECK CONSTRAINT [fk_1e53c97c0a]
GO
ALTER TABLE [dbo].[ci_sources_pipelines]  WITH CHECK ADD  CONSTRAINT [fk_be5624bf37] FOREIGN KEY([source_job_id])
REFERENCES [dbo].[ci_builds] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_sources_pipelines] CHECK CONSTRAINT [fk_be5624bf37]
GO
ALTER TABLE [dbo].[ci_stages]  WITH CHECK ADD  CONSTRAINT [fk_2360681d1d] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_stages] CHECK CONSTRAINT [fk_2360681d1d]
GO
ALTER TABLE [dbo].[ci_stages]  WITH CHECK ADD  CONSTRAINT [fk_fb57e6cc56] FOREIGN KEY([pipeline_id])
REFERENCES [dbo].[ci_pipelines] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_stages] CHECK CONSTRAINT [fk_fb57e6cc56]
GO
ALTER TABLE [dbo].[ci_trigger_requests]  WITH CHECK ADD  CONSTRAINT [fk_b8ec8b7245] FOREIGN KEY([trigger_id])
REFERENCES [dbo].[ci_triggers] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_trigger_requests] CHECK CONSTRAINT [fk_b8ec8b7245]
GO
ALTER TABLE [dbo].[ci_triggers]  WITH CHECK ADD  CONSTRAINT [fk_e3e63f966e] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_triggers] CHECK CONSTRAINT [fk_e3e63f966e]
GO
ALTER TABLE [dbo].[ci_triggers]  WITH CHECK ADD  CONSTRAINT [fk_e8e10d1964] FOREIGN KEY([owner_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_triggers] CHECK CONSTRAINT [fk_e8e10d1964]
GO
ALTER TABLE [dbo].[ci_variables]  WITH CHECK ADD  CONSTRAINT [fk_ada5eb64b3] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ci_variables] CHECK CONSTRAINT [fk_ada5eb64b3]
GO
ALTER TABLE [dbo].[cluster_groups]  WITH CHECK ADD  CONSTRAINT [fk_rails_3d28377556] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cluster_groups] CHECK CONSTRAINT [fk_rails_3d28377556]
GO
ALTER TABLE [dbo].[cluster_groups]  WITH CHECK ADD  CONSTRAINT [fk_rails_fdb8648a96] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cluster_groups] CHECK CONSTRAINT [fk_rails_fdb8648a96]
GO
ALTER TABLE [dbo].[cluster_platforms_kubernetes]  WITH CHECK ADD  CONSTRAINT [fk_rails_e1e2cf841a] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cluster_platforms_kubernetes] CHECK CONSTRAINT [fk_rails_e1e2cf841a]
GO
ALTER TABLE [dbo].[cluster_projects]  WITH CHECK ADD  CONSTRAINT [fk_rails_8b8c5caf07] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cluster_projects] CHECK CONSTRAINT [fk_rails_8b8c5caf07]
GO
ALTER TABLE [dbo].[cluster_projects]  WITH CHECK ADD  CONSTRAINT [fk_rails_a5a958bca1] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cluster_projects] CHECK CONSTRAINT [fk_rails_a5a958bca1]
GO
ALTER TABLE [dbo].[cluster_providers_aws]  WITH CHECK ADD  CONSTRAINT [fk_rails_ed1fdfaeb2] FOREIGN KEY([created_by_user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[cluster_providers_aws] CHECK CONSTRAINT [fk_rails_ed1fdfaeb2]
GO
ALTER TABLE [dbo].[cluster_providers_gcp]  WITH CHECK ADD  CONSTRAINT [fk_rails_5c2c3bc814] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[cluster_providers_gcp] CHECK CONSTRAINT [fk_rails_5c2c3bc814]
GO
ALTER TABLE [dbo].[clusters]  WITH CHECK ADD  CONSTRAINT [fk_f05c5e5a42] FOREIGN KEY([management_project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[clusters] CHECK CONSTRAINT [fk_f05c5e5a42]
GO
ALTER TABLE [dbo].[clusters]  WITH CHECK ADD  CONSTRAINT [fk_rails_ac3a663d79] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[clusters] CHECK CONSTRAINT [fk_rails_ac3a663d79]
GO
ALTER TABLE [dbo].[clusters_applications_cert_managers]  WITH CHECK ADD  CONSTRAINT [fk_rails_9e4f2cb4b2] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[clusters_applications_cert_managers] CHECK CONSTRAINT [fk_rails_9e4f2cb4b2]
GO
ALTER TABLE [dbo].[clusters_applications_helm]  WITH CHECK ADD  CONSTRAINT [fk_rails_3e2b1c06bc] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[clusters_applications_helm] CHECK CONSTRAINT [fk_rails_3e2b1c06bc]
GO
ALTER TABLE [dbo].[clusters_applications_ingress]  WITH CHECK ADD  CONSTRAINT [fk_rails_753a7b41c1] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[clusters_applications_ingress] CHECK CONSTRAINT [fk_rails_753a7b41c1]
GO
ALTER TABLE [dbo].[clusters_applications_jupyter]  WITH CHECK ADD  CONSTRAINT [fk_rails_17df21c98c] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[clusters_applications_jupyter] CHECK CONSTRAINT [fk_rails_17df21c98c]
GO
ALTER TABLE [dbo].[clusters_applications_jupyter]  WITH CHECK ADD  CONSTRAINT [fk_rails_331f0aff78] FOREIGN KEY([oauth_application_id])
REFERENCES [dbo].[oauth_applications] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[clusters_applications_jupyter] CHECK CONSTRAINT [fk_rails_331f0aff78]
GO
ALTER TABLE [dbo].[clusters_applications_knative]  WITH CHECK ADD  CONSTRAINT [fk_rails_54fc91e0a0] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[clusters_applications_knative] CHECK CONSTRAINT [fk_rails_54fc91e0a0]
GO
ALTER TABLE [dbo].[clusters_applications_prometheus]  WITH CHECK ADD  CONSTRAINT [fk_557e773639] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[clusters_applications_prometheus] CHECK CONSTRAINT [fk_557e773639]
GO
ALTER TABLE [dbo].[clusters_applications_runners]  WITH CHECK ADD  CONSTRAINT [fk_02de2ded36] FOREIGN KEY([runner_id])
REFERENCES [dbo].[ci_runners] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[clusters_applications_runners] CHECK CONSTRAINT [fk_02de2ded36]
GO
ALTER TABLE [dbo].[clusters_applications_runners]  WITH CHECK ADD  CONSTRAINT [fk_rails_22388594e9] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[clusters_applications_runners] CHECK CONSTRAINT [fk_rails_22388594e9]
GO
ALTER TABLE [dbo].[clusters_kubernetes_namespaces]  WITH CHECK ADD  CONSTRAINT [fk_rails_40cc7ccbc3] FOREIGN KEY([cluster_project_id])
REFERENCES [dbo].[cluster_projects] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[clusters_kubernetes_namespaces] CHECK CONSTRAINT [fk_rails_40cc7ccbc3]
GO
ALTER TABLE [dbo].[commit_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_a6760813e0] FOREIGN KEY([note_id])
REFERENCES [dbo].[notes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[commit_user_mentions] CHECK CONSTRAINT [fk_rails_a6760813e0]
GO
ALTER TABLE [dbo].[container_repositories]  WITH CHECK ADD  CONSTRAINT [fk_rails_32f7bf5aad] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[container_repositories] CHECK CONSTRAINT [fk_rails_32f7bf5aad]
GO
ALTER TABLE [dbo].[dependency_proxy_blobs]  WITH CHECK ADD  CONSTRAINT [fk_rails_db58bbc5d7] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[dependency_proxy_blobs] CHECK CONSTRAINT [fk_rails_db58bbc5d7]
GO
ALTER TABLE [dbo].[dependency_proxy_group_settings]  WITH CHECK ADD  CONSTRAINT [fk_rails_616ddd680a] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[dependency_proxy_group_settings] CHECK CONSTRAINT [fk_rails_616ddd680a]
GO
ALTER TABLE [dbo].[deploy_keys_projects]  WITH CHECK ADD  CONSTRAINT [fk_58a901ca7e] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[deploy_keys_projects] CHECK CONSTRAINT [fk_58a901ca7e]
GO
ALTER TABLE [dbo].[deployment_clusters]  WITH CHECK ADD  CONSTRAINT [fk_rails_4e6243e120] FOREIGN KEY([cluster_id])
REFERENCES [dbo].[clusters] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[deployment_clusters] CHECK CONSTRAINT [fk_rails_4e6243e120]
GO
ALTER TABLE [dbo].[deployment_clusters]  WITH CHECK ADD  CONSTRAINT [fk_rails_6359a164df] FOREIGN KEY([deployment_id])
REFERENCES [dbo].[deployments] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[deployment_clusters] CHECK CONSTRAINT [fk_rails_6359a164df]
GO
ALTER TABLE [dbo].[deployment_merge_requests]  WITH CHECK ADD  CONSTRAINT [fk_a064ff4453] FOREIGN KEY([environment_id])
REFERENCES [dbo].[environments] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[deployment_merge_requests] CHECK CONSTRAINT [fk_a064ff4453]
GO
ALTER TABLE [dbo].[deployment_merge_requests]  WITH CHECK ADD  CONSTRAINT [fk_rails_86a6d8bf12] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[deployment_merge_requests] CHECK CONSTRAINT [fk_rails_86a6d8bf12]
GO
ALTER TABLE [dbo].[deployment_merge_requests]  WITH CHECK ADD  CONSTRAINT [fk_rails_dcbce9f4df] FOREIGN KEY([deployment_id])
REFERENCES [dbo].[deployments] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[deployment_merge_requests] CHECK CONSTRAINT [fk_rails_dcbce9f4df]
GO
ALTER TABLE [dbo].[deployments]  WITH CHECK ADD  CONSTRAINT [fk_b9a3851b82] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[deployments] CHECK CONSTRAINT [fk_b9a3851b82]
GO
ALTER TABLE [dbo].[description_versions]  WITH CHECK ADD  CONSTRAINT [fk_rails_12b144011c] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[description_versions] CHECK CONSTRAINT [fk_rails_12b144011c]
GO
ALTER TABLE [dbo].[description_versions]  WITH CHECK ADD  CONSTRAINT [fk_rails_3ff658220b] FOREIGN KEY([issue_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[description_versions] CHECK CONSTRAINT [fk_rails_3ff658220b]
GO
ALTER TABLE [dbo].[description_versions]  WITH CHECK ADD  CONSTRAINT [fk_rails_e8f4caf9c7] FOREIGN KEY([epic_id])
REFERENCES [dbo].[epics] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[description_versions] CHECK CONSTRAINT [fk_rails_e8f4caf9c7]
GO
ALTER TABLE [dbo].[design_management_designs]  WITH CHECK ADD  CONSTRAINT [fk_rails_4bb1073360] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[design_management_designs] CHECK CONSTRAINT [fk_rails_4bb1073360]
GO
ALTER TABLE [dbo].[design_management_designs]  WITH CHECK ADD  CONSTRAINT [fk_rails_bfe283ec3c] FOREIGN KEY([issue_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[design_management_designs] CHECK CONSTRAINT [fk_rails_bfe283ec3c]
GO
ALTER TABLE [dbo].[design_management_designs_versions]  WITH CHECK ADD  CONSTRAINT [fk_03c671965c] FOREIGN KEY([design_id])
REFERENCES [dbo].[design_management_designs] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[design_management_designs_versions] CHECK CONSTRAINT [fk_03c671965c]
GO
ALTER TABLE [dbo].[design_management_designs_versions]  WITH CHECK ADD  CONSTRAINT [fk_f4d25ba00c] FOREIGN KEY([version_id])
REFERENCES [dbo].[design_management_versions] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[design_management_designs_versions] CHECK CONSTRAINT [fk_f4d25ba00c]
GO
ALTER TABLE [dbo].[design_management_versions]  WITH CHECK ADD  CONSTRAINT [fk_c1440b4896] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[design_management_versions] CHECK CONSTRAINT [fk_c1440b4896]
GO
ALTER TABLE [dbo].[design_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_8de8c6d632] FOREIGN KEY([note_id])
REFERENCES [dbo].[notes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[design_user_mentions] CHECK CONSTRAINT [fk_rails_8de8c6d632]
GO
ALTER TABLE [dbo].[draft_notes]  WITH CHECK ADD  CONSTRAINT [fk_rails_2a8dac9901] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[draft_notes] CHECK CONSTRAINT [fk_rails_2a8dac9901]
GO
ALTER TABLE [dbo].[draft_notes]  WITH CHECK ADD  CONSTRAINT [fk_rails_e753681674] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[draft_notes] CHECK CONSTRAINT [fk_rails_e753681674]
GO
ALTER TABLE [dbo].[elasticsearch_indexed_namespaces]  WITH CHECK ADD  CONSTRAINT [fk_rails_bdcf044f37] FOREIGN KEY([namespace_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[elasticsearch_indexed_namespaces] CHECK CONSTRAINT [fk_rails_bdcf044f37]
GO
ALTER TABLE [dbo].[elasticsearch_indexed_projects]  WITH CHECK ADD  CONSTRAINT [fk_rails_bd13bbdc3d] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[elasticsearch_indexed_projects] CHECK CONSTRAINT [fk_rails_bd13bbdc3d]
GO
ALTER TABLE [dbo].[epic_issues]  WITH CHECK ADD  CONSTRAINT [fk_rails_4209981af6] FOREIGN KEY([issue_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[epic_issues] CHECK CONSTRAINT [fk_rails_4209981af6]
GO
ALTER TABLE [dbo].[epic_issues]  WITH CHECK ADD  CONSTRAINT [fk_rails_5d942936b4] FOREIGN KEY([epic_id])
REFERENCES [dbo].[epics] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[epic_issues] CHECK CONSTRAINT [fk_rails_5d942936b4]
GO
ALTER TABLE [dbo].[epic_metrics]  WITH CHECK ADD  CONSTRAINT [fk_rails_d071904753] FOREIGN KEY([epic_id])
REFERENCES [dbo].[epics] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[epic_metrics] CHECK CONSTRAINT [fk_rails_d071904753]
GO
ALTER TABLE [dbo].[epic_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_1c65976a49] FOREIGN KEY([note_id])
REFERENCES [dbo].[notes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[epic_user_mentions] CHECK CONSTRAINT [fk_rails_1c65976a49]
GO
ALTER TABLE [dbo].[epic_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_3eaf4d88cc] FOREIGN KEY([epic_id])
REFERENCES [dbo].[epics] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[epic_user_mentions] CHECK CONSTRAINT [fk_rails_3eaf4d88cc]
GO
ALTER TABLE [dbo].[epics]  WITH CHECK ADD  CONSTRAINT [fk_1fbed67632] FOREIGN KEY([start_date_sourcing_milestone_id])
REFERENCES [dbo].[milestones] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[epics] CHECK CONSTRAINT [fk_1fbed67632]
GO
ALTER TABLE [dbo].[epics]  WITH CHECK ADD  CONSTRAINT [fk_3654b61b03] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[epics] CHECK CONSTRAINT [fk_3654b61b03]
GO
ALTER TABLE [dbo].[epics]  WITH CHECK ADD  CONSTRAINT [fk_f081aa4489] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[epics] CHECK CONSTRAINT [fk_f081aa4489]
GO
ALTER TABLE [dbo].[events]  WITH CHECK ADD  CONSTRAINT [fk_edfd187b6f] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[events] CHECK CONSTRAINT [fk_edfd187b6f]
GO
ALTER TABLE [dbo].[events]  WITH CHECK ADD  CONSTRAINT [fk_rails_0434b48643] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[events] CHECK CONSTRAINT [fk_rails_0434b48643]
GO
ALTER TABLE [dbo].[fork_network_members]  WITH CHECK ADD  CONSTRAINT [fk_b01280dae4] FOREIGN KEY([forked_from_project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[fork_network_members] CHECK CONSTRAINT [fk_b01280dae4]
GO
ALTER TABLE [dbo].[fork_network_members]  WITH CHECK ADD  CONSTRAINT [fk_rails_a40860a1ca] FOREIGN KEY([fork_network_id])
REFERENCES [dbo].[fork_networks] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[fork_network_members] CHECK CONSTRAINT [fk_rails_a40860a1ca]
GO
ALTER TABLE [dbo].[fork_networks]  WITH CHECK ADD  CONSTRAINT [fk_e7b436b2b5] FOREIGN KEY([root_project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[fork_networks] CHECK CONSTRAINT [fk_e7b436b2b5]
GO
ALTER TABLE [dbo].[geo_container_repository_updated_events]  WITH CHECK ADD  CONSTRAINT [fk_212c89c706] FOREIGN KEY([container_repository_id])
REFERENCES [dbo].[container_repositories] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_container_repository_updated_events] CHECK CONSTRAINT [fk_212c89c706]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_176d3fbb5d] FOREIGN KEY([job_artifact_deleted_event_id])
REFERENCES [dbo].[geo_job_artifact_deleted_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_176d3fbb5d]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_27548c6db3] FOREIGN KEY([hashed_storage_migrated_event_id])
REFERENCES [dbo].[geo_hashed_storage_migrated_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_27548c6db3]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_42c3b54bed] FOREIGN KEY([cache_invalidation_event_id])
REFERENCES [dbo].[geo_cache_invalidation_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_42c3b54bed]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_4a99ebfd60] FOREIGN KEY([repositories_changed_event_id])
REFERENCES [dbo].[geo_repositories_changed_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_4a99ebfd60]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_6ada82d42a] FOREIGN KEY([container_repository_updated_event_id])
REFERENCES [dbo].[geo_container_repository_updated_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_6ada82d42a]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_78a6492f68] FOREIGN KEY([repository_updated_event_id])
REFERENCES [dbo].[geo_repository_updated_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_78a6492f68]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_86c84214ec] FOREIGN KEY([repository_renamed_event_id])
REFERENCES [dbo].[geo_repository_renamed_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_86c84214ec]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_9b9afb1916] FOREIGN KEY([repository_created_event_id])
REFERENCES [dbo].[geo_repository_created_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_9b9afb1916]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_c1f241c70d] FOREIGN KEY([upload_deleted_event_id])
REFERENCES [dbo].[geo_upload_deleted_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_c1f241c70d]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_c4b1c1f66e] FOREIGN KEY([repository_deleted_event_id])
REFERENCES [dbo].[geo_repository_deleted_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_c4b1c1f66e]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_cff7185ad2] FOREIGN KEY([reset_checksum_event_id])
REFERENCES [dbo].[geo_reset_checksum_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_cff7185ad2]
GO
ALTER TABLE [dbo].[geo_event_log]  WITH CHECK ADD  CONSTRAINT [fk_d5af95fcd9] FOREIGN KEY([lfs_object_deleted_event_id])
REFERENCES [dbo].[geo_lfs_object_deleted_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_event_log] CHECK CONSTRAINT [fk_d5af95fcd9]
GO
ALTER TABLE [dbo].[geo_hashed_storage_attachments_events]  WITH CHECK ADD  CONSTRAINT [fk_rails_d496b088e9] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_hashed_storage_attachments_events] CHECK CONSTRAINT [fk_rails_d496b088e9]
GO
ALTER TABLE [dbo].[geo_hashed_storage_migrated_events]  WITH CHECK ADD  CONSTRAINT [fk_rails_687ed7d7c5] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_hashed_storage_migrated_events] CHECK CONSTRAINT [fk_rails_687ed7d7c5]
GO
ALTER TABLE [dbo].[geo_node_namespace_links]  WITH CHECK ADD  CONSTRAINT [fk_rails_41ff5fb854] FOREIGN KEY([namespace_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_node_namespace_links] CHECK CONSTRAINT [fk_rails_41ff5fb854]
GO
ALTER TABLE [dbo].[geo_node_namespace_links]  WITH CHECK ADD  CONSTRAINT [fk_rails_546bf08d3e] FOREIGN KEY([geo_node_id])
REFERENCES [dbo].[geo_nodes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_node_namespace_links] CHECK CONSTRAINT [fk_rails_546bf08d3e]
GO
ALTER TABLE [dbo].[geo_node_statuses]  WITH CHECK ADD  CONSTRAINT [fk_rails_0ecc699c2a] FOREIGN KEY([geo_node_id])
REFERENCES [dbo].[geo_nodes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_node_statuses] CHECK CONSTRAINT [fk_rails_0ecc699c2a]
GO
ALTER TABLE [dbo].[geo_repositories_changed_events]  WITH CHECK ADD  CONSTRAINT [fk_rails_75ec0fefcc] FOREIGN KEY([geo_node_id])
REFERENCES [dbo].[geo_nodes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[geo_repositories_changed_events] CHECK CONSTRAINT [fk_rails_75ec0fefcc]
GO
ALTER TABLE [dbo].[gitlab_subscriptions]  WITH CHECK ADD  CONSTRAINT [fk_bd0c4019c3] FOREIGN KEY([hosted_plan_id])
REFERENCES [dbo].[plans] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[gitlab_subscriptions] CHECK CONSTRAINT [fk_bd0c4019c3]
GO
ALTER TABLE [dbo].[gitlab_subscriptions]  WITH CHECK ADD  CONSTRAINT [fk_e2595d00a1] FOREIGN KEY([namespace_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[gitlab_subscriptions] CHECK CONSTRAINT [fk_e2595d00a1]
GO
ALTER TABLE [dbo].[gpg_key_subkeys]  WITH CHECK ADD  CONSTRAINT [fk_rails_8b2c90b046] FOREIGN KEY([gpg_key_id])
REFERENCES [dbo].[gpg_keys] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[gpg_key_subkeys] CHECK CONSTRAINT [fk_rails_8b2c90b046]
GO
ALTER TABLE [dbo].[gpg_keys]  WITH CHECK ADD  CONSTRAINT [fk_rails_9d1f5d8719] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[gpg_keys] CHECK CONSTRAINT [fk_rails_9d1f5d8719]
GO
ALTER TABLE [dbo].[gpg_signatures]  WITH CHECK ADD  CONSTRAINT [fk_rails_11ae8cb9a7] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[gpg_signatures] CHECK CONSTRAINT [fk_rails_11ae8cb9a7]
GO
ALTER TABLE [dbo].[gpg_signatures]  WITH CHECK ADD  CONSTRAINT [fk_rails_19d4f1c6f9] FOREIGN KEY([gpg_key_subkey_id])
REFERENCES [dbo].[gpg_key_subkeys] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[gpg_signatures] CHECK CONSTRAINT [fk_rails_19d4f1c6f9]
GO
ALTER TABLE [dbo].[group_custom_attributes]  WITH CHECK ADD  CONSTRAINT [fk_rails_246e0db83a] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[group_custom_attributes] CHECK CONSTRAINT [fk_rails_246e0db83a]
GO
ALTER TABLE [dbo].[identities]  WITH CHECK ADD  CONSTRAINT [fk_aade90f0fc] FOREIGN KEY([saml_provider_id])
REFERENCES [dbo].[saml_providers] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[identities] CHECK CONSTRAINT [fk_aade90f0fc]
GO
ALTER TABLE [dbo].[import_export_uploads]  WITH CHECK ADD  CONSTRAINT [fk_rails_f129140f9e] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[import_export_uploads] CHECK CONSTRAINT [fk_rails_f129140f9e]
GO
ALTER TABLE [dbo].[import_failures]  WITH CHECK ADD  CONSTRAINT [fk_24b824da43] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[import_failures] CHECK CONSTRAINT [fk_24b824da43]
GO
ALTER TABLE [dbo].[index_statuses]  WITH CHECK ADD  CONSTRAINT [fk_74b2492545] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[index_statuses] CHECK CONSTRAINT [fk_74b2492545]
GO
ALTER TABLE [dbo].[insights]  WITH CHECK ADD  CONSTRAINT [fk_rails_5c4391f60a] FOREIGN KEY([namespace_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[insights] CHECK CONSTRAINT [fk_rails_5c4391f60a]
GO
ALTER TABLE [dbo].[insights]  WITH CHECK ADD  CONSTRAINT [fk_rails_f36fda3932] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[insights] CHECK CONSTRAINT [fk_rails_f36fda3932]
GO
ALTER TABLE [dbo].[internal_ids]  WITH CHECK ADD  CONSTRAINT [fk_162941d509] FOREIGN KEY([namespace_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[internal_ids] CHECK CONSTRAINT [fk_162941d509]
GO
ALTER TABLE [dbo].[internal_ids]  WITH CHECK ADD  CONSTRAINT [fk_rails_f7d46b66c6] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[internal_ids] CHECK CONSTRAINT [fk_rails_f7d46b66c6]
GO
ALTER TABLE [dbo].[ip_restrictions]  WITH CHECK ADD  CONSTRAINT [fk_rails_04a93778d5] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ip_restrictions] CHECK CONSTRAINT [fk_rails_04a93778d5]
GO
ALTER TABLE [dbo].[issue_assignees]  WITH CHECK ADD  CONSTRAINT [fk_5e0c8d9154] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[issue_assignees] CHECK CONSTRAINT [fk_5e0c8d9154]
GO
ALTER TABLE [dbo].[issue_assignees]  WITH CHECK ADD  CONSTRAINT [fk_b7d881734a] FOREIGN KEY([issue_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[issue_assignees] CHECK CONSTRAINT [fk_b7d881734a]
GO
ALTER TABLE [dbo].[issue_links]  WITH CHECK ADD  CONSTRAINT [fk_c900194ff2] FOREIGN KEY([source_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[issue_links] CHECK CONSTRAINT [fk_c900194ff2]
GO
ALTER TABLE [dbo].[issue_metrics]  WITH CHECK ADD  CONSTRAINT [fk_rails_4bb543d85d] FOREIGN KEY([issue_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[issue_metrics] CHECK CONSTRAINT [fk_rails_4bb543d85d]
GO
ALTER TABLE [dbo].[issue_tracker_data]  WITH CHECK ADD  CONSTRAINT [fk_rails_ccc0840427] FOREIGN KEY([service_id])
REFERENCES [dbo].[services] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[issue_tracker_data] CHECK CONSTRAINT [fk_rails_ccc0840427]
GO
ALTER TABLE [dbo].[issue_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_3861d9fefa] FOREIGN KEY([note_id])
REFERENCES [dbo].[notes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[issue_user_mentions] CHECK CONSTRAINT [fk_rails_3861d9fefa]
GO
ALTER TABLE [dbo].[issue_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_57581fda73] FOREIGN KEY([issue_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[issue_user_mentions] CHECK CONSTRAINT [fk_rails_57581fda73]
GO
ALTER TABLE [dbo].[issues]  WITH CHECK ADD  CONSTRAINT [fk_05f1e72feb] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[issues] CHECK CONSTRAINT [fk_05f1e72feb]
GO
ALTER TABLE [dbo].[issues]  WITH CHECK ADD  CONSTRAINT [fk_96b1dd429c] FOREIGN KEY([milestone_id])
REFERENCES [dbo].[milestones] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[issues] CHECK CONSTRAINT [fk_96b1dd429c]
GO
ALTER TABLE [dbo].[issues_prometheus_alert_events]  WITH CHECK ADD  CONSTRAINT [fk_rails_b32edb790f] FOREIGN KEY([prometheus_alert_event_id])
REFERENCES [dbo].[prometheus_alert_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[issues_prometheus_alert_events] CHECK CONSTRAINT [fk_rails_b32edb790f]
GO
ALTER TABLE [dbo].[issues_self_managed_prometheus_alert_events]  WITH CHECK ADD  CONSTRAINT [fk_rails_f7db2d72eb] FOREIGN KEY([self_managed_prometheus_alert_event_id])
REFERENCES [dbo].[self_managed_prometheus_alert_events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[issues_self_managed_prometheus_alert_events] CHECK CONSTRAINT [fk_rails_f7db2d72eb]
GO
ALTER TABLE [dbo].[jira_connect_subscriptions]  WITH CHECK ADD  CONSTRAINT [fk_rails_a3c10bcf7d] FOREIGN KEY([namespace_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[jira_connect_subscriptions] CHECK CONSTRAINT [fk_rails_a3c10bcf7d]
GO
ALTER TABLE [dbo].[jira_connect_subscriptions]  WITH CHECK ADD  CONSTRAINT [fk_rails_f1d617343f] FOREIGN KEY([jira_connect_installation_id])
REFERENCES [dbo].[jira_connect_installations] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[jira_connect_subscriptions] CHECK CONSTRAINT [fk_rails_f1d617343f]
GO
ALTER TABLE [dbo].[jira_tracker_data]  WITH CHECK ADD  CONSTRAINT [fk_rails_a299066916] FOREIGN KEY([service_id])
REFERENCES [dbo].[services] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[jira_tracker_data] CHECK CONSTRAINT [fk_rails_a299066916]
GO
ALTER TABLE [dbo].[label_links]  WITH CHECK ADD  CONSTRAINT [fk_d97dd08678] FOREIGN KEY([label_id])
REFERENCES [dbo].[labels] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[label_links] CHECK CONSTRAINT [fk_d97dd08678]
GO
ALTER TABLE [dbo].[label_priorities]  WITH CHECK ADD  CONSTRAINT [fk_rails_e161058b0f] FOREIGN KEY([label_id])
REFERENCES [dbo].[labels] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[label_priorities] CHECK CONSTRAINT [fk_rails_e161058b0f]
GO
ALTER TABLE [dbo].[label_priorities]  WITH CHECK ADD  CONSTRAINT [fk_rails_ef916d14fa] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[label_priorities] CHECK CONSTRAINT [fk_rails_ef916d14fa]
GO
ALTER TABLE [dbo].[labels]  WITH CHECK ADD  CONSTRAINT [fk_rails_c1ac5161d8] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[labels] CHECK CONSTRAINT [fk_rails_c1ac5161d8]
GO
ALTER TABLE [dbo].[lfs_file_locks]  WITH CHECK ADD  CONSTRAINT [fk_rails_27a1d98fa8] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lfs_file_locks] CHECK CONSTRAINT [fk_rails_27a1d98fa8]
GO
ALTER TABLE [dbo].[lfs_file_locks]  WITH CHECK ADD  CONSTRAINT [fk_rails_43df7a0412] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lfs_file_locks] CHECK CONSTRAINT [fk_rails_43df7a0412]
GO
ALTER TABLE [dbo].[lists]  WITH CHECK ADD  CONSTRAINT [fk_0d3f677137] FOREIGN KEY([board_id])
REFERENCES [dbo].[boards] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lists] CHECK CONSTRAINT [fk_0d3f677137]
GO
ALTER TABLE [dbo].[lists]  WITH CHECK ADD  CONSTRAINT [fk_7a5553d60f] FOREIGN KEY([label_id])
REFERENCES [dbo].[labels] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lists] CHECK CONSTRAINT [fk_7a5553d60f]
GO
ALTER TABLE [dbo].[lists]  WITH CHECK ADD  CONSTRAINT [fk_d6cf4279f7] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lists] CHECK CONSTRAINT [fk_d6cf4279f7]
GO
ALTER TABLE [dbo].[lists]  WITH CHECK ADD  CONSTRAINT [fk_rails_baed5f39b7] FOREIGN KEY([milestone_id])
REFERENCES [dbo].[milestones] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[lists] CHECK CONSTRAINT [fk_rails_baed5f39b7]
GO
ALTER TABLE [dbo].[members]  WITH CHECK ADD  CONSTRAINT [fk_2e88fb7ce9] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[members] CHECK CONSTRAINT [fk_2e88fb7ce9]
GO
ALTER TABLE [dbo].[merge_request_assignees]  WITH CHECK ADD  CONSTRAINT [fk_rails_443443ce6f] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_request_assignees] CHECK CONSTRAINT [fk_rails_443443ce6f]
GO
ALTER TABLE [dbo].[merge_request_assignees]  WITH CHECK ADD  CONSTRAINT [fk_rails_579d375628] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_request_assignees] CHECK CONSTRAINT [fk_rails_579d375628]
GO
ALTER TABLE [dbo].[merge_request_blocks]  WITH CHECK ADD  CONSTRAINT [fk_rails_364d4bea8b] FOREIGN KEY([blocked_merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_request_blocks] CHECK CONSTRAINT [fk_rails_364d4bea8b]
GO
ALTER TABLE [dbo].[merge_request_context_commit_diff_files]  WITH CHECK ADD  CONSTRAINT [fk_rails_74a00a1787] FOREIGN KEY([merge_request_context_commit_id])
REFERENCES [dbo].[merge_request_context_commits] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_request_context_commit_diff_files] CHECK CONSTRAINT [fk_rails_74a00a1787]
GO
ALTER TABLE [dbo].[merge_request_diff_commits]  WITH CHECK ADD  CONSTRAINT [fk_rails_316aaceda3] FOREIGN KEY([merge_request_diff_id])
REFERENCES [dbo].[merge_request_diffs] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_request_diff_commits] CHECK CONSTRAINT [fk_rails_316aaceda3]
GO
ALTER TABLE [dbo].[merge_request_diff_files]  WITH CHECK ADD  CONSTRAINT [fk_rails_501aa0a391] FOREIGN KEY([merge_request_diff_id])
REFERENCES [dbo].[merge_request_diffs] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_request_diff_files] CHECK CONSTRAINT [fk_rails_501aa0a391]
GO
ALTER TABLE [dbo].[merge_request_diffs]  WITH CHECK ADD  CONSTRAINT [fk_8483f3258f] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_request_diffs] CHECK CONSTRAINT [fk_8483f3258f]
GO
ALTER TABLE [dbo].[merge_request_metrics]  WITH CHECK ADD  CONSTRAINT [fk_7f28d925f3] FOREIGN KEY([merged_by_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[merge_request_metrics] CHECK CONSTRAINT [fk_7f28d925f3]
GO
ALTER TABLE [dbo].[merge_request_metrics]  WITH CHECK ADD  CONSTRAINT [fk_rails_33ae169d48] FOREIGN KEY([pipeline_id])
REFERENCES [dbo].[ci_pipelines] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_request_metrics] CHECK CONSTRAINT [fk_rails_33ae169d48]
GO
ALTER TABLE [dbo].[merge_request_metrics]  WITH CHECK ADD  CONSTRAINT [fk_rails_e6d7c24d1b] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_request_metrics] CHECK CONSTRAINT [fk_rails_e6d7c24d1b]
GO
ALTER TABLE [dbo].[merge_request_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_aa1b2961b1] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_request_user_mentions] CHECK CONSTRAINT [fk_rails_aa1b2961b1]
GO
ALTER TABLE [dbo].[merge_request_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_c440b9ea31] FOREIGN KEY([note_id])
REFERENCES [dbo].[notes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_request_user_mentions] CHECK CONSTRAINT [fk_rails_c440b9ea31]
GO
ALTER TABLE [dbo].[merge_requests]  WITH CHECK ADD  CONSTRAINT [fk_3308fe130c] FOREIGN KEY([source_project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[merge_requests] CHECK CONSTRAINT [fk_3308fe130c]
GO
ALTER TABLE [dbo].[merge_requests]  WITH CHECK ADD  CONSTRAINT [fk_6149611a04] FOREIGN KEY([assignee_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[merge_requests] CHECK CONSTRAINT [fk_6149611a04]
GO
ALTER TABLE [dbo].[merge_requests]  WITH CHECK ADD  CONSTRAINT [fk_6a5165a692] FOREIGN KEY([milestone_id])
REFERENCES [dbo].[milestones] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[merge_requests] CHECK CONSTRAINT [fk_6a5165a692]
GO
ALTER TABLE [dbo].[merge_requests]  WITH CHECK ADD  CONSTRAINT [fk_fd82eae0b9] FOREIGN KEY([head_pipeline_id])
REFERENCES [dbo].[ci_pipelines] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[merge_requests] CHECK CONSTRAINT [fk_fd82eae0b9]
GO
ALTER TABLE [dbo].[merge_requests_closing_issues]  WITH CHECK ADD  CONSTRAINT [fk_rails_458eda8667] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_requests_closing_issues] CHECK CONSTRAINT [fk_rails_458eda8667]
GO
ALTER TABLE [dbo].[merge_requests_closing_issues]  WITH CHECK ADD  CONSTRAINT [fk_rails_f8540692be] FOREIGN KEY([issue_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_requests_closing_issues] CHECK CONSTRAINT [fk_rails_f8540692be]
GO
ALTER TABLE [dbo].[merge_trains]  WITH CHECK ADD  CONSTRAINT [fk_rails_b29261ce31] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_trains] CHECK CONSTRAINT [fk_rails_b29261ce31]
GO
ALTER TABLE [dbo].[merge_trains]  WITH CHECK ADD  CONSTRAINT [fk_rails_b374b5225d] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_trains] CHECK CONSTRAINT [fk_rails_b374b5225d]
GO
ALTER TABLE [dbo].[merge_trains]  WITH CHECK ADD  CONSTRAINT [fk_rails_b9d67af01d] FOREIGN KEY([target_project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[merge_trains] CHECK CONSTRAINT [fk_rails_b9d67af01d]
GO
ALTER TABLE [dbo].[merge_trains]  WITH CHECK ADD  CONSTRAINT [fk_rails_f90820cb08] FOREIGN KEY([pipeline_id])
REFERENCES [dbo].[ci_pipelines] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[merge_trains] CHECK CONSTRAINT [fk_rails_f90820cb08]
GO
ALTER TABLE [dbo].[namespace_aggregation_schedules]  WITH CHECK ADD  CONSTRAINT [fk_rails_b565c8d16c] FOREIGN KEY([namespace_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[namespace_aggregation_schedules] CHECK CONSTRAINT [fk_rails_b565c8d16c]
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics]  WITH CHECK ADD  CONSTRAINT [fk_rails_a0702c430b] FOREIGN KEY([namespace_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[namespace_root_storage_statistics] CHECK CONSTRAINT [fk_rails_a0702c430b]
GO
ALTER TABLE [dbo].[namespace_statistics]  WITH CHECK ADD  CONSTRAINT [fk_rails_0062050394] FOREIGN KEY([namespace_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[namespace_statistics] CHECK CONSTRAINT [fk_rails_0062050394]
GO
ALTER TABLE [dbo].[namespaces]  WITH CHECK ADD  CONSTRAINT [fk_319256d87a] FOREIGN KEY([file_template_project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[namespaces] CHECK CONSTRAINT [fk_319256d87a]
GO
ALTER TABLE [dbo].[namespaces]  WITH CHECK ADD  CONSTRAINT [fk_fdd12e5b80] FOREIGN KEY([plan_id])
REFERENCES [dbo].[plans] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[namespaces] CHECK CONSTRAINT [fk_fdd12e5b80]
GO
ALTER TABLE [dbo].[note_diff_files]  WITH CHECK ADD  CONSTRAINT [fk_rails_3d66047aeb] FOREIGN KEY([diff_note_id])
REFERENCES [dbo].[notes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[note_diff_files] CHECK CONSTRAINT [fk_rails_3d66047aeb]
GO
ALTER TABLE [dbo].[notes]  WITH CHECK ADD  CONSTRAINT [fk_2e82291620] FOREIGN KEY([review_id])
REFERENCES [dbo].[reviews] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[notes] CHECK CONSTRAINT [fk_2e82291620]
GO
ALTER TABLE [dbo].[notes]  WITH CHECK ADD  CONSTRAINT [fk_99e097b079] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[notes] CHECK CONSTRAINT [fk_99e097b079]
GO
ALTER TABLE [dbo].[notification_settings]  WITH CHECK ADD  CONSTRAINT [fk_0c95e91db7] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[notification_settings] CHECK CONSTRAINT [fk_0c95e91db7]
GO
ALTER TABLE [dbo].[oauth_openid_requests]  WITH CHECK ADD  CONSTRAINT [fk_77114b3b09] FOREIGN KEY([access_grant_id])
REFERENCES [dbo].[oauth_access_grants] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[oauth_openid_requests] CHECK CONSTRAINT [fk_77114b3b09]
GO
ALTER TABLE [dbo].[open_project_tracker_data]  WITH CHECK ADD  CONSTRAINT [fk_rails_1987546e48] FOREIGN KEY([service_id])
REFERENCES [dbo].[services] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[open_project_tracker_data] CHECK CONSTRAINT [fk_rails_1987546e48]
GO
ALTER TABLE [dbo].[operations_feature_flag_scopes]  WITH CHECK ADD  CONSTRAINT [fk_rails_a50a04d0a4] FOREIGN KEY([feature_flag_id])
REFERENCES [dbo].[operations_feature_flags] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[operations_feature_flag_scopes] CHECK CONSTRAINT [fk_rails_a50a04d0a4]
GO
ALTER TABLE [dbo].[operations_feature_flags]  WITH CHECK ADD  CONSTRAINT [fk_rails_648e241be7] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[operations_feature_flags] CHECK CONSTRAINT [fk_rails_648e241be7]
GO
ALTER TABLE [dbo].[operations_feature_flags_clients]  WITH CHECK ADD  CONSTRAINT [fk_rails_6650ed902c] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[operations_feature_flags_clients] CHECK CONSTRAINT [fk_rails_6650ed902c]
GO
ALTER TABLE [dbo].[operations_scopes]  WITH CHECK ADD  CONSTRAINT [fk_rails_7a9358853b] FOREIGN KEY([strategy_id])
REFERENCES [dbo].[operations_strategies] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[operations_scopes] CHECK CONSTRAINT [fk_rails_7a9358853b]
GO
ALTER TABLE [dbo].[operations_strategies]  WITH CHECK ADD  CONSTRAINT [fk_rails_d183b6e6dd] FOREIGN KEY([feature_flag_id])
REFERENCES [dbo].[operations_feature_flags] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[operations_strategies] CHECK CONSTRAINT [fk_rails_d183b6e6dd]
GO
ALTER TABLE [dbo].[packages_build_infos]  WITH CHECK ADD  CONSTRAINT [fk_rails_17a9a0dffc] FOREIGN KEY([pipeline_id])
REFERENCES [dbo].[ci_pipelines] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[packages_build_infos] CHECK CONSTRAINT [fk_rails_17a9a0dffc]
GO
ALTER TABLE [dbo].[packages_conan_file_metadata]  WITH CHECK ADD  CONSTRAINT [fk_rails_0afabd9328] FOREIGN KEY([package_file_id])
REFERENCES [dbo].[packages_package_files] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[packages_conan_file_metadata] CHECK CONSTRAINT [fk_rails_0afabd9328]
GO
ALTER TABLE [dbo].[packages_conan_metadata]  WITH CHECK ADD  CONSTRAINT [fk_rails_8c68cfec8b] FOREIGN KEY([package_id])
REFERENCES [dbo].[packages_packages] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[packages_conan_metadata] CHECK CONSTRAINT [fk_rails_8c68cfec8b]
GO
ALTER TABLE [dbo].[packages_dependency_links]  WITH CHECK ADD  CONSTRAINT [fk_rails_4437bf4070] FOREIGN KEY([dependency_id])
REFERENCES [dbo].[packages_dependencies] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[packages_dependency_links] CHECK CONSTRAINT [fk_rails_4437bf4070]
GO
ALTER TABLE [dbo].[packages_dependency_links]  WITH CHECK ADD  CONSTRAINT [fk_rails_96ef1c00d3] FOREIGN KEY([package_id])
REFERENCES [dbo].[packages_packages] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[packages_dependency_links] CHECK CONSTRAINT [fk_rails_96ef1c00d3]
GO
ALTER TABLE [dbo].[packages_maven_metadata]  WITH CHECK ADD  CONSTRAINT [fk_be88aed360] FOREIGN KEY([package_id])
REFERENCES [dbo].[packages_packages] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[packages_maven_metadata] CHECK CONSTRAINT [fk_be88aed360]
GO
ALTER TABLE [dbo].[packages_package_files]  WITH CHECK ADD  CONSTRAINT [fk_86f0f182f8] FOREIGN KEY([package_id])
REFERENCES [dbo].[packages_packages] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[packages_package_files] CHECK CONSTRAINT [fk_86f0f182f8]
GO
ALTER TABLE [dbo].[packages_packages]  WITH CHECK ADD  CONSTRAINT [fk_rails_e1ac527425] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[packages_packages] CHECK CONSTRAINT [fk_rails_e1ac527425]
GO
ALTER TABLE [dbo].[pages_domain_acme_orders]  WITH CHECK ADD  CONSTRAINT [fk_rails_76581b1c16] FOREIGN KEY([pages_domain_id])
REFERENCES [dbo].[pages_domains] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[pages_domain_acme_orders] CHECK CONSTRAINT [fk_rails_76581b1c16]
GO
ALTER TABLE [dbo].[pages_domains]  WITH CHECK ADD  CONSTRAINT [fk_ea2f6dfc6f] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[pages_domains] CHECK CONSTRAINT [fk_ea2f6dfc6f]
GO
ALTER TABLE [dbo].[path_locks]  WITH CHECK ADD  CONSTRAINT [fk_5265c98f24] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[path_locks] CHECK CONSTRAINT [fk_5265c98f24]
GO
ALTER TABLE [dbo].[path_locks]  WITH CHECK ADD  CONSTRAINT [fk_rails_762cdcf942] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[path_locks] CHECK CONSTRAINT [fk_rails_762cdcf942]
GO
ALTER TABLE [dbo].[personal_access_tokens]  WITH CHECK ADD  CONSTRAINT [fk_personal_access_tokens_user_id] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[personal_access_tokens] CHECK CONSTRAINT [fk_personal_access_tokens_user_id]
GO
ALTER TABLE [dbo].[pool_repositories]  WITH CHECK ADD  CONSTRAINT [fk_rails_af3f8c5d62] FOREIGN KEY([shard_id])
REFERENCES [dbo].[shards] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[pool_repositories] CHECK CONSTRAINT [fk_rails_af3f8c5d62]
GO
ALTER TABLE [dbo].[pool_repositories]  WITH CHECK ADD  CONSTRAINT [fk_rails_d2711daad4] FOREIGN KEY([source_project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[pool_repositories] CHECK CONSTRAINT [fk_rails_d2711daad4]
GO
ALTER TABLE [dbo].[project_alerting_settings]  WITH CHECK ADD  CONSTRAINT [fk_rails_27a84b407d] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_alerting_settings] CHECK CONSTRAINT [fk_rails_27a84b407d]
GO
ALTER TABLE [dbo].[project_aliases]  WITH CHECK ADD  CONSTRAINT [fk_rails_a1804f74a7] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_aliases] CHECK CONSTRAINT [fk_rails_a1804f74a7]
GO
ALTER TABLE [dbo].[project_authorizations]  WITH CHECK ADD  CONSTRAINT [fk_rails_0f84bb11f3] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_authorizations] CHECK CONSTRAINT [fk_rails_0f84bb11f3]
GO
ALTER TABLE [dbo].[project_authorizations]  WITH CHECK ADD  CONSTRAINT [fk_rails_11e7aa3ed9] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_authorizations] CHECK CONSTRAINT [fk_rails_11e7aa3ed9]
GO
ALTER TABLE [dbo].[project_auto_devops]  WITH CHECK ADD  CONSTRAINT [fk_rails_45436b12b2] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_auto_devops] CHECK CONSTRAINT [fk_rails_45436b12b2]
GO
ALTER TABLE [dbo].[project_ci_cd_settings]  WITH CHECK ADD  CONSTRAINT [fk_24c15d2f2e] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_ci_cd_settings] CHECK CONSTRAINT [fk_24c15d2f2e]
GO
ALTER TABLE [dbo].[project_custom_attributes]  WITH CHECK ADD  CONSTRAINT [fk_rails_719c3dccc5] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_custom_attributes] CHECK CONSTRAINT [fk_rails_719c3dccc5]
GO
ALTER TABLE [dbo].[project_daily_statistics]  WITH CHECK ADD  CONSTRAINT [fk_rails_8e549b272d] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_daily_statistics] CHECK CONSTRAINT [fk_rails_8e549b272d]
GO
ALTER TABLE [dbo].[project_deploy_tokens]  WITH CHECK ADD  CONSTRAINT [fk_rails_0aca134388] FOREIGN KEY([deploy_token_id])
REFERENCES [dbo].[deploy_tokens] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_deploy_tokens] CHECK CONSTRAINT [fk_rails_0aca134388]
GO
ALTER TABLE [dbo].[project_deploy_tokens]  WITH CHECK ADD  CONSTRAINT [fk_rails_170e03cbaf] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_deploy_tokens] CHECK CONSTRAINT [fk_rails_170e03cbaf]
GO
ALTER TABLE [dbo].[project_error_tracking_settings]  WITH CHECK ADD  CONSTRAINT [fk_rails_910a2b8bd9] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_error_tracking_settings] CHECK CONSTRAINT [fk_rails_910a2b8bd9]
GO
ALTER TABLE [dbo].[project_feature_usages]  WITH CHECK ADD  CONSTRAINT [fk_rails_c22a50024b] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_feature_usages] CHECK CONSTRAINT [fk_rails_c22a50024b]
GO
ALTER TABLE [dbo].[project_features]  WITH CHECK ADD  CONSTRAINT [fk_18513d9b92] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_features] CHECK CONSTRAINT [fk_18513d9b92]
GO
ALTER TABLE [dbo].[project_group_links]  WITH CHECK ADD  CONSTRAINT [fk_daa8cee94c] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_group_links] CHECK CONSTRAINT [fk_daa8cee94c]
GO
ALTER TABLE [dbo].[project_import_data]  WITH CHECK ADD  CONSTRAINT [fk_ffb9ee3a10] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_import_data] CHECK CONSTRAINT [fk_ffb9ee3a10]
GO
ALTER TABLE [dbo].[project_metrics_settings]  WITH CHECK ADD  CONSTRAINT [fk_rails_4c6037ee4f] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_metrics_settings] CHECK CONSTRAINT [fk_rails_4c6037ee4f]
GO
ALTER TABLE [dbo].[project_mirror_data]  WITH CHECK ADD  CONSTRAINT [fk_d1aad367d7] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_mirror_data] CHECK CONSTRAINT [fk_d1aad367d7]
GO
ALTER TABLE [dbo].[project_repositories]  WITH CHECK ADD  CONSTRAINT [fk_rails_7a810d4121] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_repositories] CHECK CONSTRAINT [fk_rails_7a810d4121]
GO
ALTER TABLE [dbo].[project_repositories]  WITH CHECK ADD  CONSTRAINT [fk_rails_c3258dc63b] FOREIGN KEY([shard_id])
REFERENCES [dbo].[shards] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_repositories] CHECK CONSTRAINT [fk_rails_c3258dc63b]
GO
ALTER TABLE [dbo].[project_repository_states]  WITH CHECK ADD  CONSTRAINT [fk_rails_0f2298ca8a] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_repository_states] CHECK CONSTRAINT [fk_rails_0f2298ca8a]
GO
ALTER TABLE [dbo].[project_settings]  WITH CHECK ADD  CONSTRAINT [fk_rails_c6df6e6328] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_settings] CHECK CONSTRAINT [fk_rails_c6df6e6328]
GO
ALTER TABLE [dbo].[project_statistics]  WITH CHECK ADD  CONSTRAINT [fk_rails_12c471002f] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_statistics] CHECK CONSTRAINT [fk_rails_12c471002f]
GO
ALTER TABLE [dbo].[project_tracing_settings]  WITH CHECK ADD  CONSTRAINT [fk_rails_fe56f57fc6] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[project_tracing_settings] CHECK CONSTRAINT [fk_rails_fe56f57fc6]
GO
ALTER TABLE [dbo].[prometheus_alert_events]  WITH CHECK ADD  CONSTRAINT [fk_rails_106f901176] FOREIGN KEY([prometheus_alert_id])
REFERENCES [dbo].[prometheus_alerts] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[prometheus_alert_events] CHECK CONSTRAINT [fk_rails_106f901176]
GO
ALTER TABLE [dbo].[prometheus_alert_events]  WITH CHECK ADD  CONSTRAINT [fk_rails_4675865839] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[prometheus_alert_events] CHECK CONSTRAINT [fk_rails_4675865839]
GO
ALTER TABLE [dbo].[prometheus_alerts]  WITH CHECK ADD  CONSTRAINT [fk_rails_6d9b283465] FOREIGN KEY([environment_id])
REFERENCES [dbo].[environments] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[prometheus_alerts] CHECK CONSTRAINT [fk_rails_6d9b283465]
GO
ALTER TABLE [dbo].[prometheus_alerts]  WITH CHECK ADD  CONSTRAINT [fk_rails_e6351447ec] FOREIGN KEY([prometheus_metric_id])
REFERENCES [dbo].[prometheus_metrics] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[prometheus_alerts] CHECK CONSTRAINT [fk_rails_e6351447ec]
GO
ALTER TABLE [dbo].[protected_branch_merge_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_8a3072ccb3] FOREIGN KEY([protected_branch_id])
REFERENCES [dbo].[protected_branches] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_branch_merge_access_levels] CHECK CONSTRAINT [fk_8a3072ccb3]
GO
ALTER TABLE [dbo].[protected_branch_merge_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_98f3d044fe] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_branch_merge_access_levels] CHECK CONSTRAINT [fk_98f3d044fe]
GO
ALTER TABLE [dbo].[protected_branch_merge_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_rails_5ffb4f3590] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_branch_merge_access_levels] CHECK CONSTRAINT [fk_rails_5ffb4f3590]
GO
ALTER TABLE [dbo].[protected_branch_push_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_7111b68cdb] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_branch_push_access_levels] CHECK CONSTRAINT [fk_7111b68cdb]
GO
ALTER TABLE [dbo].[protected_branch_push_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_9ffc86a3d9] FOREIGN KEY([protected_branch_id])
REFERENCES [dbo].[protected_branches] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_branch_push_access_levels] CHECK CONSTRAINT [fk_9ffc86a3d9]
GO
ALTER TABLE [dbo].[protected_branch_push_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_rails_8dcb712d65] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_branch_push_access_levels] CHECK CONSTRAINT [fk_rails_8dcb712d65]
GO
ALTER TABLE [dbo].[protected_branch_unprotect_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_rails_2d2aba21ef] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_branch_unprotect_access_levels] CHECK CONSTRAINT [fk_rails_2d2aba21ef]
GO
ALTER TABLE [dbo].[protected_branch_unprotect_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_rails_5be1abfc25] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_branch_unprotect_access_levels] CHECK CONSTRAINT [fk_rails_5be1abfc25]
GO
ALTER TABLE [dbo].[protected_branch_unprotect_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_rails_e9eb8dc025] FOREIGN KEY([protected_branch_id])
REFERENCES [dbo].[protected_branches] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_branch_unprotect_access_levels] CHECK CONSTRAINT [fk_rails_e9eb8dc025]
GO
ALTER TABLE [dbo].[protected_branches]  WITH CHECK ADD  CONSTRAINT [fk_7a9c6d93e7] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_branches] CHECK CONSTRAINT [fk_7a9c6d93e7]
GO
ALTER TABLE [dbo].[protected_environment_deploy_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_rails_45cc02a931] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_environment_deploy_access_levels] CHECK CONSTRAINT [fk_rails_45cc02a931]
GO
ALTER TABLE [dbo].[protected_environment_deploy_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_rails_5b9f6970fe] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_environment_deploy_access_levels] CHECK CONSTRAINT [fk_rails_5b9f6970fe]
GO
ALTER TABLE [dbo].[protected_environment_deploy_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_rails_898a13b650] FOREIGN KEY([protected_environment_id])
REFERENCES [dbo].[protected_environments] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_environment_deploy_access_levels] CHECK CONSTRAINT [fk_rails_898a13b650]
GO
ALTER TABLE [dbo].[protected_environments]  WITH CHECK ADD  CONSTRAINT [fk_rails_a354313d11] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_environments] CHECK CONSTRAINT [fk_rails_a354313d11]
GO
ALTER TABLE [dbo].[protected_tag_create_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_b4eb82fe3c] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_tag_create_access_levels] CHECK CONSTRAINT [fk_b4eb82fe3c]
GO
ALTER TABLE [dbo].[protected_tag_create_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_f7dfda8c51] FOREIGN KEY([protected_tag_id])
REFERENCES [dbo].[protected_tags] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_tag_create_access_levels] CHECK CONSTRAINT [fk_f7dfda8c51]
GO
ALTER TABLE [dbo].[protected_tag_create_access_levels]  WITH CHECK ADD  CONSTRAINT [fk_rails_2349b78b91] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_tag_create_access_levels] CHECK CONSTRAINT [fk_rails_2349b78b91]
GO
ALTER TABLE [dbo].[protected_tags]  WITH CHECK ADD  CONSTRAINT [fk_8e4af87648] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[protected_tags] CHECK CONSTRAINT [fk_8e4af87648]
GO
ALTER TABLE [dbo].[push_event_payloads]  WITH CHECK ADD  CONSTRAINT [fk_36c74129da] FOREIGN KEY([event_id])
REFERENCES [dbo].[events] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[push_event_payloads] CHECK CONSTRAINT [fk_36c74129da]
GO
ALTER TABLE [dbo].[push_rules]  WITH CHECK ADD  CONSTRAINT [fk_83b29894de] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[push_rules] CHECK CONSTRAINT [fk_83b29894de]
GO
ALTER TABLE [dbo].[release_links]  WITH CHECK ADD  CONSTRAINT [fk_rails_753be7ae29] FOREIGN KEY([release_id])
REFERENCES [dbo].[releases] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[release_links] CHECK CONSTRAINT [fk_rails_753be7ae29]
GO
ALTER TABLE [dbo].[releases]  WITH CHECK ADD  CONSTRAINT [fk_47fe2a0596] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[releases] CHECK CONSTRAINT [fk_47fe2a0596]
GO
ALTER TABLE [dbo].[releases]  WITH CHECK ADD  CONSTRAINT [fk_8e4456f90f] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[releases] CHECK CONSTRAINT [fk_8e4456f90f]
GO
ALTER TABLE [dbo].[remote_mirrors]  WITH CHECK ADD  CONSTRAINT [fk_43a9aa4ca8] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[remote_mirrors] CHECK CONSTRAINT [fk_43a9aa4ca8]
GO
ALTER TABLE [dbo].[repository_languages]  WITH CHECK ADD  CONSTRAINT [fk_rails_a750ec87a8] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[repository_languages] CHECK CONSTRAINT [fk_rails_a750ec87a8]
GO
ALTER TABLE [dbo].[requirements]  WITH CHECK ADD  CONSTRAINT [fk_rails_33fed8aa4e] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[requirements] CHECK CONSTRAINT [fk_rails_33fed8aa4e]
GO
ALTER TABLE [dbo].[requirements]  WITH CHECK ADD  CONSTRAINT [fk_rails_f212e67e63] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[requirements] CHECK CONSTRAINT [fk_rails_f212e67e63]
GO
ALTER TABLE [dbo].[resource_label_events]  WITH CHECK ADD  CONSTRAINT [fk_rails_5ac1d2fc24] FOREIGN KEY([issue_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[resource_label_events] CHECK CONSTRAINT [fk_rails_5ac1d2fc24]
GO
ALTER TABLE [dbo].[resource_label_events]  WITH CHECK ADD  CONSTRAINT [fk_rails_75efb0a653] FOREIGN KEY([epic_id])
REFERENCES [dbo].[epics] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[resource_label_events] CHECK CONSTRAINT [fk_rails_75efb0a653]
GO
ALTER TABLE [dbo].[resource_label_events]  WITH CHECK ADD  CONSTRAINT [fk_rails_9851a00031] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[resource_label_events] CHECK CONSTRAINT [fk_rails_9851a00031]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [fk_rails_29e6f859c4] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [fk_rails_29e6f859c4]
GO
ALTER TABLE [dbo].[reviews]  WITH CHECK ADD  CONSTRAINT [fk_rails_5ca11d8c31] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[reviews] CHECK CONSTRAINT [fk_rails_5ca11d8c31]
GO
ALTER TABLE [dbo].[saml_providers]  WITH CHECK ADD  CONSTRAINT [fk_rails_306d459be7] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[saml_providers] CHECK CONSTRAINT [fk_rails_306d459be7]
GO
ALTER TABLE [dbo].[scim_oauth_access_tokens]  WITH CHECK ADD  CONSTRAINT [fk_rails_c84404fb6c] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[scim_oauth_access_tokens] CHECK CONSTRAINT [fk_rails_c84404fb6c]
GO
ALTER TABLE [dbo].[services]  WITH CHECK ADD  CONSTRAINT [fk_71cce407f9] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[services] CHECK CONSTRAINT [fk_71cce407f9]
GO
ALTER TABLE [dbo].[slack_integrations]  WITH CHECK ADD  CONSTRAINT [fk_rails_73db19721a] FOREIGN KEY([service_id])
REFERENCES [dbo].[services] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[slack_integrations] CHECK CONSTRAINT [fk_rails_73db19721a]
GO
ALTER TABLE [dbo].[smartcard_identities]  WITH CHECK ADD  CONSTRAINT [fk_rails_4689f889a9] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[smartcard_identities] CHECK CONSTRAINT [fk_rails_4689f889a9]
GO
ALTER TABLE [dbo].[snippet_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_3e00189191] FOREIGN KEY([snippet_id])
REFERENCES [dbo].[snippets] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[snippet_user_mentions] CHECK CONSTRAINT [fk_rails_3e00189191]
GO
ALTER TABLE [dbo].[snippet_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_4d3f96b2cb] FOREIGN KEY([note_id])
REFERENCES [dbo].[notes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[snippet_user_mentions] CHECK CONSTRAINT [fk_rails_4d3f96b2cb]
GO
ALTER TABLE [dbo].[software_license_policies]  WITH CHECK ADD  CONSTRAINT [fk_rails_7a7a2a92de] FOREIGN KEY([software_license_id])
REFERENCES [dbo].[software_licenses] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[software_license_policies] CHECK CONSTRAINT [fk_rails_7a7a2a92de]
GO
ALTER TABLE [dbo].[software_license_policies]  WITH CHECK ADD  CONSTRAINT [fk_rails_87b2247ce5] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[software_license_policies] CHECK CONSTRAINT [fk_rails_87b2247ce5]
GO
ALTER TABLE [dbo].[subscriptions]  WITH CHECK ADD  CONSTRAINT [fk_rails_d0c8bda804] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[subscriptions] CHECK CONSTRAINT [fk_rails_d0c8bda804]
GO
ALTER TABLE [dbo].[suggestions]  WITH CHECK ADD  CONSTRAINT [fk_rails_33b03a535c] FOREIGN KEY([note_id])
REFERENCES [dbo].[notes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[suggestions] CHECK CONSTRAINT [fk_rails_33b03a535c]
GO
ALTER TABLE [dbo].[system_note_metadata]  WITH CHECK ADD  CONSTRAINT [fk_d83a918cb1] FOREIGN KEY([note_id])
REFERENCES [dbo].[notes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[system_note_metadata] CHECK CONSTRAINT [fk_d83a918cb1]
GO
ALTER TABLE [dbo].[system_note_metadata]  WITH CHECK ADD  CONSTRAINT [fk_fbd87415c9] FOREIGN KEY([description_version_id])
REFERENCES [dbo].[description_versions] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[system_note_metadata] CHECK CONSTRAINT [fk_fbd87415c9]
GO
ALTER TABLE [dbo].[term_agreements]  WITH CHECK ADD  CONSTRAINT [fk_rails_6ea6520e4a] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[term_agreements] CHECK CONSTRAINT [fk_rails_6ea6520e4a]
GO
ALTER TABLE [dbo].[term_agreements]  WITH CHECK ADD  CONSTRAINT [fk_rails_a88721bcdf] FOREIGN KEY([term_id])
REFERENCES [dbo].[application_setting_terms] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[term_agreements] CHECK CONSTRAINT [fk_rails_a88721bcdf]
GO
ALTER TABLE [dbo].[timelogs]  WITH CHECK ADD  CONSTRAINT [fk_timelogs_issues_issue_id] FOREIGN KEY([issue_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[timelogs] CHECK CONSTRAINT [fk_timelogs_issues_issue_id]
GO
ALTER TABLE [dbo].[timelogs]  WITH CHECK ADD  CONSTRAINT [fk_timelogs_merge_requests_merge_request_id] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[timelogs] CHECK CONSTRAINT [fk_timelogs_merge_requests_merge_request_id]
GO
ALTER TABLE [dbo].[todos]  WITH CHECK ADD  CONSTRAINT [fk_45054f9c45] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[todos] CHECK CONSTRAINT [fk_45054f9c45]
GO
ALTER TABLE [dbo].[todos]  WITH CHECK ADD  CONSTRAINT [fk_ccf0373936] FOREIGN KEY([author_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[todos] CHECK CONSTRAINT [fk_ccf0373936]
GO
ALTER TABLE [dbo].[todos]  WITH CHECK ADD  CONSTRAINT [fk_rails_a27c483435] FOREIGN KEY([group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[todos] CHECK CONSTRAINT [fk_rails_a27c483435]
GO
ALTER TABLE [dbo].[trending_projects]  WITH CHECK ADD  CONSTRAINT [fk_rails_09feecd872] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[trending_projects] CHECK CONSTRAINT [fk_rails_09feecd872]
GO
ALTER TABLE [dbo].[u2f_registrations]  WITH CHECK ADD  CONSTRAINT [fk_rails_bfe6a84544] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[u2f_registrations] CHECK CONSTRAINT [fk_rails_bfe6a84544]
GO
ALTER TABLE [dbo].[user_callouts]  WITH CHECK ADD  CONSTRAINT [fk_rails_ddfdd80f3d] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_callouts] CHECK CONSTRAINT [fk_rails_ddfdd80f3d]
GO
ALTER TABLE [dbo].[user_custom_attributes]  WITH CHECK ADD  CONSTRAINT [fk_rails_47b91868a8] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_custom_attributes] CHECK CONSTRAINT [fk_rails_47b91868a8]
GO
ALTER TABLE [dbo].[user_interacted_projects]  WITH CHECK ADD  CONSTRAINT [fk_0894651f08] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_interacted_projects] CHECK CONSTRAINT [fk_0894651f08]
GO
ALTER TABLE [dbo].[user_interacted_projects]  WITH CHECK ADD  CONSTRAINT [fk_722ceba4f7] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_interacted_projects] CHECK CONSTRAINT [fk_722ceba4f7]
GO
ALTER TABLE [dbo].[user_preferences]  WITH CHECK ADD  CONSTRAINT [fk_rails_a69bfcfd81] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_preferences] CHECK CONSTRAINT [fk_rails_a69bfcfd81]
GO
ALTER TABLE [dbo].[user_synced_attributes_metadata]  WITH CHECK ADD  CONSTRAINT [fk_rails_0f4aa0981f] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[user_synced_attributes_metadata] CHECK CONSTRAINT [fk_rails_0f4aa0981f]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [fk_789cd90b35] FOREIGN KEY([accepted_term_id])
REFERENCES [dbo].[application_setting_terms] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [fk_789cd90b35]
GO
ALTER TABLE [dbo].[users]  WITH CHECK ADD  CONSTRAINT [fk_a4b8fefe3e] FOREIGN KEY([managing_group_id])
REFERENCES [dbo].[namespaces] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[users] CHECK CONSTRAINT [fk_a4b8fefe3e]
GO
ALTER TABLE [dbo].[users_ops_dashboard_projects]  WITH CHECK ADD  CONSTRAINT [fk_rails_220a0562db] FOREIGN KEY([user_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users_ops_dashboard_projects] CHECK CONSTRAINT [fk_rails_220a0562db]
GO
ALTER TABLE [dbo].[users_ops_dashboard_projects]  WITH CHECK ADD  CONSTRAINT [fk_rails_9b4ebf005b] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users_ops_dashboard_projects] CHECK CONSTRAINT [fk_rails_9b4ebf005b]
GO
ALTER TABLE [dbo].[users_star_projects]  WITH CHECK ADD  CONSTRAINT [fk_22cd27ddfc] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[users_star_projects] CHECK CONSTRAINT [fk_22cd27ddfc]
GO
ALTER TABLE [dbo].[vulnerability_feedback]  WITH CHECK ADD  CONSTRAINT [fk_563ff1912e] FOREIGN KEY([merge_request_id])
REFERENCES [dbo].[merge_requests] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[vulnerability_feedback] CHECK CONSTRAINT [fk_563ff1912e]
GO
ALTER TABLE [dbo].[vulnerability_feedback]  WITH CHECK ADD  CONSTRAINT [fk_94f7c8a81e] FOREIGN KEY([comment_author_id])
REFERENCES [dbo].[users] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[vulnerability_feedback] CHECK CONSTRAINT [fk_94f7c8a81e]
GO
ALTER TABLE [dbo].[vulnerability_feedback]  WITH CHECK ADD  CONSTRAINT [fk_rails_20976e6fd9] FOREIGN KEY([pipeline_id])
REFERENCES [dbo].[ci_pipelines] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[vulnerability_feedback] CHECK CONSTRAINT [fk_rails_20976e6fd9]
GO
ALTER TABLE [dbo].[vulnerability_feedback]  WITH CHECK ADD  CONSTRAINT [fk_rails_8c77e5891a] FOREIGN KEY([issue_id])
REFERENCES [dbo].[issues] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[vulnerability_feedback] CHECK CONSTRAINT [fk_rails_8c77e5891a]
GO
ALTER TABLE [dbo].[vulnerability_feedback]  WITH CHECK ADD  CONSTRAINT [fk_rails_debd54e456] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vulnerability_feedback] CHECK CONSTRAINT [fk_rails_debd54e456]
GO
ALTER TABLE [dbo].[vulnerability_identifiers]  WITH CHECK ADD  CONSTRAINT [fk_rails_a67a16c885] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vulnerability_identifiers] CHECK CONSTRAINT [fk_rails_a67a16c885]
GO
ALTER TABLE [dbo].[vulnerability_issue_links]  WITH CHECK ADD  CONSTRAINT [fk_rails_d459c19036] FOREIGN KEY([vulnerability_id])
REFERENCES [dbo].[vulnerabilities] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vulnerability_issue_links] CHECK CONSTRAINT [fk_rails_d459c19036]
GO
ALTER TABLE [dbo].[vulnerability_occurrence_identifiers]  WITH CHECK ADD  CONSTRAINT [fk_rails_be2e49e1d0] FOREIGN KEY([identifier_id])
REFERENCES [dbo].[vulnerability_identifiers] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vulnerability_occurrence_identifiers] CHECK CONSTRAINT [fk_rails_be2e49e1d0]
GO
ALTER TABLE [dbo].[vulnerability_occurrence_identifiers]  WITH CHECK ADD  CONSTRAINT [fk_rails_e4ef6d027c] FOREIGN KEY([occurrence_id])
REFERENCES [dbo].[vulnerability_occurrences] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vulnerability_occurrence_identifiers] CHECK CONSTRAINT [fk_rails_e4ef6d027c]
GO
ALTER TABLE [dbo].[vulnerability_occurrence_pipelines]  WITH CHECK ADD  CONSTRAINT [fk_rails_6421e35d7d] FOREIGN KEY([pipeline_id])
REFERENCES [dbo].[ci_pipelines] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vulnerability_occurrence_pipelines] CHECK CONSTRAINT [fk_rails_6421e35d7d]
GO
ALTER TABLE [dbo].[vulnerability_occurrence_pipelines]  WITH CHECK ADD  CONSTRAINT [fk_rails_dc3ae04693] FOREIGN KEY([occurrence_id])
REFERENCES [dbo].[vulnerability_occurrences] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vulnerability_occurrence_pipelines] CHECK CONSTRAINT [fk_rails_dc3ae04693]
GO
ALTER TABLE [dbo].[vulnerability_occurrences]  WITH CHECK ADD  CONSTRAINT [fk_97ffe77653] FOREIGN KEY([vulnerability_id])
REFERENCES [dbo].[vulnerabilities] ([id]) ON DELETE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[vulnerability_occurrences] CHECK CONSTRAINT [fk_97ffe77653]
GO
ALTER TABLE [dbo].[vulnerability_occurrences]  WITH CHECK ADD  CONSTRAINT [fk_rails_bf5b788ca7] FOREIGN KEY([scanner_id])
REFERENCES [dbo].[vulnerability_scanners] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vulnerability_occurrences] CHECK CONSTRAINT [fk_rails_bf5b788ca7]
GO
ALTER TABLE [dbo].[vulnerability_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_1a41c485cd] FOREIGN KEY([vulnerability_id])
REFERENCES [dbo].[vulnerabilities] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vulnerability_user_mentions] CHECK CONSTRAINT [fk_rails_1a41c485cd]
GO
ALTER TABLE [dbo].[vulnerability_user_mentions]  WITH CHECK ADD  CONSTRAINT [fk_rails_a18600f210] FOREIGN KEY([note_id])
REFERENCES [dbo].[notes] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[vulnerability_user_mentions] CHECK CONSTRAINT [fk_rails_a18600f210]
GO
ALTER TABLE [dbo].[web_hook_logs]  WITH CHECK ADD  CONSTRAINT [fk_rails_666826e111] FOREIGN KEY([web_hook_id])
REFERENCES [dbo].[web_hooks] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[web_hook_logs] CHECK CONSTRAINT [fk_rails_666826e111]
GO
ALTER TABLE [dbo].[web_hooks]  WITH CHECK ADD  CONSTRAINT [fk_0c8ca6d9d1] FOREIGN KEY([project_id])
REFERENCES [dbo].[projects] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[web_hooks] CHECK CONSTRAINT [fk_0c8ca6d9d1]
GO
ALTER TABLE [dbo].[x509_certificates]  WITH CHECK ADD  CONSTRAINT [fk_rails_76479fb5b4] FOREIGN KEY([x509_issuer_id])
REFERENCES [dbo].[x509_issuers] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[x509_certificates] CHECK CONSTRAINT [fk_rails_76479fb5b4]
GO
ALTER TABLE [dbo].[x509_commit_signatures]  WITH CHECK ADD  CONSTRAINT [fk_rails_53fe41188f] FOREIGN KEY([x509_certificate_id])
REFERENCES [dbo].[x509_certificates] ([id]) ON DELETE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[x509_commit_signatures] CHECK CONSTRAINT [fk_rails_53fe41188f]
GO
