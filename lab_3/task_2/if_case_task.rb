
def if_option(x)
    if(x <= 0 && x > -4) then
    begin
        y = ((x-2).abs/(x**2)*Math.cos(x))**(1.0/7)
    end
    elsif(x > 0 && x <= 12) then 
        begin
            y = (Math.tan(x + 1/(e**x))/(Math.sin(x)**2))**(-2.0/7)
        end 
    elsif(x < -4 || x > 12) then 
        begin
            y = (1 + x/(1 + x/(1+x)))**(-1)
        end
end
#----------------------------------------------------------------------
def case_option(x)
    case x
        when -3.99..0
            y = ((x-2).abs/(x**2)*Math.cos(x))**(1.0/7)
        when 0..12 
            y = (Math.tan(x + 1/(e**x))/(Math.sin(x)**2))**(-2.0/7)
        else 
            y = (1 + x/(1 + x/(1+x)))**(-1)
        end
    end
end