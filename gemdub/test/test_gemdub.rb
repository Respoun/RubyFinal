require 'minitest/autorun'
require 'gemdub'

class GemdubTest < Minitest::Test
    def test_gemdub_french
        assert_equal "Bonjours a tous!", Gemdub.hello("french")
    end
    def test_gemdub_english
        assert_equal "Hello world !", Gemdub.hello("english")
    end
    def test_gemdub_spanish
        assert_equal "Hola a todos!", Gemdub.hello("spanish")
    end
end