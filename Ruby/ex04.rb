#(함수적)메소드
def foo
  puts "method"
end

foo  #호출~!


def cubage(args)
  x = args[:x] || 10  #x에 값이 안들어가면 기본값은 10
  y = args[:y] || 10
  h = args[:h] || 10
  return x*y*h
end

p cubage(:h=> 100)

hash = {:x =>20, :y => 30, :h =>50}
p cubage(hash)  #hash 자체를 값으로 넣어서 쓸수있다


def show
  puts "Enjoy!"
end

show do
  puts "Programming!"
end


def show
  puts "Enjoy~"
  yield # 블럭으로 받은 것을 실행한다
  yield #횟수 여러번
  yield
end

show do
  puts "Programming"
end


#파라미터를 받는경우
def foo
  yield "Hello!" #호출할때 파라미터를 하나 넣어주면 그대로 대입해서 호출
end

foo do |x|
  puts x
end

def foo
  yield "Hello!"
  yield "Hi!"
end

foo do |x|
  puts x
end

def foo
  yield "Hello!", "Enjoy", 42+23
end

foo do |x,y,z|
  puts x,y,z
end

puts"--------------------------------"

def hello
  puts "Hello!"
end

hello

alias new_hello hello #별칭을 주면서 메소드를 확장시킬수있다.
new_hello

alias  original_hello hello

def hello
  puts "Hello!"
  original_hello #Hello!
  puts "World!"
end

hello

puts "------------------------------"

p 10.+(20) # '+'가 메소드  연산자도 메소드!~!,오버라이드 해서 쓸 수 있다.

puts"---------------------------------"

ary = []

p ary.[]=(1, 10) #'[]='까지 메소드
p ary.[](1)


