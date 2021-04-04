puts "Hello World!"
print "Hello World" #줄바꿈 안해줌
p "Hello World" #알기쉬운 형태로

arr = [1,2,3]
puts arr
p arr  #어떤 객체인지 알기쉽게 표시 #출력하려는 객체를 가공해주는 느낌

#작은 따옴표 , 큰 따옴표 구분
# 구분지을때 아니면 작은따옴표 먼저 사용하는거 권장
puts 'Hello,\n Ruby!' #작은따옴표 적용안돼
puts "Hello,\n Ruby!"


# puts : 파라미터가 하닐 경우에는 괄호가 없어도 된다
#        단순히 값을 반환하는 경우는 return을 안씀
#        return을 딱히 할게 업으니 cmd에는 nil이 뜬다
def hello
  puts "Hello World!"
end

hello
hello()
puts "---------------------------------------------"
def hello(name)
  puts "Hello #{name}!"
end

hello("Kang")

def hello(name="World")
  puts "Hello #{name.capitalize}!"
end

hello "chris"
hello

puts "------------------------------------------"
class Greeter
  def initialize(name="World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, Come back soon."
  end
end

g = Greeter.new("Pat")
g.say_hi
g.say_bye

#puts Greeter.instance_methods #Greeter의 객체+ 모든 상속된 객체
#puts Greeter.instance_methods(false) #Greeter의 객체만
puts "-------------------------------------------------------"

#두개읜 메소드를 새로 정의
class Greeter
  attr_accessor :name
end
#name은 인스턴스 변수의 값에 접근
#name= 은 객체변수의 값을 변경하기 위한 것
g = Greeter.new("Andy")
g.respond_to?("name")
g.respond_to?("name=")
g.say_hi
g.name="Betty"
g.name
g.say_hi