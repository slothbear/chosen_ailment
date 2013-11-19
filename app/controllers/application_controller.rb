class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def isolate_id(id, params)
    factors = params.dup
    [factors.delete(id), factors]
  end

end
