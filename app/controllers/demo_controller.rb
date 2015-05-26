class DemoController < ApplicationController

  def index
    render :inline => "<%= netzke :application %>", :layout => TRUE
  end

end
