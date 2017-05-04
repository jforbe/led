class BlinkController < ApplicationController
  def index
  end

  def create
     Blink.make_it_blink(params)
     redirect_to blink_index_path
  end
end
