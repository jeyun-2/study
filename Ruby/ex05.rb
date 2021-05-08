# new도 method 다...


ary = Array.new
p ary
str = String.new
p str
p ary.class

p 23.class
p "abcd".class

puts"--------------------------"

class HelloRuby
  def hello
    puts "Hello, Ruby!"
  end
end

greeting = HelloRuby.new
greeting.hello


class Person
  def initialize(name = "Bob")
    @name = name
  end
  def name
    puts @name
  end
end

bob = Person.new
bob.name

john = Person.new("John")
john.name

class Foo
  def initialize(arg)
    @foo = arg
  end
  def foo
    puts @foo
  end
  def bar
    puts @foo
  end
end

foo = Foo.new("foo")
foo.foo
foo.bar


bar = Foo.new("bar")
bar.foo
bar.bar

puts "------------------------------------"

class Person
  def name
    return @name
  end
  def name=(value)
    @name = value
  end
end


john = Person.new
john.name = "John"

p john.name
puts"----------------------"

class Greeting
  attr_reader :hello   #getter만
  attr_writer :bye     #setter만
  attr_accessor :pardon #둘 다
end

greeting = Greeting.new

greeting.hello
greeting.bye = 42
greeting.pardon = "sorry"

greeting.pardon

class Greeting
  attr_reader :hello, :pardon #여러개 가능
  attr_writer :hello, :bye
end

g = Greeting.new
g.hello = "Hello"
p g.hello

g.bye ="bye"


puts "-------------------------------------------"

class Person
  def result(value)
    @name = value
  end
end

bob = Person.new

bob.name.nil?

text = "abcde "
p text.chop
p text
p text.chop! #원본까지 변경
p text

puts"-----------------------------------------------"

#클래스 메소드
class HelloRuby
  def HelloRuby.greeting
    puts("Hello! Ruby!")
  end
end

HelloRuby.greeting

class HelloRuby
  def foo
    puts "foo"
  end
end

class << HelloRuby   # 이 안에 정의하는 메소드는 전부 클래스메소드로 들어감
  def greeting2
    puts"Hello Ruby"
  end
end

HelloRuby.greeting2

class HelloRuby
  def self.greeting  #class를 가리키는 self
    puts"Hello! Ruby!!"
  end
end

HelloRuby.greeting


