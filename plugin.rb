# frozen_string_literal: true

# name: CfAnonAutoGroup
# about: Automatically add anonymous users to groups when they log in.
# version: 0.1
# authors: xertrov
# url: https://github.com/xertrov/cf-anon-auto-group

enabled_site_setting :cf_anon_auto_group_enabled

PLUGIN_NAME ||= 'CfAnonAutoGroup'

load File.expand_path('lib/cf-anon-auto-group/engine.rb', __dir__)

after_initialize do
  # https://github.com/discourse/discourse/blob/master/lib/plugin/instance.rb

  require_dependency 'discourse_event'

  DiscourseEvent.on(:user_created) do |user|
    if SiteSetting.cf_anon_auto_group_enabled
      if user.anonymous?
        user.set_automatic_groups
      end
    end
  end
end
