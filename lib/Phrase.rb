require 'link-header-parser'

# Common files
require 'Phrase/api_client'
require 'Phrase/api_error'
require 'Phrase/version'
require 'Phrase/configuration'

# Models
require 'Phrase/models/account'
require 'Phrase/models/account_details'
require 'Phrase/models/account_details1'
require 'Phrase/models/affected_count'
require 'Phrase/models/affected_resources'
require 'Phrase/models/authorization'
require 'Phrase/models/authorization_create_parameters'
require 'Phrase/models/authorization_update_parameters'
require 'Phrase/models/authorization_with_token'
require 'Phrase/models/authorization_with_token1'
require 'Phrase/models/bitbucket_sync'
require 'Phrase/models/bitbucket_sync_export_parameters'
require 'Phrase/models/bitbucket_sync_export_response'
require 'Phrase/models/bitbucket_sync_import_parameters'
require 'Phrase/models/bitbucket_syncs_list_parameters'
require 'Phrase/models/blacklisted_key'
require 'Phrase/models/blacklisted_key_create_parameters'
require 'Phrase/models/blacklisted_key_update_parameters'
require 'Phrase/models/branch'
require 'Phrase/models/branch_compare_parameters'
require 'Phrase/models/branch_create_parameters'
require 'Phrase/models/branch_merge_parameters'
require 'Phrase/models/branch_update_parameters'
require 'Phrase/models/comment'
require 'Phrase/models/comment_create_parameters'
require 'Phrase/models/comment_delete_parameters'
require 'Phrase/models/comment_mark_check_parameters'
require 'Phrase/models/comment_mark_read_parameters'
require 'Phrase/models/comment_mark_unread_parameters'
require 'Phrase/models/comment_show_parameters'
require 'Phrase/models/comment_update_parameters'
require 'Phrase/models/comments_list_parameters'
require 'Phrase/models/distribution'
require 'Phrase/models/distribution_create_parameters'
require 'Phrase/models/distribution_preview'
require 'Phrase/models/distribution_update_parameters'
require 'Phrase/models/format'
require 'Phrase/models/gitlab_sync'
require 'Phrase/models/gitlab_sync_delete_parameters'
require 'Phrase/models/gitlab_sync_export'
require 'Phrase/models/gitlab_sync_export_parameters'
require 'Phrase/models/gitlab_sync_history'
require 'Phrase/models/gitlab_sync_history_parameters'
require 'Phrase/models/gitlab_sync_import_parameters'
require 'Phrase/models/gitlab_sync_list_parameters'
require 'Phrase/models/gitlab_sync_show_parameters'
require 'Phrase/models/gitlab_sync_update_parameters'
require 'Phrase/models/glossary'
require 'Phrase/models/glossary_create_parameters'
require 'Phrase/models/glossary_term'
require 'Phrase/models/glossary_term_create_parameters'
require 'Phrase/models/glossary_term_translation'
require 'Phrase/models/glossary_term_translation_create_parameters'
require 'Phrase/models/glossary_term_translation_update_parameters'
require 'Phrase/models/glossary_term_update_parameters'
require 'Phrase/models/glossary_update_parameters'
require 'Phrase/models/invitation'
require 'Phrase/models/invitation_create_parameters'
require 'Phrase/models/invitation_update_parameters'
require 'Phrase/models/job'
require 'Phrase/models/job_complete_parameters'
require 'Phrase/models/job_create_parameters'
require 'Phrase/models/job_delete_parameters'
require 'Phrase/models/job_details'
require 'Phrase/models/job_details1'
require 'Phrase/models/job_keys_create_parameters'
require 'Phrase/models/job_keys_delete_parameters'
require 'Phrase/models/job_locale'
require 'Phrase/models/job_locale_complete_parameters'
require 'Phrase/models/job_locale_delete_parameters'
require 'Phrase/models/job_locale_reopen_parameters'
require 'Phrase/models/job_locale_show_parameters'
require 'Phrase/models/job_locale_update_parameters'
require 'Phrase/models/job_locales_create_parameters'
require 'Phrase/models/job_locales_list_parameters'
require 'Phrase/models/job_preview'
require 'Phrase/models/job_reopen_parameters'
require 'Phrase/models/job_show_parameters'
require 'Phrase/models/job_start_parameters'
require 'Phrase/models/job_update_parameters'
require 'Phrase/models/jobs_list_parameters'
require 'Phrase/models/key_create_parameters'
require 'Phrase/models/key_delete_parameters'
require 'Phrase/models/key_preview'
require 'Phrase/models/key_show_parameters'
require 'Phrase/models/key_update_parameters'
require 'Phrase/models/keys_delete_parameters'
require 'Phrase/models/keys_list_parameters'
require 'Phrase/models/keys_search_parameters'
require 'Phrase/models/keys_tag_parameters'
require 'Phrase/models/keys_untag_parameters'
require 'Phrase/models/locale'
require 'Phrase/models/locale_create_parameters'
require 'Phrase/models/locale_delete_parameters'
require 'Phrase/models/locale_details'
require 'Phrase/models/locale_details1'
require 'Phrase/models/locale_download_parameters'
require 'Phrase/models/locale_preview'
require 'Phrase/models/locale_show_parameters'
require 'Phrase/models/locale_statistics'
require 'Phrase/models/locale_update_parameters'
require 'Phrase/models/locales_list_parameters'
require 'Phrase/models/member'
require 'Phrase/models/member_update_parameters'
require 'Phrase/models/order_confirm_parameters'
require 'Phrase/models/order_create_parameters'
require 'Phrase/models/order_delete_parameters'
require 'Phrase/models/order_show_parameters'
require 'Phrase/models/orders_list_parameters'
require 'Phrase/models/project'
require 'Phrase/models/project_create_parameters'
require 'Phrase/models/project_details'
require 'Phrase/models/project_details1'
require 'Phrase/models/project_locales'
require 'Phrase/models/project_locales1'
require 'Phrase/models/project_short'
require 'Phrase/models/project_update_parameters'
require 'Phrase/models/release'
require 'Phrase/models/release_create_parameters'
require 'Phrase/models/release_preview'
require 'Phrase/models/release_update_parameters'
require 'Phrase/models/screenshot'
require 'Phrase/models/screenshot_create_parameters'
require 'Phrase/models/screenshot_marker'
require 'Phrase/models/screenshot_marker_create_parameters'
require 'Phrase/models/screenshot_marker_update_parameters'
require 'Phrase/models/screenshot_update_parameters'
require 'Phrase/models/space'
require 'Phrase/models/space_create_parameters'
require 'Phrase/models/space_update_parameters'
require 'Phrase/models/spaces_projects_create_parameters'
require 'Phrase/models/styleguide'
require 'Phrase/models/styleguide_create_parameters'
require 'Phrase/models/styleguide_details'
require 'Phrase/models/styleguide_details1'
require 'Phrase/models/styleguide_preview'
require 'Phrase/models/styleguide_update_parameters'
require 'Phrase/models/tag'
require 'Phrase/models/tag_create_parameters'
require 'Phrase/models/tag_delete_parameters'
require 'Phrase/models/tag_show_parameters'
require 'Phrase/models/tag_with_stats'
require 'Phrase/models/tag_with_stats1'
require 'Phrase/models/tag_with_stats1_statistics'
require 'Phrase/models/tag_with_stats1_statistics1'
require 'Phrase/models/tags_list_parameters'
require 'Phrase/models/translation'
require 'Phrase/models/translation_create_parameters'
require 'Phrase/models/translation_details'
require 'Phrase/models/translation_details1'
require 'Phrase/models/translation_exclude_parameters'
require 'Phrase/models/translation_include_parameters'
require 'Phrase/models/translation_key'
require 'Phrase/models/translation_key_details'
require 'Phrase/models/translation_key_details1'
require 'Phrase/models/translation_order'
require 'Phrase/models/translation_review_parameters'
require 'Phrase/models/translation_show_parameters'
require 'Phrase/models/translation_unverify_parameters'
require 'Phrase/models/translation_update_parameters'
require 'Phrase/models/translation_verify_parameters'
require 'Phrase/models/translation_version'
require 'Phrase/models/translation_version_with_user'
require 'Phrase/models/translation_version_with_user1'
require 'Phrase/models/translations_by_key_parameters'
require 'Phrase/models/translations_by_locale_parameters'
require 'Phrase/models/translations_exclude_parameters'
require 'Phrase/models/translations_include_parameters'
require 'Phrase/models/translations_list_parameters'
require 'Phrase/models/translations_review_parameters'
require 'Phrase/models/translations_search_parameters'
require 'Phrase/models/translations_unverify_parameters'
require 'Phrase/models/translations_verify_parameters'
require 'Phrase/models/upload'
require 'Phrase/models/upload_create_parameters'
require 'Phrase/models/upload_show_parameters'
require 'Phrase/models/upload_summary'
require 'Phrase/models/uploads_list_parameters'
require 'Phrase/models/user'
require 'Phrase/models/user_preview'
require 'Phrase/models/version_show_parameters'
require 'Phrase/models/versions_list_parameters'
require 'Phrase/models/webhook'
require 'Phrase/models/webhook_create_parameters'
require 'Phrase/models/webhook_update_parameters'

