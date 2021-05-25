module CfAnonAutoGroup
  class Engine < ::Rails::Engine
    engine_name "CfAnonAutoGroup".freeze
    isolate_namespace CfAnonAutoGroup

    config.after_initialize do
      # Discourse::Application.routes.append do
      #   mount ::CfAnonAutoGroup::Engine, at: "/cf-anon-auto-group"
      # end
    end
  end
end
