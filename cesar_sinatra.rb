
require 'sinatra'






get '/' do


erb :index




end

get '/output' do

  @sentence = params[:sentence]
  @number = params[:number].to_i

  def cesars_cypher(string,places_shifted)

sentence_reverse = string.downcase.split("").map do |letter|

    letter_chg = letter.ord+places_shifted
    if letter.ord <  97 && letter.ord > 26
        letter = letter
       elsif letter.ord+places_shifted > 122
       letter = letter.ord+places_shifted - 123 + 97
       letter.chr
else
  sentence_reversed = letter_chg.chr
 sentence_reversed
    end
  end

return  sentence_reverse.join.capitalize
  end


@answer = cesars_cypher(@sentence,@number)
erb :output

end




# def check_input()



# puts "Welcome to Cesars Cypher!"
# puts "Enter the string you would like to decode"
#
# input = gets.chomp.to_s
#
# puts "Enter how many spaces you would like to shift the element"
#
# places_shifted = gets.chomp.to_i
#
#
# dd = input.downcase.split("").map do |strin|
#
#     kk = strin.ord+places_shifted
#     if strin.ord <  97 && strin.ord > 26
#         strin = strin
#        elsif strin.ord+places_shifted > 122
#        strin = strin.ord+places_shifted - 123 + 97
#        strin.chr
# else
#   jj = kk.chr
#  jj
#     end
#   end
#   puts dd.join.capitalize
# return  dd.join.capitalize
# end
#
# check_input()
#end
#end
