class Creditcard
    def methodcreditcard
        str = gets
        result = !! str.match(/\d{4}\-?\d{4}\-?\d{4}\-?\d{4}/)
        puts result
    end
end

obj = Creditcard.new
obj.methodcreditcard
