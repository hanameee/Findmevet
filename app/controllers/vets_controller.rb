class VetsController < ApplicationController
  before_action :set_vet, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show]
  
  def index
    @vets = current_user.vets
  end

  def show
    @vets = Vet.find(params[:id])
    @photos = @vet.photos
    @reviews = @vet.reviews
    @hasReview = @reviews.find_by(user_id: current_user.id) if current_user
    @reviewsp = @reviews.order(:created_at).page params[:page] #일단 이렇게
   
  end

  def new
    @vet = current_user.vets.build
  end

  def create
    @vet = current_user.vets.build(vet_params)
    
    if @vet.save
      if params[:images]
        params[:images].each do |image|
          @vet.photos.create(image: image)
        end
      end
      @photos = @vet.photos
      redirect_to edit_vet_path(@vet), notice: "Saved"
    else
      render :new
    end
  end



  def update
    if @vet.update(vet_params)
      if params[:images]
        params[:images].each do |image|
          @vet.photos.create(image: image)
        end
      end
      
      redirect_to edit_vet_path(@vet), notice: "Updated.."
    else
      render :edit
    end
  end
  
  private
  
    def set_vet
      @vet = Vet.find(params[:id])
    end
    
    def vet_params
      params.require(:vet).permit(:vtitle, :postcode, :address, :address_detail, :telephone, :description, :hour, :hotel, :beauty, :supply, :homepage, :user_id, :picture)
    end
    
end
