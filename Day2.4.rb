class DoubleElement
    def methodElement
        arr = ["1","2"]
        arr = arr+arr
        puts arr
    end
end
obj = DoubleElement.new
obj.methodElement