# APIs
require 'Phrase/api/accounts_api'
require 'Phrase/api/authorizations_api'
require 'Phrase/api/bitbucket_sync_api'
require 'Phrase/api/blacklisted_keys_api'
require 'Phrase/api/branches_api'
require 'Phrase/api/comments_api'
require 'Phrase/api/distributions_api'
require 'Phrase/api/formats_api'
require 'Phrase/api/git_lab_sync_api'
require 'Phrase/api/glossary_api'
require 'Phrase/api/glossary_term_translations_api'
require 'Phrase/api/glossary_terms_api'
require 'Phrase/api/invitations_api'
require 'Phrase/api/job_locales_api'
require 'Phrase/api/jobs_api'
require 'Phrase/api/keys_api'
require 'Phrase/api/locales_api'
require 'Phrase/api/members_api'
require 'Phrase/api/orders_api'
require 'Phrase/api/projects_api'
require 'Phrase/api/releases_api'
require 'Phrase/api/screenshot_markers_api'
require 'Phrase/api/screenshots_api'
require 'Phrase/api/spaces_api'
require 'Phrase/api/style_guides_api'
require 'Phrase/api/tags_api'
require 'Phrase/api/translations_api'
require 'Phrase/api/uploads_api'
require 'Phrase/api/users_api'
require 'Phrase/api/versions_history_api'
require 'Phrase/api/webhooks_api'

module Phrase
  class Response
    attr_reader :data

    def initialize(data, headers)
      @data = data
      @paginated = false
      @next_page = nil

      link_headers = headers["link"]
      if link_headers
        @paginated = true
        parsed_links = LinkHeaderParser.parse(link_headers, base: 'https://api.phrase.com').by_relation_type
        next_page_link = parsed_links[:next]&.first
        if next_page_link
          @next_page = CGI.parse(URI.parse(next_page_link.target_uri).query)["page"]&.first&.to_i
        end
      end
    end

    def method_missing(method, *args, &block)
      if data.respond_to?(method)
        data.send(method, *args, &block)
      else
        super
      end
    end

    def next_page
      @next_page
    end

    def next_page?
      paginated? && !next_page.nil?
    end

    def paginated?
      @paginated
    end
  end


  class << self
    # Customize default settings for the SDK using block.
    #   Phrase.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
