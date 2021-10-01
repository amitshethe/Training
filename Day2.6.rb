class Prac
    def methodPrac
        arr = ["1","2","3","1","2","3"]
        occ = Hash.new
        arr.each do |i|
            if  occ[i]
                occ[i] +=1
            else
                occ[i] = 1
            end
        end
        puts occ
    end
end
obj = Prac.new
obj.methodPrac