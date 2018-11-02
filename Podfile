platform :ios, '10.3'

use_frameworks!

target 'BetterGetViewTests' do
    pod 'Quick', '~> 1.3.2'
    pod 'Nimble', '~> 7.3'
    pod 'KIF', '~> 3.7'
    pod 'KIF/IdentifierTests', '~> 3.7'
    pod 'KIF-Quick'
    pod 'Spry', '~> 3.2'
    pod 'Spry+Nimble', '~> 3.2'
    pod 'AutoEquatable', '~> 2.1'
end

post_install do |installer|
	installer.pods_project.build_configurations.each do |config|
    	if config.name == 'Release'
      		config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
    	else
      		config.build_settings['SWIFT_OPTIMIZATION_LEVEL'] = '-Owholemodule'
    	end    
  	end
end
