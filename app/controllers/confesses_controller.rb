class ConfessesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def new
    @confess = Confess.new
  end

  def index
    @confesses = Confess.all.where(user_id: nil)
    @all_confesses = @confesses + Confess.all.where.not(user_id: current_user)
    if user_signed_in?
      @user_confesses = current_user.confesses
    end
  end

  def create
    @confess = Confess.new(confess_params)
    @confess.user = current_user
    if @confess.save
      ConfessMailer.confess_answer(@confess).deliver_now
      if @confess.user.email.nil? ==  false
      	flash[:notice] = "Parabéns, você desabafou! Enviamos uma dica legal para o seu e-mail";      	
      else
      	flash[:notice] = "Parabéns, você desabafou!";      	

      end
      redirect_to root_path
    else
      flash[:alert] = "Você não conseguiu enviar o seu desabafo, tente novamente";
      render :new
    end
  end

  def destroy
    @confess = Confess.find(params[:id])
    if @confess.destroy
      flash[:notice] = "O desabafo : '#{@confess.text}' foi excluido com sucesso" 
    end
    redirect_to confesses_path
  end

  private

  def confess_params
  	params.require(:confess).permit(:text, :user_id)
  end
end
