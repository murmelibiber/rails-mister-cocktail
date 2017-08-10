class AmountsController < ApplicationController



  def create

    @guest = Guest.find(params[:guest_id])
    @amount = Amount.new(params_dose)
    @amount.guest = @guest
    if @amount.save
      redirect_to @guest
    else
      render "guests/show"
    end
  end

  def destroy
    @amount = Amount.find(params[:id])
    @amount.destroy
    redirect_to guest_path(@amount.guest)
  end


  def params_dose
    params.require(:amount).permit(:desc, :present_id)
  end



end


# <% @amount.presents_id.each do |present| %>
# <p><%= present.name%></p>
# <% end %>
