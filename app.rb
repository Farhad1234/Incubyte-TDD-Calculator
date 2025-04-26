require 'sinatra'
require_relative './lib/string_calculator'

get '/' do
  erb :index
end

post '/calculate' do
  input = params[:numbers] || ""
  begin
    result = StringCalculator.new.add(input)
    @output = "Result: #{result}"
  rescue => e
    @output = "Error: #{e.message}"
  end
  erb :index
end
