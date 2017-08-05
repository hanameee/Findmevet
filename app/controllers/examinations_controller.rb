class ExaminationsController < InheritedResources::Base
  
  def index
    @examinations = Examination.all
  end
  
  def create
    @examination = current_user.examinations.build(examination_params)
    if @examination.save
      flash[:success] = "Micropost created!"
      redirect_to examinations_path
    end
  end

  private

    def examination_params
      params.require(:examination).permit(:hname, :exdate, :symptom, :user_id)
    end
end

