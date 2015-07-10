#
# Be sure to run `pod lib lint KVCMapping.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "KVCMapping"
  s.version          = "1.0.0"
  s.summary          = "KVC Mapping is the automatic translation of external data to your internal model objects."
  s.description      = <<-DESC
                       **KVC Mapping** features

                       * Mapping the keys of the external representation to the property names of your model,
                       * Including mapping of the same key to several properties in the same entity.
                       * Mapping the keys in the external representation to relationships between your model's entities,
                       * A conversion mechanism:
                       * using automatic coercion for trivial cases (e.g. strings to numbers)
                       * configurable NSValueTransformers for more complex cases.
                       * Reverse mapping of objects

                       **KVC Mapping** does not (yet) support :
                       * mapping subdictionaries in the imported data,
                       * mapping several keys of the imported data to a single property of the model.
                       DESC
  s.homepage         = "https://github.com/n-b/KVCMapping"
  s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
  s.author           = { "Nicolas Bouilleaud" => "nicolas.bouilleaud@capitainetrain.com" }
  s.source           = { :git => "https://github.com/n-b/KVCMapping.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.public_header_files = 'KVCMapping/**/*.h'
  s.source_files = 'KVCMapping/**/*.{h,m}'
  s.prefix_header_file = 'KVCMapping/KVCMapping-Prefix.pch'

  s.frameworks = 'CoreData', 'Foundation'
end
