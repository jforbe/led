# frozen_string_literal: true

# receives user input and calls Blink class
class BlinkController < ApplicationController
  def index; end

  def create
    Blink.new.make_it_blink(params)
    redirect_to blink_index_path
  end
end
