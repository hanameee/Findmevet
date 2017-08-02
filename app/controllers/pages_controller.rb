class PagesController < ApplicationController
  def home
    @vets = Vet.all
  end
  
  def search
    @vets = Vet.ransack(vtitle_cont: params[:q]).result(distinct: true).to_a.uniq
  end
end
