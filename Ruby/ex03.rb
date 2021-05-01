
#if문
b= true
if b
  puts "true"
else
  puts "false"
end

#puts "true" if b 이렇게 쓸 수도 있다
# unless 조건이 거짓떄 elsif 못씀
puts "false" unless !b

puts "----------------------------------------"
#while 참이면 반복
val =1
while val <5 do
  p val
  val +=1
end
#until 참이 될때까지 반복
val=10
until val <5 do
  p val
  val -=1
end

puts "======================================"

puts("42"+"23")
puts("#{42+23}")

p /bc/ =~ "abcde" #a=0, 1번부분에 매칭이 되어서 결과는 1
p /abcde/ =~'bcde' #abcde라는 문자열이 여긴 없으니.. nil

arr = [1,2,3]
puts arr.length
arr.each do |number|
  puts number
end

arr[0]
arr[0] = 5  #이것은 메소드..!!
arr[0] =(5)
#length, each

#hash = {key=>value} {:key =>value} 둘중 아무거나 쓰쇼
hash = {"key" =>23, :key =>45}
p hash["key"]
p hash[:key]

hash = {:ary =>["foo","bar"]}
p hash[:ary]
p hash[:ary][0]

hash.delete(:ary) #하나삭제
p hash
p hash[:ary]

hash=[:key =>1, :key2=>2]
hash.clear #전부 삭제
p hash


#!연산자를 not으로 쓸 수 있다.
# 우선순위가 ! > not


puts "---------------------------"
val = 3
case val
when 1 then
  puts "val is 1"
when 3 then
  puts "vals is 3"
when 5 then
  puts "val is 5"
else
  puts "val is another number"
end


str = "str"
num = 1
nil ==false

obj = nil #nil일 떄만 false다
if obj
  puts "obj is true"
else
  puts "obj is false"
end


obj =1
if obj
  puts "obj is true"
else
  puts "obj is false"
end

langs =["Ruby","HTML","JavaScript","Rails"]
langs.each do |output| #호출한 하나하나를 output이라고 이름 붙임
  p output.downcase #전부 소문자로
  p output
end

ary =[[1,2,3],[4,5,6],[7,8,9]]
ary.each do |a,b,c| #세개 이름을 a,b,c라고 지칭을 하겠다. 다중 대입
  p a, b, c
end

a,b,c = 10,11,12 #다중대입 가능
p b


puts "------------------------"

hash = {:foo =>1 ,:bar =>2, :baz =>3}
hash.each do |a|
  p a
end

hash.each do |k,v|
  p "key: #{k}, value:#{v}"
end

sum =0
10.times do  #숫자.times 호출하면 블록을 숫자만큼 반복하는것이 이 메소드가 하는 일
  sum +=1
  p sum
end

ary = [1,2,3]
for i in ary
  p i
end

for i in 1..10 #범위 지정 1<=i <=10
  puts i
end

for i in 1...10 #범위 지정 1<=i <10 마지막꺼 포함 안해 ...
  puts i
end

count = 0
loop do
  if count ==3
    break
   end
    puts "루프 중.."
    count += 1
end

#[1,2,3] each.do |i|
#  p i
#  if i =3
#    redo #3일때 redo니까 3일떄의 내용을 반복 실행
#  end