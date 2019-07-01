class PagesController < ApplicationController
  layout 'application_main', only: [:home]
  def home
    @vets = Vet.all
    @vetsreviewtime = @vets.joins(:reviews).group(:id).order('reviews.created_at DESC').page(params[:page])
    
  end
  
  def search
    @vets = Vet.ransack(vtitle_cont: params[:q]).result(distinct: true)
    @vets = @vets.order(:vtitle).reverse_order.page(params[:page])
    @searchresult = params[:q]    
    respond_to do |format|
      format.html {}
      format.json {
        @vets = @vets.limit(5)
      }
    end
    
  end
  
  def searchreview
    @vets = Vet.ransack(vtitle_cont: params[:q]).result(distinct: true)
    @vetsreview = @vets.joins(:reviews).group(:id).order('count(reviews.id) DESC').page(params[:page])
    @searchresult = params[:q]    
    respond_to do |format|
      format.html {}
      format.json {
        @vetsreview = @vetsreview.limit(5)
      }
    end
    
  end
  
  def searchstar
    @vets = Vet.ransack(vtitle_cont: params[:q]).result(distinct: true)
    @vetsstar = @vets.joins(:reviews).group(:id).order(' DESC').page(params[:page])
    @searchresult = params[:q]    
    respond_to do |format|
      format.html {}
      format.json {
        @vetsstar = @vetsstar.limit(5)
      }
    end
    
  end
  
  # def averagerating(@vets)
  #   i=0

  #   while i == @vets.reviews.count
  #     @sum += @vets.reviews[i]
  #     i++
  #   end
  #   @sum = @sum/(@vets.reviews.count)
  # end
  
  # def introduction
  # end
  
  
  # private
  
  # def sum
  #   @sum =0
  # end

end


