class JoinArray
    def methodJoin
        a1 = ["1","2"]
        a2 = ["4","3"]
        a3 = a1 + a2
        a3.each do |i|
            puts i
        end
    end
end
ObjClass = JoinArray.new
ObjClass.methodJoin
