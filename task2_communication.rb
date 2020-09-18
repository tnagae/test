class Communication
 def greet(greeting)
  if greeting == "Hello"
   puts "上司「Hello」"
   puts "上司「ここは職場？」"+"はい/いいえ"
   question = gets.chomp
    if question == "はい"
      puts "上司「ありがとう」"
    else
      puts "・・・・・・。"
    end
  else
   puts "・・・。"
  end
 end
 def talk(answer)
   begin
     if answer == "終わった"
       puts "上司「やるじゃん」"
     elsif answer == "まだだよ"
       puts "上司「おいおい、何やってんだよ」"
     else
       raise "上司「何を言っている？」"
     end
   rescue => e
     puts "#{e}"
   end
 end
end

communication = Communication.new

puts "Helloと挨拶してみよう"
gre = gets.chomp

communication.greet(gre)

if gre == "Hello"
 puts "上司「昨日のタスクは終わった？」"+"終わった/まだだよ"
 tal = gets.chomp

 communication.talk(tal)
end




class WorkplaceCommunication <  Communication

end
