
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




