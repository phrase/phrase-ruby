# Phrase::Format

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Human-readable display name of the format. | 
**api_name** | **String** | Identifier used to reference this format in API requests, such as the file_format parameter on the uploads and downloads endpoints. | 
**description** | **String** | Human-readable summary of the format and its typical use case. | 
**extension** | **String** | Default file extension associated with this format. | 
**default_encoding** | **String** | Default character encoding used when reading or writing files in this format. | 
**importable** | **Boolean** | Whether locale files can be imported using this format. | 
**exportable** | **Boolean** | Whether locale files can be exported using this format. | 
**default_file** | **String** | Conventional file path pattern for this format. Contains locale_name as a placeholder for the locale identifier. | 
**renders_default_locale** | **Boolean** | When true, exported files contain the default locale&#39;s content for any key that has no translation in the target locale. | 
**includes_locale_information** | **Boolean** | When true, files in this format embed locale information so Phrase can detect the locale automatically on import. | 

## Code Sample

```ruby
require 'Phrase'

instance = Phrase::Format.new(name: Ruby/Rails YAML,
                                 api_name: yml,
                                 description: YAML file format for use with Ruby/Rails applications,
                                 extension: yml,
                                 default_encoding: UTF-8,
                                 importable: true,
                                 exportable: true,
                                 default_file: ./config/locales/&lt;locale_name&gt;.yml,
                                 renders_default_locale: false,
                                 includes_locale_information: false)
```


