class WeightController < ApplicationController

def new
if(params[:weight][:units]=="cm")
@h = Float(params[:weight][:height])/2.54
else
@h = pFloat(params[:weight][:height])
end
if(params[:weight][:formula]=="robinson")
if(params[:weight][:genre]=="man")
@lbs=114.4+4.18*(@h-60)
else
@lbs=107.8+3.74*(@h-60)
end
elsif(params[:weight][:formula]=="devine")
if(params[:weight][:genre]=="man")
@lbs=110+5.06*(@h-60)
else
@lbs=100.1+5.06*(@h-60)
end
elsif(params[:weight][:formula]=="miller")
if(params[:weight][:genre]=="man")
@lbs=123.64+3.10*(@h-60)
else
@lbs=116.82+2.99*(@h-60)
end
end
@kg = @lbs*0.45359237
@alpha = sprintf('%.2f',@lbs)
@beta = sprintf('%.2f',@kg)
@message = "Your ideal weight is #{@alpha} lbs or #{@beta} kg."
#return "Your ideal weight is #{@w} lbs or #{@kg} kg."
end

def show
end

def result

end 

end
