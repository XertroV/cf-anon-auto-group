require 'rails_helper'

describe CfAnonAutoGroup::ActionsController do
  before do
    Jobs.run_immediately!
  end

  it 'doesn\'t serve any routes' do
    sign_in(Fabricate(:user))
    # get "/cf-anon-auto-group/list.json"
    # expect(response.status).to eq(200)
  end
end
