# frozen_string_literal: true

require "action_controller/railtie"
require "action_view/railtie"

Bundler.require
require "okcomputer"

module Dummy
  class Application < Rails::Application
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true
    config.secret_token = "paranoidandroidsubterraneanhomesickalien"
    config.secret_key_base = "fitterhappiermoreproductive"
    config.session_store :cookie_store, key: "_dummy_session"
    config.cache_classes = true
    config.consider_all_requests_local = true
    config.action_controller.perform_caching = false
    config.action_dispatch.show_exceptions = false
    config.action_controller.allow_forgery_protection = false
    config.active_support.deprecation = :stderr
    config.eager_load = false
    config.to_prepare { load OkcomputerHtmlView.load_path }
  end
end
