# phrase

Phrase - the Ruby gem for the Phrase API Reference

Phrase is a translation management platform for software projects. You can collaborate on language file translation with your team or order translations through our platform. The API allows you to import locale files, download locale files, tag keys or interact in other ways with the localization data stored in Phrase for your account.

## API Endpoint

<div class=\"resource__code--outer\">
  <div class=\"code-section\">
    <pre><code>https://api.phrase.com/v2/</code></pre>
  </div>
</div>

The API is only accessible via HTTPS, the base URL is <code>https://api.phrase.com/</code>, and the current version is <code>v2</code> which results in the base URL for all requests: <code>https://api.phrase.com/v2/</code>.


## Usage

[curl](http://curl.haxx.se/) is used primarily to send requests to Phrase in the examples. On most you'll find a second variant using the [Phrase API v2 client](https://phrase.com/cli/) that might be more convenient to handle. For further information check its [documentation](https://help.phrase.com/help/phrase-in-your-terminal).


## Use of HTTP Verbs

Phrase API v2 tries to use the appropriate HTTP verb for accessing each endpoint according to REST specification where possible:

<div class=\"table-responsive\">
  <table class=\"basic-table\">
    <thead>
      <tr class=\"basic-table__row basic-table__row--header\">
        <th class=\"basic-table__cell basic-table__cell--header\">Verb</th>
        <th class=\"basic-table__cell basic-table__cell--header\">Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class=\"basic-table__cell\">GET</td>
        <td class=\"basic-table__cell\">Retrieve one or multiple resources</td>
      </tr>
      <tr>
        <td class=\"basic-table__cell\">POST</td>
        <td class=\"basic-table__cell\">Create a resource</td>
      </tr>
      <tr>
        <td class=\"basic-table__cell\">PUT</td>
        <td class=\"basic-table__cell\">Update a resource</td>
      </tr>
      <tr>
        <td class=\"basic-table__cell\">PATCH</td>
        <td class=\"basic-table__cell\">Update a resource (partially)</td>
      </tr>
      <tr>
        <td class=\"basic-table__cell\">DELETE</td>
        <td class=\"basic-table__cell\">Delete a resource</td>
      </tr>
    </tbody>
  </table>
</div>


## Identification via User-Agent

You must include the User-Agent header with the name of your application or project. It might be a good idea to include some sort of contact information  as well, so that we can get in touch if necessary (e.g. to warn you about Rate-Limiting or badly formed requests). Examples of excellent User-Agent headers:

<pre><code>User-Agent: Frederiks Mobile App (frederik@phrase.com)
User-Agent: ACME Inc Python Client (http://example.com/contact)</code></pre>

If you don't send this header, you will receive a response with 400 Bad Request.


## Lists

When you request a list of resources, the API will typically only return an array of resources including their most important attributes. For a detailed representation of the resource you should request its detailed representation.

Lists are usually [paginated](#pagination).


## Parameters

Many endpoints support additional parameters, e.g. for pagination. When passing them in a GET request you can send them as HTTP query string parameters:

<pre><code>$ curl -u EMAIL_OR_ACCESS_TOKEN \"https://api.phrase.com/v2/projects?page=2\"</code></pre>

When performing a POST, PUT, PATCH or DELETE request, we recommend sending parameters that are not already included in the URL, as JSON body:

<pre><code>$ curl -H 'Content-Type: application/json' -d '{\"name\":\"My new project\"}' -u EMAIL_OR_ACCESS_TOKEN https://api.phrase.com/v2/projects</code></pre>

Encoding parameters as JSON means better support for types (boolean, integer) and usually better readability. Don't forget to set the correct Content-Type for your request.

*The Content-Type header is omitted in some of the following examples for better readbility.*


## Errors


### Request Errors

If a request contains invalid JSON or is missing a required parameter (besides resource attributes), the status `400 Bad Request` is returned:

<pre><code>{
  \"message\": \"JSON could not be parsed\"
}</code></pre>


### Validation Errors

When the validation for a resource fails, the status `422 Unprocessable Entity` is returned, along with information on the affected fields:

<pre><code>{
  \"message\": \"Validation Failed\",
  \"errors\": [
    {
      \"resource\": \"Project\",
      \"field\": \"name\",
      \"message\": \"can't be blank\"
    }
  ]
}</code></pre>


## Date Format

Times and dates are returned and expected in [ISO 8601](http://en.wikipedia.org/wiki/ISO_8601) date format:

<pre><code>YYYY-MM-DDTHH:MM:SSZ</code></pre>

Instead of 'Z' for UTC time zone you can specify your time zone's locale offset using the following notation:

<pre><code>YYYY-MM-DDTHH:MM:SS¬±hh:mm</code></pre>

Example for CET (1 hour behind UTC):

<pre><code>2015-03-31T13:00+01:00</code></pre>

Please note that in HTTP headers, we will use the appropriate recommended date formats instead of ISO 8601.


## Authentication

<div class=\"alert alert-info\">For more detailed information on authentication, check out the <a href=\"#authentication\">API v2 Authentication Guide</a>.</div>

There are two different ways to authenticate when performing API requests:

* E-Mail and password
* Oauth Access Token


### E-Mail and password

To get started easily, you can use HTTP Basic authentication with your email and password:

<pre><code>$ curl -u username:password \"https://api.phrase.com/v2/projects\"</code></pre>


### OAuth via Access Tokens

You can create and manage access tokens in your [profile settings](https://app.phrase.com/settings/oauth_access_tokens) in Translation Center or via the [Authorizations API](#authorizations).

Simply pass the access token as the username of your request:

<pre><code>$ curl -u ACCESS_TOKEN: \"https://api.phrase.com/v2/projects\"</code></pre>

or send the access token via the `Authorization` header field:

<pre><code>$ curl -H \"Authorization: token ACCESS_TOKEN\" https://api.phrase.com/v2/projects</code></pre>

For more detailed information on authentication, check out the <a href=\"#authentication\">API v2 Authentication Guide</a>.

#### Send via parameter

As JSONP (and other) requests cannot send HTTP Basic Auth credentials, a special query parameter `access_token` can be used:

<pre><code>curl \"https://api.phrase.com/v2/projects?access_token=ACCESS_TOKEN\"</code></pre>

You should only use this transport method if sending the authentication via header or Basic authentication is not possible.

### Two-Factor-Authentication

Users with Two-Factor-Authentication enabled have to send a valid token along their request with certain authentication methods (such as Basic authentication). The necessity of a Two-Factor-Authentication token is indicated by the `X-PhraseApp-OTP: required; :MFA-type` header in the response. The `:MFA-type`field indicates the source of the token, e.g. `app` (refers to your Authenticator application):

<pre><code>X-PhraseApp-OTP: required; app</code></pre>

To provide a Two-Factor-Authentication token you can simply send it in the header of the request:

<pre><code>curl -H \"X-PhraseApp-OTP: MFA-TOKEN\" -u EMAIL https://api.phrase.com/v2/projects</code></pre>

Since Two-Factor-Authentication tokens usually expire quickly, we recommend using an alternative authentication method such as OAuth access tokens.

### Multiple Accounts

Some endpoints require the account ID to be specified if the authenticated user is a member of multiple accounts. You can find the eight-digit account ID inside <a href=\"https://app.phrase.com/\" target=\"_blank\">Translation Center</a> by switching to the desired account and then visiting the account details page. If required, you can specify the account just like a normal parameter within the request.

## Pagination

Endpoints that return a list or resources will usually return paginated results and include 25 items by default. To access further pages, use the `page` parameter:

<pre><code>$ curl -u EMAIL_OR_ACCESS_TOKEN \"https://api.phrase.com/v2/projects?page=2\"</code></pre>

Some endpoints also allow a custom page size by using the `per_page` parameter:

<pre><code>$ curl -u EMAIL_OR_ACCESS_TOKEN \"https://api.phrase.com/v2/projects?page=2&per_page=50\"</code></pre>

Unless specified otherwise in the description of the respective endpoint, `per_page` allows you to specify a page size up to 100 items.


## Link-Headers

We provide you with pagination URLs in the [Link Header field](http://tools.ietf.org/html/rfc5988). Make use of this information to avoid building pagination URLs yourself.

<pre><code>Link: <https://api.phrase.com/v2/projects?page=1>; rel=\"first\", <https://api.phrase.com/v2/projects?page=3>; rel=\"prev\", <https://api.phrase.com/v2/projects?page=5>; rel=\"next\", <https://api.phrase.com/v2/projects?page=9>; rel=\"last\"</code></pre>

Possible `rel` values are:

<div class=\"table-responsive\">
  <table class=\"basic-table\">
    <thead>
      <tr class=\"basic-table__row basic-table__row--header\">
        <th class=\"basic-table__cell basic-table__cell--header\">Value</th>
        <th class=\"basic-table__cell basic-table__cell--header\">Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class=\"basic-table__cell\">next</td>
        <td class=\"basic-table__cell\">URL of the next page of results</td>
      </tr>
      <tr>
        <td class=\"basic-table__cell\">last</td>
        <td class=\"basic-table__cell\">URL of the last page of results</td>
      </tr>
      <tr>
        <td class=\"basic-table__cell\">first</td>
        <td class=\"basic-table__cell\">URL of the first page of results</td>
      </tr>
      <tr>
        <td class=\"basic-table__cell\">prev</td>
        <td class=\"basic-table__cell\">URL of the previous page of results</td>
      </tr>
    </tbody>
  </table>
</div>

## Rate Limiting

All API endpoints are subject to rate limiting to ensure good performance for all customers. The rate limit is calculated per user:

* 1000 requests per 5 minutes
* 4 concurrent (parallel) requests

For your convenience we send information on the current rate limit within the response headers:

<div class=\"table-responsive\">
  <table class=\"basic-table\">
    <thead>
      <tr class=\"basic-table__row basic-table__row--header\">
        <th class=\"basic-table__cell basic-table__cell--header\">Header</th>
        <th class=\"basic-table__cell basic-table__cell--header\">Description</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td class=\"basic-table__cell\" style=\"white-space: nowrap;\"><code>X-Rate-Limit-Limit</code></td>
        <td class=\"basic-table__cell\">Number of max requests allowed in the current time period</td>
      </tr>
      <tr>
        <td class=\"basic-table__cell\" style=\"white-space: nowrap;\"><code>X-Rate-Limit-Remaining</code></td>
        <td class=\"basic-table__cell\">Number of remaining requests in the current time period</td>
      </tr>
      <tr>
        <td class=\"basic-table__cell\" style=\"white-space: nowrap;\"><code>X-Rate-Limit-Reset</code></td>
        <td class=\"basic-table__cell\">Timestamp of end of current time period as UNIX timestamp</td>
      </tr>
    </tbody>
  </table>
</div>

If you should run into the rate limit, you will receive the HTTP status code `429: Too many requests`.

If you should need higher rate limits, [contact us](https://phrase.com/contact).


## Conditional GET requests / HTTP Caching

<div class=\"alert alert-info\"><p><strong>Note:</strong> Conditional GET requests are currently only supported for <a href=\"#locales_download\">locales#download</a> and <a href=\"#translations_index\">translations#index</a></p></div>

We will return an ETag or Last-Modified header with most GET requests. When you request a resource we recommend to store this value and submit them on subsequent requests as `If-Modified-Since` and `If-None-Match` headers. If the resource has not changed in the meantime, we will return the status `304 Not Modified` instead of rendering and returning the resource again. In most cases this is less time-consuming and makes your application/integration faster.

Please note that all conditional requests that return a response with status 304 don't count against your rate limits.

<pre><code>$ curl -i -u EMAIL_OR_ACCESS_TOKEN \"https://api.phrase.com/v2/projects/1234abcd1234abcdefefabcd1234efab/locales/en/download\"
HTTP/1.1 200 OK
ETag: \"abcd1234abcdefefabcd1234efab1234\"
Last-Modified: Wed, 28 Jan 2015 15:31:30 UTC
Status: 200 OK

$ curl -i -u EMAIL_OR_ACCESS_TOKEN \"https://api.phrase.com/v2/projects/1234abcd1234abcdefefabcd1234efab/locales/en/download\" -H 'If-None-Match: \"abcd1234abcdefefabcd1234efab1234\"'
HTTP/1.1 304 Not Modified
ETag: \"abcd1234abcdefefabcd1234efab1234\"
Last-Modified: Wed, 28 Jan 2015 15:31:30 UTC
Status: 304 Not Modified

$ curl -i -u EMAIL_OR_ACCESS_TOKEN \"https://api.phrase.com/v2/projects/1234abcd1234abcdefefabcd1234efab/locales/en/download\" -H \"If-Modified-Since: Wed, 28 Jan 2015 15:31:30 UTC\"
HTTP/1.1 304 Not Modified
Last-Modified: Wed, 28 Jan 2015 15:31:30 UTC
Status: 304 Not Modified</code></pre>


## JSONP

The Phrase API supports [JSONP](http://en.wikipedia.org/wiki/JSONP) for all GET requests in order to deal with cross-domain request issues. Just send a `?callback` parameter along with the request to specify the Javascript function name to be called with the response content:

<pre><code>$ curl \"https://api.phrase.com/v2/projects?callback=myFunction\"</code></pre>

The response will include the normal output for that endpoint, along with a `meta` section including header data:

<pre><code>myFunction({
  {
    \"meta\": {
      \"status\": 200,
      ...
    },
    \"data\": [
      {
        \"id\": \"1234abcd1234abc1234abcd1234abc\"
        ...
      }
    ]
  }
});</code></pre>

To authenticate a JSONP request, you can send a valid [access token](#authentication) as the `?access_token` parameter along the request:

<pre><code>$ curl \"https://api.phrase.com/v2/projects?callback=myFunction&access_token=ACCESS-TOKEN\"</code></pre>


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 2.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://developers.phrase.com/api/](https://developers.phrase.com/api/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build phrase.gemspec
```

Then either install the gem locally:

```shell
gem install ./phrase-1.0.0.gem
```

(for development, run `gem install --dev ./phrase-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'phrase', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'phrase', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'phrase'

# Setup authorization
Phrase.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'

  # Or configure API key authorization: Token
  config.api_key['Authorization'] = 'YOUR API KEY'
  config.api_key_prefix['Authorization'] = 'token'
end

api_instance = Phrase::AccountsApi.new
id = 'id_example' # String | ID
opts = {
  x_phrase_app_otp: 'x_phrase_app_otp_example' # String | Two-Factor-Authentication token (optional)
}

begin
  #Get a single account
  result = api_instance.account_show(id, opts)
  pp result
  pp result.next_page?
  pp result.next_page
rescue Phrase::ApiError => e
  puts "Exception when calling AccountsApi->account_show: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.phrase.com/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Phrase::AccountsApi* | [**account_show**](docs/AccountsApi.md#account_show) | **GET** /accounts/{id} | Get a single account
*Phrase::AccountsApi* | [**accounts_list**](docs/AccountsApi.md#accounts_list) | **GET** /accounts | List accounts
*Phrase::AuthorizationsApi* | [**authorization_create**](docs/AuthorizationsApi.md#authorization_create) | **POST** /authorizations | Create an authorization
*Phrase::AuthorizationsApi* | [**authorization_delete**](docs/AuthorizationsApi.md#authorization_delete) | **DELETE** /authorizations/{id} | Delete an authorization
*Phrase::AuthorizationsApi* | [**authorization_show**](docs/AuthorizationsApi.md#authorization_show) | **GET** /authorizations/{id} | Get a single authorization
*Phrase::AuthorizationsApi* | [**authorization_update**](docs/AuthorizationsApi.md#authorization_update) | **PATCH** /authorizations/{id} | Update an authorization
*Phrase::AuthorizationsApi* | [**authorizations_list**](docs/AuthorizationsApi.md#authorizations_list) | **GET** /authorizations | List authorizations
*Phrase::BitbucketSyncApi* | [**bitbucket_sync_export**](docs/BitbucketSyncApi.md#bitbucket_sync_export) | **POST** /bitbucket_syncs/{id}/export | Export from Phrase to Bitbucket
*Phrase::BitbucketSyncApi* | [**bitbucket_sync_import**](docs/BitbucketSyncApi.md#bitbucket_sync_import) | **POST** /bitbucket_syncs/{id}/import | Import to Phrase from Bitbucket
*Phrase::BitbucketSyncApi* | [**bitbucket_syncs_list**](docs/BitbucketSyncApi.md#bitbucket_syncs_list) | **GET** /bitbucket_syncs | List Bitbucket syncs
*Phrase::BlacklistedKeysApi* | [**blacklisted_key_create**](docs/BlacklistedKeysApi.md#blacklisted_key_create) | **POST** /projects/{project_id}/blacklisted_keys | Create a blacklisted key
*Phrase::BlacklistedKeysApi* | [**blacklisted_key_delete**](docs/BlacklistedKeysApi.md#blacklisted_key_delete) | **DELETE** /projects/{project_id}/blacklisted_keys/{id} | Delete a blacklisted key
*Phrase::BlacklistedKeysApi* | [**blacklisted_key_show**](docs/BlacklistedKeysApi.md#blacklisted_key_show) | **GET** /projects/{project_id}/blacklisted_keys/{id} | Get a single blacklisted key
*Phrase::BlacklistedKeysApi* | [**blacklisted_key_update**](docs/BlacklistedKeysApi.md#blacklisted_key_update) | **PATCH** /projects/{project_id}/blacklisted_keys/{id} | Update a blacklisted key
*Phrase::BlacklistedKeysApi* | [**blacklisted_keys_list**](docs/BlacklistedKeysApi.md#blacklisted_keys_list) | **GET** /projects/{project_id}/blacklisted_keys | List blacklisted keys
*Phrase::BranchesApi* | [**branch_compare**](docs/BranchesApi.md#branch_compare) | **GET** /projects/{project_id}/branches/{name}/compare | Compare branches
*Phrase::BranchesApi* | [**branch_create**](docs/BranchesApi.md#branch_create) | **POST** /projects/{project_id}/branches | Create a branch
*Phrase::BranchesApi* | [**branch_delete**](docs/BranchesApi.md#branch_delete) | **DELETE** /projects/{project_id}/branches/{name} | Delete a branch
*Phrase::BranchesApi* | [**branch_merge**](docs/BranchesApi.md#branch_merge) | **PATCH** /projects/{project_id}/branches/{name}/merge | Merge a branch
*Phrase::BranchesApi* | [**branch_show**](docs/BranchesApi.md#branch_show) | **GET** /projects/{project_id}/branches/{name} | Get a single branch
*Phrase::BranchesApi* | [**branch_update**](docs/BranchesApi.md#branch_update) | **PATCH** /projects/{project_id}/branches/{name} | Update a branch
*Phrase::BranchesApi* | [**branches_list**](docs/BranchesApi.md#branches_list) | **GET** /projects/{project_id}/branches | List branches
*Phrase::CommentsApi* | [**comment_create**](docs/CommentsApi.md#comment_create) | **POST** /projects/{project_id}/keys/{key_id}/comments | Create a comment
*Phrase::CommentsApi* | [**comment_delete**](docs/CommentsApi.md#comment_delete) | **DELETE** /projects/{project_id}/keys/{key_id}/comments/{id} | Delete a comment
*Phrase::CommentsApi* | [**comment_mark_check**](docs/CommentsApi.md#comment_mark_check) | **GET** /projects/{project_id}/keys/{key_id}/comments/{id}/read | Check if comment is read
*Phrase::CommentsApi* | [**comment_mark_read**](docs/CommentsApi.md#comment_mark_read) | **PATCH** /projects/{project_id}/keys/{key_id}/comments/{id}/read | Mark a comment as read
*Phrase::CommentsApi* | [**comment_mark_unread**](docs/CommentsApi.md#comment_mark_unread) | **DELETE** /projects/{project_id}/keys/{key_id}/comments/{id}/read | Mark a comment as unread
*Phrase::CommentsApi* | [**comment_show**](docs/CommentsApi.md#comment_show) | **GET** /projects/{project_id}/keys/{key_id}/comments/{id} | Get a single comment
*Phrase::CommentsApi* | [**comment_update**](docs/CommentsApi.md#comment_update) | **PATCH** /projects/{project_id}/keys/{key_id}/comments/{id} | Update a comment
*Phrase::CommentsApi* | [**comments_list**](docs/CommentsApi.md#comments_list) | **GET** /projects/{project_id}/keys/{key_id}/comments | List comments
*Phrase::DistributionsApi* | [**distribution_create**](docs/DistributionsApi.md#distribution_create) | **POST** /accounts/{account_id}/distributions | Create a distribution
*Phrase::DistributionsApi* | [**distribution_delete**](docs/DistributionsApi.md#distribution_delete) | **DELETE** /accounts/{account_id}/distributions/{id} | Delete a distribution
*Phrase::DistributionsApi* | [**distribution_show**](docs/DistributionsApi.md#distribution_show) | **GET** /accounts/{account_id}/distributions/{id} | Get a single distribution
*Phrase::DistributionsApi* | [**distribution_update**](docs/DistributionsApi.md#distribution_update) | **PATCH** /accounts/{account_id}/distributions/{id} | Update a distribution
*Phrase::DistributionsApi* | [**distributions_list**](docs/DistributionsApi.md#distributions_list) | **GET** /accounts/{account_id}/distributions | List distributions
*Phrase::FormatsApi* | [**formats_list**](docs/FormatsApi.md#formats_list) | **GET** /formats | List formats
*Phrase::GitLabSyncApi* | [**gitlab_sync_delete**](docs/GitLabSyncApi.md#gitlab_sync_delete) | **DELETE** /gitlab_syncs/{id} | Delete single Sync Setting
*Phrase::GitLabSyncApi* | [**gitlab_sync_export**](docs/GitLabSyncApi.md#gitlab_sync_export) | **POST** /gitlab_syncs/{gitlab_sync_id}/export | Export from Phrase to GitLab
*Phrase::GitLabSyncApi* | [**gitlab_sync_history**](docs/GitLabSyncApi.md#gitlab_sync_history) | **GET** /gitlab_syncs/{gitlab_sync_id}/history | History of single Sync Setting
*Phrase::GitLabSyncApi* | [**gitlab_sync_import**](docs/GitLabSyncApi.md#gitlab_sync_import) | **POST** /gitlab_syncs/{gitlab_sync_id}/import | Import from GitLab to Phrase
*Phrase::GitLabSyncApi* | [**gitlab_sync_list**](docs/GitLabSyncApi.md#gitlab_sync_list) | **GET** /gitlab_syncs | List GitLab syncs
*Phrase::GitLabSyncApi* | [**gitlab_sync_show**](docs/GitLabSyncApi.md#gitlab_sync_show) | **GET** /gitlab_syncs/{id} | Get single Sync Setting
*Phrase::GitLabSyncApi* | [**gitlab_sync_update**](docs/GitLabSyncApi.md#gitlab_sync_update) | **PUT** /gitlab_syncs/{id} | Update single Sync Setting
*Phrase::GlossaryApi* | [**glossaries_list**](docs/GlossaryApi.md#glossaries_list) | **GET** /accounts/{account_id}/glossaries | List glossaries
*Phrase::GlossaryApi* | [**glossary_create**](docs/GlossaryApi.md#glossary_create) | **POST** /accounts/{account_id}/glossaries | Create a glossary
*Phrase::GlossaryApi* | [**glossary_delete**](docs/GlossaryApi.md#glossary_delete) | **DELETE** /accounts/{account_id}/glossaries/{id} | Delete a glossary
*Phrase::GlossaryApi* | [**glossary_show**](docs/GlossaryApi.md#glossary_show) | **GET** /accounts/{account_id}/glossaries/{id} | Get a single glossary
*Phrase::GlossaryApi* | [**glossary_update**](docs/GlossaryApi.md#glossary_update) | **PATCH** /accounts/{account_id}/glossaries/{id} | Update a glossary
*Phrase::GlossaryTermTranslationsApi* | [**glossary_term_translation_create**](docs/GlossaryTermTranslationsApi.md#glossary_term_translation_create) | **POST** /accounts/{account_id}/glossaries/{glossary_id}/terms/{term_id}/translations | Create a glossary term translation
*Phrase::GlossaryTermTranslationsApi* | [**glossary_term_translation_delete**](docs/GlossaryTermTranslationsApi.md#glossary_term_translation_delete) | **DELETE** /accounts/{account_id}/glossaries/{glossary_id}/terms/{term_id}/translations/{id} | Delete a glossary term translation
*Phrase::GlossaryTermTranslationsApi* | [**glossary_term_translation_update**](docs/GlossaryTermTranslationsApi.md#glossary_term_translation_update) | **PATCH** /accounts/{account_id}/glossaries/{glossary_id}/terms/{term_id}/translations/{id} | Update a glossary term translation
*Phrase::GlossaryTermsApi* | [**glossary_term_create**](docs/GlossaryTermsApi.md#glossary_term_create) | **POST** /accounts/{account_id}/glossaries/{glossary_id}/terms | Create a glossary term
*Phrase::GlossaryTermsApi* | [**glossary_term_delete**](docs/GlossaryTermsApi.md#glossary_term_delete) | **DELETE** /accounts/{account_id}/glossaries/{glossary_id}/terms/{id} | Delete a glossary term
*Phrase::GlossaryTermsApi* | [**glossary_term_show**](docs/GlossaryTermsApi.md#glossary_term_show) | **GET** /accounts/{account_id}/glossaries/{glossary_id}/terms/{id} | Get a single glossary term
*Phrase::GlossaryTermsApi* | [**glossary_term_update**](docs/GlossaryTermsApi.md#glossary_term_update) | **PATCH** /accounts/{account_id}/glossaries/{glossary_id}/terms/{id} | Update a glossary term
*Phrase::GlossaryTermsApi* | [**glossary_terms_list**](docs/GlossaryTermsApi.md#glossary_terms_list) | **GET** /accounts/{account_id}/glossaries/{glossary_id}/terms | List glossary terms
*Phrase::InvitationsApi* | [**invitation_create**](docs/InvitationsApi.md#invitation_create) | **POST** /accounts/{account_id}/invitations | Create a new invitation
*Phrase::InvitationsApi* | [**invitation_delete**](docs/InvitationsApi.md#invitation_delete) | **DELETE** /accounts/{account_id}/invitations/{id} | Delete an invitation
*Phrase::InvitationsApi* | [**invitation_resend**](docs/InvitationsApi.md#invitation_resend) | **POST** /accounts/{account_id}/invitations/{id}/resend | Resend an invitation
*Phrase::InvitationsApi* | [**invitation_show**](docs/InvitationsApi.md#invitation_show) | **GET** /accounts/{account_id}/invitations/{id} | Get a single invitation
*Phrase::InvitationsApi* | [**invitation_update**](docs/InvitationsApi.md#invitation_update) | **PATCH** /accounts/{account_id}/invitations/{id} | Update an invitation
*Phrase::InvitationsApi* | [**invitations_list**](docs/InvitationsApi.md#invitations_list) | **GET** /accounts/{account_id}/invitations | List invitations
*Phrase::JobLocalesApi* | [**job_locale_complete**](docs/JobLocalesApi.md#job_locale_complete) | **POST** /projects/{project_id}/jobs/{job_id}/locales/{id}/complete | Complete a job locale
*Phrase::JobLocalesApi* | [**job_locale_delete**](docs/JobLocalesApi.md#job_locale_delete) | **DELETE** /projects/{project_id}/jobs/{job_id}/locales/{id} | Delete a job locale
*Phrase::JobLocalesApi* | [**job_locale_reopen**](docs/JobLocalesApi.md#job_locale_reopen) | **POST** /projects/{project_id}/jobs/{job_id}/locales/{id}/reopen | Reopen a job locale
*Phrase::JobLocalesApi* | [**job_locale_show**](docs/JobLocalesApi.md#job_locale_show) | **GET** /projects/{project_id}/jobs/{job_id}/locale/{id} | Get a single job locale
*Phrase::JobLocalesApi* | [**job_locale_update**](docs/JobLocalesApi.md#job_locale_update) | **PATCH** /projects/{project_id}/jobs/{job_id}/locales/{id} | Update a job locale
*Phrase::JobLocalesApi* | [**job_locales_create**](docs/JobLocalesApi.md#job_locales_create) | **POST** /projects/{project_id}/jobs/{job_id}/locales | Create a job locale
*Phrase::JobLocalesApi* | [**job_locales_list**](docs/JobLocalesApi.md#job_locales_list) | **GET** /projects/{project_id}/jobs/{job_id}/locales | List job locales
*Phrase::JobsApi* | [**job_complete**](docs/JobsApi.md#job_complete) | **POST** /projects/{project_id}/jobs/{id}/complete | Complete a job
*Phrase::JobsApi* | [**job_create**](docs/JobsApi.md#job_create) | **POST** /projects/{project_id}/jobs | Create a job
*Phrase::JobsApi* | [**job_delete**](docs/JobsApi.md#job_delete) | **DELETE** /projects/{project_id}/jobs/{id} | Delete a job
*Phrase::JobsApi* | [**job_keys_create**](docs/JobsApi.md#job_keys_create) | **POST** /projects/{project_id}/jobs/{id}/keys | Add keys to job
*Phrase::JobsApi* | [**job_keys_delete**](docs/JobsApi.md#job_keys_delete) | **DELETE** /projects/{project_id}/jobs/{id}/keys | Remove keys from job
*Phrase::JobsApi* | [**job_reopen**](docs/JobsApi.md#job_reopen) | **POST** /projects/{project_id}/jobs/{id}/reopen | Reopen a job
*Phrase::JobsApi* | [**job_show**](docs/JobsApi.md#job_show) | **GET** /projects/{project_id}/jobs/{id} | Get a single job
*Phrase::JobsApi* | [**job_start**](docs/JobsApi.md#job_start) | **POST** /projects/{project_id}/jobs/{id}/start | Start a job
*Phrase::JobsApi* | [**job_update**](docs/JobsApi.md#job_update) | **PATCH** /projects/{project_id}/jobs/{id} | Update a job
*Phrase::JobsApi* | [**jobs_list**](docs/JobsApi.md#jobs_list) | **GET** /projects/{project_id}/jobs | List jobs
*Phrase::KeysApi* | [**key_create**](docs/KeysApi.md#key_create) | **POST** /projects/{project_id}/keys | Create a key
*Phrase::KeysApi* | [**key_delete**](docs/KeysApi.md#key_delete) | **DELETE** /projects/{project_id}/keys/{id} | Delete a key
*Phrase::KeysApi* | [**key_show**](docs/KeysApi.md#key_show) | **GET** /projects/{project_id}/keys/{id} | Get a single key
*Phrase::KeysApi* | [**key_update**](docs/KeysApi.md#key_update) | **PATCH** /projects/{project_id}/keys/{id} | Update a key
*Phrase::KeysApi* | [**keys_delete**](docs/KeysApi.md#keys_delete) | **DELETE** /projects/{project_id}/keys | Delete collection of keys
*Phrase::KeysApi* | [**keys_list**](docs/KeysApi.md#keys_list) | **GET** /projects/{project_id}/keys | List keys
*Phrase::KeysApi* | [**keys_search**](docs/KeysApi.md#keys_search) | **POST** /projects/{project_id}/keys/search | Search keys
*Phrase::KeysApi* | [**keys_tag**](docs/KeysApi.md#keys_tag) | **PATCH** /projects/{project_id}/keys/tag | Add tags to collection of keys
*Phrase::KeysApi* | [**keys_untag**](docs/KeysApi.md#keys_untag) | **PATCH** /projects/{project_id}/keys/untag | Remove tags from collection of keys
*Phrase::LocalesApi* | [**locale_create**](docs/LocalesApi.md#locale_create) | **POST** /projects/{project_id}/locales | Create a locale
*Phrase::LocalesApi* | [**locale_delete**](docs/LocalesApi.md#locale_delete) | **DELETE** /projects/{project_id}/locales/{id} | Delete a locale
*Phrase::LocalesApi* | [**locale_download**](docs/LocalesApi.md#locale_download) | **GET** /projects/{project_id}/locales/{id}/download | Download a locale
*Phrase::LocalesApi* | [**locale_show**](docs/LocalesApi.md#locale_show) | **GET** /projects/{project_id}/locales/{id} | Get a single locale
*Phrase::LocalesApi* | [**locale_update**](docs/LocalesApi.md#locale_update) | **PATCH** /projects/{project_id}/locales/{id} | Update a locale
*Phrase::LocalesApi* | [**locales_list**](docs/LocalesApi.md#locales_list) | **GET** /projects/{project_id}/locales | List locales
*Phrase::MembersApi* | [**member_delete**](docs/MembersApi.md#member_delete) | **DELETE** /accounts/{account_id}/members/{id} | Remove a user from the account
*Phrase::MembersApi* | [**member_show**](docs/MembersApi.md#member_show) | **GET** /accounts/{account_id}/members/{id} | Get single member
*Phrase::MembersApi* | [**member_update**](docs/MembersApi.md#member_update) | **PATCH** /accounts/{account_id}/members/{id} | Update a member
*Phrase::MembersApi* | [**members_list**](docs/MembersApi.md#members_list) | **GET** /accounts/{account_id}/members | List members
*Phrase::OrdersApi* | [**order_confirm**](docs/OrdersApi.md#order_confirm) | **PATCH** /projects/{project_id}/orders/{id}/confirm | Confirm an order
*Phrase::OrdersApi* | [**order_create**](docs/OrdersApi.md#order_create) | **POST** /projects/{project_id}/orders | Create a new order
*Phrase::OrdersApi* | [**order_delete**](docs/OrdersApi.md#order_delete) | **DELETE** /projects/{project_id}/orders/{id} | Cancel an order
*Phrase::OrdersApi* | [**order_show**](docs/OrdersApi.md#order_show) | **GET** /projects/{project_id}/orders/{id} | Get a single order
*Phrase::OrdersApi* | [**orders_list**](docs/OrdersApi.md#orders_list) | **GET** /projects/{project_id}/orders | List orders
*Phrase::ProjectsApi* | [**project_create**](docs/ProjectsApi.md#project_create) | **POST** /projects | Create a project
*Phrase::ProjectsApi* | [**project_delete**](docs/ProjectsApi.md#project_delete) | **DELETE** /projects/{id} | Delete a project
*Phrase::ProjectsApi* | [**project_show**](docs/ProjectsApi.md#project_show) | **GET** /projects/{id} | Get a single project
*Phrase::ProjectsApi* | [**project_update**](docs/ProjectsApi.md#project_update) | **PATCH** /projects/{id} | Update a project
*Phrase::ProjectsApi* | [**projects_list**](docs/ProjectsApi.md#projects_list) | **GET** /projects | List projects
*Phrase::ReleasesApi* | [**release_create**](docs/ReleasesApi.md#release_create) | **POST** /accounts/{account_id}/distributions/{distribution_id}/releases | Create a release
*Phrase::ReleasesApi* | [**release_delete**](docs/ReleasesApi.md#release_delete) | **DELETE** /accounts/{account_id}/distributions/{distribution_id}/releases/{id} | Delete a release
*Phrase::ReleasesApi* | [**release_publish**](docs/ReleasesApi.md#release_publish) | **POST** /accounts/{account_id}/distributions/{distribution_id}/releases/{id}/publish | Publish a release
*Phrase::ReleasesApi* | [**release_show**](docs/ReleasesApi.md#release_show) | **GET** /accounts/{account_id}/distributions/{distribution_id}/releases/{id} | Get a single release
*Phrase::ReleasesApi* | [**release_update**](docs/ReleasesApi.md#release_update) | **PATCH** /accounts/{account_id}/distributions/{distribution_id}/releases/{id} | Update a release
*Phrase::ReleasesApi* | [**releases_list**](docs/ReleasesApi.md#releases_list) | **GET** /accounts/{account_id}/distributions/{distribution_id}/releases | List releases
*Phrase::ScreenshotMarkersApi* | [**screenshot_marker_create**](docs/ScreenshotMarkersApi.md#screenshot_marker_create) | **POST** /projects/{project_id}/screenshots/{screenshot_id}/markers | Create a screenshot marker
*Phrase::ScreenshotMarkersApi* | [**screenshot_marker_delete**](docs/ScreenshotMarkersApi.md#screenshot_marker_delete) | **DELETE** /projects/{project_id}/screenshots/{screenshot_id}/markers | Delete a screenshot marker
*Phrase::ScreenshotMarkersApi* | [**screenshot_marker_show**](docs/ScreenshotMarkersApi.md#screenshot_marker_show) | **GET** /projects/{project_id}/screenshots/{screenshot_id}/markers/{id} | Get a single screenshot marker
*Phrase::ScreenshotMarkersApi* | [**screenshot_marker_update**](docs/ScreenshotMarkersApi.md#screenshot_marker_update) | **PATCH** /projects/{project_id}/screenshots/{screenshot_id}/markers | Update a screenshot marker
*Phrase::ScreenshotMarkersApi* | [**screenshot_markers_list**](docs/ScreenshotMarkersApi.md#screenshot_markers_list) | **GET** /projects/{project_id}/screenshots/{id}/markers | List screenshot markers
*Phrase::ScreenshotsApi* | [**screenshot_create**](docs/ScreenshotsApi.md#screenshot_create) | **POST** /projects/{project_id}/screenshots | Create a screenshot
*Phrase::ScreenshotsApi* | [**screenshot_delete**](docs/ScreenshotsApi.md#screenshot_delete) | **DELETE** /projects/{project_id}/screenshots/{id} | Delete a screenshot
*Phrase::ScreenshotsApi* | [**screenshot_show**](docs/ScreenshotsApi.md#screenshot_show) | **GET** /projects/{project_id}/screenshots/{id} | Get a single screenshot
*Phrase::ScreenshotsApi* | [**screenshot_update**](docs/ScreenshotsApi.md#screenshot_update) | **PATCH** /projects/{project_id}/screenshots/{id} | Update a screenshot
*Phrase::ScreenshotsApi* | [**screenshots_list**](docs/ScreenshotsApi.md#screenshots_list) | **GET** /projects/{project_id}/screenshots | List screenshots
*Phrase::SpacesApi* | [**space_create**](docs/SpacesApi.md#space_create) | **POST** /accounts/{account_id}/spaces | Create a Space
*Phrase::SpacesApi* | [**space_delete**](docs/SpacesApi.md#space_delete) | **DELETE** /accounts/{account_id}/spaces/{id} | Delete Space
*Phrase::SpacesApi* | [**space_show**](docs/SpacesApi.md#space_show) | **GET** /accounts/{account_id}/spaces/{id} | Get Space
*Phrase::SpacesApi* | [**space_update**](docs/SpacesApi.md#space_update) | **PATCH** /accounts/{account_id}/spaces/{id} | Update Space
*Phrase::SpacesApi* | [**spaces_list**](docs/SpacesApi.md#spaces_list) | **GET** /accounts/{account_id}/spaces | List Spaces
*Phrase::SpacesApi* | [**spaces_projects_create**](docs/SpacesApi.md#spaces_projects_create) | **POST** /accounts/{account_id}/spaces/{space_id}/projects | Add Project
*Phrase::SpacesApi* | [**spaces_projects_delete**](docs/SpacesApi.md#spaces_projects_delete) | **DELETE** /accounts/{account_id}/spaces/{space_id}/projects/{id} | Remove Project
*Phrase::SpacesApi* | [**spaces_projects_list**](docs/SpacesApi.md#spaces_projects_list) | **GET** /accounts/{account_id}/spaces/{space_id}/projects | List Projects
*Phrase::StyleGuidesApi* | [**styleguide_create**](docs/StyleGuidesApi.md#styleguide_create) | **POST** /projects/{project_id}/styleguides | Create a style guide
*Phrase::StyleGuidesApi* | [**styleguide_delete**](docs/StyleGuidesApi.md#styleguide_delete) | **DELETE** /projects/{project_id}/styleguides/{id} | Delete a style guide
*Phrase::StyleGuidesApi* | [**styleguide_show**](docs/StyleGuidesApi.md#styleguide_show) | **GET** /projects/{project_id}/styleguides/{id} | Get a single style guide
*Phrase::StyleGuidesApi* | [**styleguide_update**](docs/StyleGuidesApi.md#styleguide_update) | **PATCH** /projects/{project_id}/styleguides/{id} | Update a style guide
*Phrase::StyleGuidesApi* | [**styleguides_list**](docs/StyleGuidesApi.md#styleguides_list) | **GET** /projects/{project_id}/styleguides | List style guides
*Phrase::TagsApi* | [**tag_create**](docs/TagsApi.md#tag_create) | **POST** /projects/{project_id}/tags | Create a tag
*Phrase::TagsApi* | [**tag_delete**](docs/TagsApi.md#tag_delete) | **DELETE** /projects/{project_id}/tags/{name} | Delete a tag
*Phrase::TagsApi* | [**tag_show**](docs/TagsApi.md#tag_show) | **GET** /projects/{project_id}/tags/{name} | Get a single tag
*Phrase::TagsApi* | [**tags_list**](docs/TagsApi.md#tags_list) | **GET** /projects/{project_id}/tags | List tags
*Phrase::TranslationsApi* | [**translation_create**](docs/TranslationsApi.md#translation_create) | **POST** /projects/{project_id}/translations | Create a translation
*Phrase::TranslationsApi* | [**translation_exclude**](docs/TranslationsApi.md#translation_exclude) | **PATCH** /projects/{project_id}/translations/{id}/exclude | Exclude a translation from export
*Phrase::TranslationsApi* | [**translation_include**](docs/TranslationsApi.md#translation_include) | **PATCH** /projects/{project_id}/translations/{id}/include | Revoke exclusion of a translation in export
*Phrase::TranslationsApi* | [**translation_review**](docs/TranslationsApi.md#translation_review) | **PATCH** /projects/{project_id}/translations/{id}/review | Review a translation
*Phrase::TranslationsApi* | [**translation_show**](docs/TranslationsApi.md#translation_show) | **GET** /projects/{project_id}/translations/{id} | Get a single translation
*Phrase::TranslationsApi* | [**translation_unverify**](docs/TranslationsApi.md#translation_unverify) | **PATCH** /projects/{project_id}/translations/{id}/unverify | Mark a translation as unverified
*Phrase::TranslationsApi* | [**translation_update**](docs/TranslationsApi.md#translation_update) | **PATCH** /projects/{project_id}/translations/{id} | Update a translation
*Phrase::TranslationsApi* | [**translation_verify**](docs/TranslationsApi.md#translation_verify) | **PATCH** /projects/{project_id}/translations/{id}/verify | Verify a translation
*Phrase::TranslationsApi* | [**translations_by_key**](docs/TranslationsApi.md#translations_by_key) | **GET** /projects/{project_id}/keys/{key_id}/translations | List translations by key
*Phrase::TranslationsApi* | [**translations_by_locale**](docs/TranslationsApi.md#translations_by_locale) | **GET** /projects/{project_id}/locales/{locale_id}/translations | List translations by locale
*Phrase::TranslationsApi* | [**translations_exclude**](docs/TranslationsApi.md#translations_exclude) | **PATCH** /projects/{project_id}/translations/exclude | Set exclude from export flag on translations selected by query
*Phrase::TranslationsApi* | [**translations_include**](docs/TranslationsApi.md#translations_include) | **PATCH** /projects/{project_id}/translations/include | Remove exlude from import flag from translations selected by query
*Phrase::TranslationsApi* | [**translations_list**](docs/TranslationsApi.md#translations_list) | **GET** /projects/{project_id}/translations | List all translations
*Phrase::TranslationsApi* | [**translations_review**](docs/TranslationsApi.md#translations_review) | **PATCH** /projects/{project_id}/translations/review | Review translations selected by query
*Phrase::TranslationsApi* | [**translations_search**](docs/TranslationsApi.md#translations_search) | **POST** /projects/{project_id}/translations/search | Search translations
*Phrase::TranslationsApi* | [**translations_unverify**](docs/TranslationsApi.md#translations_unverify) | **PATCH** /projects/{project_id}/translations/unverify | Mark translations selected by query as unverified
*Phrase::TranslationsApi* | [**translations_verify**](docs/TranslationsApi.md#translations_verify) | **PATCH** /projects/{project_id}/translations/verify | Verify translations selected by query
*Phrase::UploadsApi* | [**upload_create**](docs/UploadsApi.md#upload_create) | **POST** /projects/{project_id}/uploads | Upload a new file
*Phrase::UploadsApi* | [**upload_show**](docs/UploadsApi.md#upload_show) | **GET** /projects/{project_id}/uploads/{id} | View upload details
*Phrase::UploadsApi* | [**uploads_list**](docs/UploadsApi.md#uploads_list) | **GET** /projects/{project_id}/uploads | List uploads
*Phrase::UsersApi* | [**show_user**](docs/UsersApi.md#show_user) | **GET** /user | Show current User
*Phrase::VersionsHistoryApi* | [**version_show**](docs/VersionsHistoryApi.md#version_show) | **GET** /projects/{project_id}/translations/{translation_id}/versions/{id} | Get a single version
*Phrase::VersionsHistoryApi* | [**versions_list**](docs/VersionsHistoryApi.md#versions_list) | **GET** /projects/{project_id}/translations/{translation_id}/versions | List all versions
*Phrase::WebhooksApi* | [**webhook_create**](docs/WebhooksApi.md#webhook_create) | **POST** /projects/{project_id}/webhooks | Create a webhook
*Phrase::WebhooksApi* | [**webhook_delete**](docs/WebhooksApi.md#webhook_delete) | **DELETE** /projects/{project_id}/webhooks/{id} | Delete a webhook
*Phrase::WebhooksApi* | [**webhook_show**](docs/WebhooksApi.md#webhook_show) | **GET** /projects/{project_id}/webhooks/{id} | Get a single webhook
*Phrase::WebhooksApi* | [**webhook_test**](docs/WebhooksApi.md#webhook_test) | **POST** /projects/{project_id}/webhooks/{id}/test | Test a webhook
*Phrase::WebhooksApi* | [**webhook_update**](docs/WebhooksApi.md#webhook_update) | **PATCH** /projects/{project_id}/webhooks/{id} | Update a webhook
*Phrase::WebhooksApi* | [**webhooks_list**](docs/WebhooksApi.md#webhooks_list) | **GET** /projects/{project_id}/webhooks | List webhooks


## Documentation for Models

 - [Phrase::Account](docs/Account.md)
 - [Phrase::AccountDetails](docs/AccountDetails.md)
 - [Phrase::AccountDetails1](docs/AccountDetails1.md)
 - [Phrase::AffectedCount](docs/AffectedCount.md)
 - [Phrase::AffectedResources](docs/AffectedResources.md)
 - [Phrase::Authorization](docs/Authorization.md)
 - [Phrase::AuthorizationCreateParameters](docs/AuthorizationCreateParameters.md)
 - [Phrase::AuthorizationUpdateParameters](docs/AuthorizationUpdateParameters.md)
 - [Phrase::AuthorizationWithToken](docs/AuthorizationWithToken.md)
 - [Phrase::AuthorizationWithToken1](docs/AuthorizationWithToken1.md)
 - [Phrase::BitbucketSync](docs/BitbucketSync.md)
 - [Phrase::BitbucketSyncExportParameters](docs/BitbucketSyncExportParameters.md)
 - [Phrase::BitbucketSyncExportResponse](docs/BitbucketSyncExportResponse.md)
 - [Phrase::BitbucketSyncImportParameters](docs/BitbucketSyncImportParameters.md)
 - [Phrase::BlacklistedKey](docs/BlacklistedKey.md)
 - [Phrase::BlacklistedKeyCreateParameters](docs/BlacklistedKeyCreateParameters.md)
 - [Phrase::BlacklistedKeyUpdateParameters](docs/BlacklistedKeyUpdateParameters.md)
 - [Phrase::Branch](docs/Branch.md)
 - [Phrase::BranchCreateParameters](docs/BranchCreateParameters.md)
 - [Phrase::BranchMergeParameters](docs/BranchMergeParameters.md)
 - [Phrase::BranchUpdateParameters](docs/BranchUpdateParameters.md)
 - [Phrase::Comment](docs/Comment.md)
 - [Phrase::CommentCreateParameters](docs/CommentCreateParameters.md)
 - [Phrase::CommentMarkReadParameters](docs/CommentMarkReadParameters.md)
 - [Phrase::CommentUpdateParameters](docs/CommentUpdateParameters.md)
 - [Phrase::Distribution](docs/Distribution.md)
 - [Phrase::DistributionCreateParameters](docs/DistributionCreateParameters.md)
 - [Phrase::DistributionPreview](docs/DistributionPreview.md)
 - [Phrase::DistributionUpdateParameters](docs/DistributionUpdateParameters.md)
 - [Phrase::Format](docs/Format.md)
 - [Phrase::GitlabSync](docs/GitlabSync.md)
 - [Phrase::GitlabSyncExport](docs/GitlabSyncExport.md)
 - [Phrase::GitlabSyncExportParameters](docs/GitlabSyncExportParameters.md)
 - [Phrase::GitlabSyncHistory](docs/GitlabSyncHistory.md)
 - [Phrase::GitlabSyncImportParameters](docs/GitlabSyncImportParameters.md)
 - [Phrase::Glossary](docs/Glossary.md)
 - [Phrase::GlossaryCreateParameters](docs/GlossaryCreateParameters.md)
 - [Phrase::GlossaryTerm](docs/GlossaryTerm.md)
 - [Phrase::GlossaryTermCreateParameters](docs/GlossaryTermCreateParameters.md)
 - [Phrase::GlossaryTermTranslation](docs/GlossaryTermTranslation.md)
 - [Phrase::GlossaryTermTranslationCreateParameters](docs/GlossaryTermTranslationCreateParameters.md)
 - [Phrase::GlossaryTermTranslationUpdateParameters](docs/GlossaryTermTranslationUpdateParameters.md)
 - [Phrase::GlossaryTermUpdateParameters](docs/GlossaryTermUpdateParameters.md)
 - [Phrase::GlossaryUpdateParameters](docs/GlossaryUpdateParameters.md)
 - [Phrase::Invitation](docs/Invitation.md)
 - [Phrase::InvitationCreateParameters](docs/InvitationCreateParameters.md)
 - [Phrase::InvitationUpdateParameters](docs/InvitationUpdateParameters.md)
 - [Phrase::Job](docs/Job.md)
 - [Phrase::JobCompleteParameters](docs/JobCompleteParameters.md)
 - [Phrase::JobCreateParameters](docs/JobCreateParameters.md)
 - [Phrase::JobDetails](docs/JobDetails.md)
 - [Phrase::JobDetails1](docs/JobDetails1.md)
 - [Phrase::JobKeysCreateParameters](docs/JobKeysCreateParameters.md)
 - [Phrase::JobLocale](docs/JobLocale.md)
 - [Phrase::JobLocaleCompleteParameters](docs/JobLocaleCompleteParameters.md)
 - [Phrase::JobLocaleReopenParameters](docs/JobLocaleReopenParameters.md)
 - [Phrase::JobLocaleUpdateParameters](docs/JobLocaleUpdateParameters.md)
 - [Phrase::JobLocalesCreateParameters](docs/JobLocalesCreateParameters.md)
 - [Phrase::JobPreview](docs/JobPreview.md)
 - [Phrase::JobReopenParameters](docs/JobReopenParameters.md)
 - [Phrase::JobStartParameters](docs/JobStartParameters.md)
 - [Phrase::JobUpdateParameters](docs/JobUpdateParameters.md)
 - [Phrase::KeyCreateParameters](docs/KeyCreateParameters.md)
 - [Phrase::KeyPreview](docs/KeyPreview.md)
 - [Phrase::KeyUpdateParameters](docs/KeyUpdateParameters.md)
 - [Phrase::KeysSearchParameters](docs/KeysSearchParameters.md)
 - [Phrase::KeysTagParameters](docs/KeysTagParameters.md)
 - [Phrase::KeysUntagParameters](docs/KeysUntagParameters.md)
 - [Phrase::Locale](docs/Locale.md)
 - [Phrase::LocaleCreateParameters](docs/LocaleCreateParameters.md)
 - [Phrase::LocaleDetails](docs/LocaleDetails.md)
 - [Phrase::LocaleDetails1](docs/LocaleDetails1.md)
 - [Phrase::LocalePreview](docs/LocalePreview.md)
 - [Phrase::LocaleStatistics](docs/LocaleStatistics.md)
 - [Phrase::LocaleUpdateParameters](docs/LocaleUpdateParameters.md)
 - [Phrase::Member](docs/Member.md)
 - [Phrase::MemberUpdateParameters](docs/MemberUpdateParameters.md)
 - [Phrase::OrderConfirmParameters](docs/OrderConfirmParameters.md)
 - [Phrase::OrderCreateParameters](docs/OrderCreateParameters.md)
 - [Phrase::Project](docs/Project.md)
 - [Phrase::ProjectCreateParameters](docs/ProjectCreateParameters.md)
 - [Phrase::ProjectDetails](docs/ProjectDetails.md)
 - [Phrase::ProjectDetails1](docs/ProjectDetails1.md)
 - [Phrase::ProjectLocales](docs/ProjectLocales.md)
 - [Phrase::ProjectLocales1](docs/ProjectLocales1.md)
 - [Phrase::ProjectShort](docs/ProjectShort.md)
 - [Phrase::ProjectUpdateParameters](docs/ProjectUpdateParameters.md)
 - [Phrase::Release](docs/Release.md)
 - [Phrase::ReleaseCreateParameters](docs/ReleaseCreateParameters.md)
 - [Phrase::ReleasePreview](docs/ReleasePreview.md)
 - [Phrase::ReleaseUpdateParameters](docs/ReleaseUpdateParameters.md)
 - [Phrase::Screenshot](docs/Screenshot.md)
 - [Phrase::ScreenshotCreateParameters](docs/ScreenshotCreateParameters.md)
 - [Phrase::ScreenshotMarker](docs/ScreenshotMarker.md)
 - [Phrase::ScreenshotMarkerCreateParameters](docs/ScreenshotMarkerCreateParameters.md)
 - [Phrase::ScreenshotMarkerUpdateParameters](docs/ScreenshotMarkerUpdateParameters.md)
 - [Phrase::ScreenshotUpdateParameters](docs/ScreenshotUpdateParameters.md)
 - [Phrase::Space](docs/Space.md)
 - [Phrase::SpaceCreateParameters](docs/SpaceCreateParameters.md)
 - [Phrase::SpaceUpdateParameters](docs/SpaceUpdateParameters.md)
 - [Phrase::SpacesProjectsCreateParameters](docs/SpacesProjectsCreateParameters.md)
 - [Phrase::Styleguide](docs/Styleguide.md)
 - [Phrase::StyleguideCreateParameters](docs/StyleguideCreateParameters.md)
 - [Phrase::StyleguideDetails](docs/StyleguideDetails.md)
 - [Phrase::StyleguideDetails1](docs/StyleguideDetails1.md)
 - [Phrase::StyleguidePreview](docs/StyleguidePreview.md)
 - [Phrase::StyleguideUpdateParameters](docs/StyleguideUpdateParameters.md)
 - [Phrase::Tag](docs/Tag.md)
 - [Phrase::TagCreateParameters](docs/TagCreateParameters.md)
 - [Phrase::TagWithStats](docs/TagWithStats.md)
 - [Phrase::TagWithStats1](docs/TagWithStats1.md)
 - [Phrase::TagWithStats1Statistics](docs/TagWithStats1Statistics.md)
 - [Phrase::TagWithStats1Statistics1](docs/TagWithStats1Statistics1.md)
 - [Phrase::Translation](docs/Translation.md)
 - [Phrase::TranslationCreateParameters](docs/TranslationCreateParameters.md)
 - [Phrase::TranslationDetails](docs/TranslationDetails.md)
 - [Phrase::TranslationDetails1](docs/TranslationDetails1.md)
 - [Phrase::TranslationExcludeParameters](docs/TranslationExcludeParameters.md)
 - [Phrase::TranslationIncludeParameters](docs/TranslationIncludeParameters.md)
 - [Phrase::TranslationKey](docs/TranslationKey.md)
 - [Phrase::TranslationKeyDetails](docs/TranslationKeyDetails.md)
 - [Phrase::TranslationKeyDetails1](docs/TranslationKeyDetails1.md)
 - [Phrase::TranslationOrder](docs/TranslationOrder.md)
 - [Phrase::TranslationReviewParameters](docs/TranslationReviewParameters.md)
 - [Phrase::TranslationUnverifyParameters](docs/TranslationUnverifyParameters.md)
 - [Phrase::TranslationUpdateParameters](docs/TranslationUpdateParameters.md)
 - [Phrase::TranslationVerifyParameters](docs/TranslationVerifyParameters.md)
 - [Phrase::TranslationVersion](docs/TranslationVersion.md)
 - [Phrase::TranslationVersionWithUser](docs/TranslationVersionWithUser.md)
 - [Phrase::TranslationVersionWithUser1](docs/TranslationVersionWithUser1.md)
 - [Phrase::TranslationsExcludeParameters](docs/TranslationsExcludeParameters.md)
 - [Phrase::TranslationsIncludeParameters](docs/TranslationsIncludeParameters.md)
 - [Phrase::TranslationsReviewParameters](docs/TranslationsReviewParameters.md)
 - [Phrase::TranslationsSearchParameters](docs/TranslationsSearchParameters.md)
 - [Phrase::TranslationsUnverifyParameters](docs/TranslationsUnverifyParameters.md)
 - [Phrase::TranslationsVerifyParameters](docs/TranslationsVerifyParameters.md)
 - [Phrase::Upload](docs/Upload.md)
 - [Phrase::UploadCreateParameters](docs/UploadCreateParameters.md)
 - [Phrase::UploadSummary](docs/UploadSummary.md)
 - [Phrase::User](docs/User.md)
 - [Phrase::UserPreview](docs/UserPreview.md)
 - [Phrase::Webhook](docs/Webhook.md)
 - [Phrase::WebhookCreateParameters](docs/WebhookCreateParameters.md)
 - [Phrase::WebhookUpdateParameters](docs/WebhookUpdateParameters.md)


## Documentation for Authorization


### Basic

- **Type**: HTTP basic authentication

### Token


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

