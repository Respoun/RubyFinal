class Gemdub::Translator
    def initialize(langage)
        @langage = langage
    end
    def hello
        if @langage == "french"
            return "Bonjours a tous!"
        elsif @langage == "spanish"
            return "Hola a todos!"
        else
            return "Hello world !"
        end
    end
end