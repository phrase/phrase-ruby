require 'link-header-parser'

# Common files
require 'Phrase/api_client'
require 'Phrase/api_error'
require 'Phrase/version'
require 'Phrase/configuration'

# Models
require 'Phrase/models/account'
require 'Phrase/models/affected_count'
require 'Phrase/models/affected_resources'
require 'Phrase/models/authorization'
require 'Phrase/models/authorization_create'
require 'Phrase/models/authorization_update'
require 'Phrase/models/bitbucket_sync'
require 'Phrase/models/bitbucket_sync_export'
require 'Phrase/models/bitbucket_sync_export_response'
require 'Phrase/models/bitbucket_sync_import'
require 'Phrase/models/bitbucket_syncs_list'
require 'Phrase/models/blacklisted_key'
require 'Phrase/models/blacklisted_key_create'
require 'Phrase/models/blacklisted_key_update'
require 'Phrase/models/branch'
require 'Phrase/models/branch_compare'
require 'Phrase/models/branch_create'
require 'Phrase/models/branch_merge'
require 'Phrase/models/branch_update'
require 'Phrase/models/comment'
require 'Phrase/models/comment_create'
require 'Phrase/models/comment_delete'
require 'Phrase/models/comment_mark_check'
require 'Phrase/models/comment_mark_read'
require 'Phrase/models/comment_mark_unread'
require 'Phrase/models/comment_show'
require 'Phrase/models/comment_update'
require 'Phrase/models/comments_list'
require 'Phrase/models/distribution'
require 'Phrase/models/distribution_create'
require 'Phrase/models/distribution_preview'
require 'Phrase/models/distribution_update'
require 'Phrase/models/errors'
require 'Phrase/models/errors_errors'
require 'Phrase/models/format'
require 'Phrase/models/gitlab_sync'
require 'Phrase/models/gitlab_sync_delete'
require 'Phrase/models/gitlab_sync_export'
require 'Phrase/models/gitlab_sync_export1'
require 'Phrase/models/gitlab_sync_history'
require 'Phrase/models/gitlab_sync_history1'
require 'Phrase/models/gitlab_sync_import'
require 'Phrase/models/gitlab_sync_list'
require 'Phrase/models/gitlab_sync_show'
require 'Phrase/models/gitlab_sync_update'
require 'Phrase/models/glossary'
require 'Phrase/models/glossary_create'
require 'Phrase/models/glossary_term'
require 'Phrase/models/glossary_term_create'
require 'Phrase/models/glossary_term_translation'
require 'Phrase/models/glossary_term_translation_create'
require 'Phrase/models/glossary_term_translation_update'
require 'Phrase/models/glossary_term_update'
require 'Phrase/models/glossary_update'
require 'Phrase/models/invitation'
require 'Phrase/models/invitation_create'
require 'Phrase/models/invitation_update'
require 'Phrase/models/job'
require 'Phrase/models/job_complete'
require 'Phrase/models/job_create'
require 'Phrase/models/job_delete'
require 'Phrase/models/job_keys_create'
require 'Phrase/models/job_keys_delete'
require 'Phrase/models/job_locale'
require 'Phrase/models/job_locale_complete'
require 'Phrase/models/job_locale_delete'
require 'Phrase/models/job_locale_reopen'
require 'Phrase/models/job_locale_show'
require 'Phrase/models/job_locale_update'
require 'Phrase/models/job_locales_create'
require 'Phrase/models/job_locales_list'
require 'Phrase/models/job_preview'
require 'Phrase/models/job_reopen'
require 'Phrase/models/job_show'
require 'Phrase/models/job_start'
require 'Phrase/models/job_update'
require 'Phrase/models/jobs_list'
require 'Phrase/models/key_create'
require 'Phrase/models/key_delete'
require 'Phrase/models/key_preview'
require 'Phrase/models/key_show'
require 'Phrase/models/key_update'
require 'Phrase/models/keys_delete'
require 'Phrase/models/keys_list'
require 'Phrase/models/keys_search'
require 'Phrase/models/keys_tag'
require 'Phrase/models/keys_untag'
require 'Phrase/models/locale'
require 'Phrase/models/locale_create'
require 'Phrase/models/locale_delete'
require 'Phrase/models/locale_download'
require 'Phrase/models/locale_preview'
require 'Phrase/models/locale_show'
require 'Phrase/models/locale_update'
require 'Phrase/models/locales_list'
require 'Phrase/models/member'
require 'Phrase/models/member_update'
require 'Phrase/models/order_confirm'
require 'Phrase/models/order_create'
require 'Phrase/models/order_delete'
require 'Phrase/models/order_show'
require 'Phrase/models/orders_list'
require 'Phrase/models/project'
require 'Phrase/models/project_create'
require 'Phrase/models/project_short'
require 'Phrase/models/project_update'
require 'Phrase/models/release'
require 'Phrase/models/release_create'
require 'Phrase/models/release_preview'
require 'Phrase/models/release_update'
require 'Phrase/models/screenshot'
require 'Phrase/models/screenshot_create'
require 'Phrase/models/screenshot_marker'
require 'Phrase/models/screenshot_marker_create'
require 'Phrase/models/screenshot_marker_update'
require 'Phrase/models/screenshot_update'
require 'Phrase/models/space'
require 'Phrase/models/space_create'
require 'Phrase/models/space_update'
require 'Phrase/models/spaces_projects_create'
require 'Phrase/models/styleguide'
require 'Phrase/models/styleguide_create'
require 'Phrase/models/styleguide_preview'
require 'Phrase/models/styleguide_update'
require 'Phrase/models/tag'
require 'Phrase/models/tag_create'
require 'Phrase/models/tag_delete'
require 'Phrase/models/tag_show'
require 'Phrase/models/tags_list'
require 'Phrase/models/translation'
require 'Phrase/models/translation_create'
require 'Phrase/models/translation_exclude'
require 'Phrase/models/translation_include'
require 'Phrase/models/translation_key'
require 'Phrase/models/translation_order'
require 'Phrase/models/translation_review'
require 'Phrase/models/translation_show'
require 'Phrase/models/translation_unverify'
require 'Phrase/models/translation_update'
require 'Phrase/models/translation_verify'
require 'Phrase/models/translation_version'
require 'Phrase/models/translations_by_key'
require 'Phrase/models/translations_by_locale'
require 'Phrase/models/translations_exclude'
require 'Phrase/models/translations_include'
require 'Phrase/models/translations_list'
require 'Phrase/models/translations_review'
require 'Phrase/models/translations_search'
require 'Phrase/models/translations_unverify'
require 'Phrase/models/translations_verify'
require 'Phrase/models/upload'
require 'Phrase/models/upload_create'
require 'Phrase/models/upload_show'
require 'Phrase/models/upload_summary'
require 'Phrase/models/uploads_list'
require 'Phrase/models/user'
require 'Phrase/models/user_preview'
require 'Phrase/models/version_show'
require 'Phrase/models/versions_list'
require 'Phrase/models/webhook'
require 'Phrase/models/webhook_create'
require 'Phrase/models/webhook_update'

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
