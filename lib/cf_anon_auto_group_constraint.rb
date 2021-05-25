class CfAnonAutoGroupConstraint
  def matches?(request)
    SiteSetting.cf_anon_auto_group_enabled
  end
end
