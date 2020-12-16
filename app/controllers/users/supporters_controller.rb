class Users::SupportersController < ApplicationController
    def index
        @supporter = Supporter.new
        render :action => 'index'
    end
    
    def confirm
        @supporter = Supporter.new(params[:supporter])
        if @supporter.valid?
            render :action => 'confirm'
        else
            render :action => 'indes'
        end
    end
    
    def thanks
        @supporter = Supporter.new(params[:supporter])
        SupporterMailer.received_email(@supporter).deliver
        render :action => 'thanks'
    end
    
    
end
