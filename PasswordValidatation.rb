class PasswordValidatation
    def methodPassword
        puts "Enter paswword"
        password = gets 
        
        reg = /^\w+[@$!%#?&]\w+$/
        if reg.match(password)
            puts "password matches"
        else
            puts "Password do not match"
        end

    end
end

obj = PasswordValidatation.new
obj.methodPassword