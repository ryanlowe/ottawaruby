require File.dirname(__FILE__) + '/../test_helper'

class SiteControllerTest < ActionController::TestCase
  
  def test_routing
    assert_routing '',  :controller => 'site', :action => 'index'
    assert_routing '/', :controller => 'site', :action => 'index'
  end
  
  def test_index
    get :index
    
    assert_response :success
    assert_template 'index'
  end
  
end
