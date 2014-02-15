require_relative 'spec_helper'

describe CssController, type: :controller do
  before :all do
    cache = Rails.root.join('tmp/cache')
    cache.rmtree if cache.exist?
  end

  it "integrates with Rails and Sass" do
    get :test, file: 'sass'
    response.should be_success
    response.body.should == "a {\n" +
                            "  -webkit-transition: all 1s;\n" +
                            "  transition: all 1s; }\n"
  end
end

describe 'Rake task' do
  it "shows debug" do
    info = `cd spec/app; bundle exec rake autoprefixer:info`
    info.should =~ /Browsers:\n  Chrome: 25\n\n/
    info.should =~ /  transition: webkit/
  end
end
