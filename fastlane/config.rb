def check_and_load_config(options)
    file = File.read('config.json')
    config_hash = JSON.parse(file, symbolize_names: true)
    options = config_hash.merge(options)

    if options.key?(:config) == false
      UI.user_error!("Please provide a config e.g -- bundle exec fastlane build config:qa version:1.4.2.3")
    else
      # Fix up config and change it from a string to a symbol
      options[:config] = options[:config].to_sym
    end

    if (options[:configs]).key?(options[:config]) == false
      UI.user_error!("#{options[:configs][:config]} Config doesn't exist, please check config.json")
    else
      # Flatten the config based on the symbol that we got above
      config_key = options[:config]
      options[:config] = options[:configs][config_key]
    end

    # Add in binary name
    options[:build_path] = "build/"
    options[:output_name] = "#{options[:config][:scheme]}_#{options[:version]}.ipa"

    # Add temp keychain name
    options[:keychain_name] = "fastlane_#{options[:config][:scheme]}" if options[:keychain_name] == nil

    # Fix up version number for iOS
    options[:build_number] = options[:version]
    options[:version_number] = options[:version][/^[0-9]*\.[0-9]*\.[0-9]*/]

    # Set messages for slack
    options[:slack_message] = "#{options[:config][:scheme]} is available on HockeyApp."

    options[:keychain_name] = "fastlane_tmp_keychain"
    options[:keychain_password] = ''

    options
end