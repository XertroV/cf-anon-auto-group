module CfAnonAutoGroup
  class ActionsController < ::ApplicationController
    requires_plugin CfAnonAutoGroup

    before_action :ensure_logged_in
  end
end
