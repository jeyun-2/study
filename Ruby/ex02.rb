class MegaGreeter
  attr_accessor :names

  #Create the object
  def initialize(names ="World")
    @names = names
  end

  #Say hi to everybody
  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each") #array에는 each, join이란 메소드가 둘다 있어서 반응하는것
      @names.each do |name|  #for (String str : arr)
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  # Say bye to everybody
  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("join")#반응하지않는다면 names는 문자열
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Goodbye #{@names}. Come back soon!"
    end
  end

end
#each인 메소드는 람다식같음...
# 모든 내용물에 대해 반복하면서 이 메소드를 실행
#람다식이 좋은 이유
# 1회용 함수를 만들수있음


mg = MegaGreeter.new
mg.say_hi
mg.say_bye

mg.names = "Zeke"
mg.say_hi
mg.say_bye
puts "------------------------------"
mg.names = ["Albert", "Brenda", "Charles", "Dave", "Engelbert"]
mg.say_hi
mg.say_bye

mg.names = nil
mg.say_hi
mg.say_bye

puts "---------------------------------------------------"

