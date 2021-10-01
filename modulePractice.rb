# module Practice
#     class PracticeClass
#         def initialize(value)
#             @value = value
#         end
#         def printingMethod
#             puts @value
#         end
#     end
#     obl = PracticeClass.new"Amit"
#     obl.printingMethod
# end
require 'pry'
class Salad
    def initialize
      @ingredients = []
    end
    def add_nuts
      @ingredients << :nuts
      self
      binding.pry
    end
  end
  my_salad = Salad.new.add_nuts