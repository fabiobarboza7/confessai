class ConfessesController < ApplicationController

  def create
    @confess = current_user.confesss.build(confess_params)

    if @confess.save!
      ConfessMailer.creation_confirmation(@confess).deliver_now
      if @confess.email.nil? ==  false
      	flash[:notice] = "Parabéns, você desabafou! Enviamos uma dica legal para o seu e-mail";      	
      else
      	flash[:notice] = "Parabéns, você desabafou!";      	

      end
    else
      flash[:alert] = "Você não conseguiu enviar o seu desabafo, tente novamente";
    end
    redirect_to root
  end

  private

  def confess_params
  	params.require(:confess).permit(:name, :email, :text)
  end
end
