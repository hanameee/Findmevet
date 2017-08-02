class PagesController < ApplicationController
  
  def home
    @vets = Vet.all
  end
  
  def search
    @vets = Vet.ransack(vtitle_cont: params[:q]).result(distinct: true)
    
    respond_to do |format|
      format.html{}
      format.json {
        @vets = @vets.limit(5)
      }
    end
    
  end
end
