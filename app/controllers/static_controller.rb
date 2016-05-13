 class StaticController < ApplicationController
  def sidebar
  	render action: "content"
  end
  def fixed
    render action: "content", layout: "fixed"
  end
end