class PopularController < ApplicationController
  def newest
    @prototypes = Prototype.all.order('created_at DESC').page(params[:page]).per(12)
  end
end
