#!/usr/bin/env ruby

require 'rubygems'
require 'json'


module AppConfig

    def read_setting(key)
        file = open("settings.json")
        settings = file.read

        json_settings = JSON.parse(settings)
        settings_value = json_settings["app-settings"][key]

        return settings_value
    end

    module_function :read_setting
end

setting = AppConfig.read_setting("db-user")
puts setting
