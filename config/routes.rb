require_dependency "cf_anon_auto_group_constraint"

CfAnonAutoGroup::Engine.routes.draw do
  get "/" => "cf_anon_auto_group#index", constraints: CfAnonAutoGroupConstraint.new
  get "/actions" => "actions#index", constraints: CfAnonAutoGroupConstraint.new
  get "/actions/:id" => "actions#show", constraints: CfAnonAutoGroupConstraint.new
end
