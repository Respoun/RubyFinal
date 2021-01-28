class Gemdub
   def self.hello(langage = "english")
    translator = Translator.new(langage)
    translator.hello
   end
end
require "gemdub/translator"
