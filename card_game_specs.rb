require('minitest/autorun')
require('minitest/reporters')
require_relative('./card')
require_relative('./card_game')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCardGame < MiniTest::Test

    def setup
        @card1 = Card.new("Hearts", 12)
        @card2 = Card.new("Clubs", 1)
        @card3 = Card.new("Spades", 7)
        @card4 = Card.new("Cloves", 10)
        @card5 = Card.new("Clubs", 3)

        @cards = [@card1, @card2, @card3, @card4, @card5]
    end

    def test_check_for_ace__ace()
        assert_equal(true, CardGame.check_for_ace(@card2))
    end

    def test_check_for_ace__not_ace()
        assert_equal(false, CardGame.check_for_ace(@card5))
    end

    def test_highest_card()
        assert_equal(@card1, CardGame.highest_card(@card1, @card4))
    end

    def test_highest_card__equal()
        assert_equal("They have the same value", CardGame.highest_card(@card3, @card3))
    end

    def test_cards_total()
        assert_equal("You have a total of 33", CardGame.cards_total(@cards))
    end

end