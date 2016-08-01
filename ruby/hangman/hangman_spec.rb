=begin
require_relative "hangman"
describe redact do
let (:Hangman) {Hangman.new}
star with "converts a word to empty spaces" do
	expect(hangman.redact("hello")).to eq (" _ _ _ _ _ ")
end
start with "converts a word array of letters" do
	expect(hangman.check_game("hello")).to eq (" h,e,l,l,o ")
end
match_array "checks an array" do
	expect(hangman.def([hello]).to eq ("hello")
end
	
end
=end
