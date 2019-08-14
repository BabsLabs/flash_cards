require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turn'

class TurnTest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    assert_instance_of Turn, turn
  end

  def test_it_has_a_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    assert_equal "Juneau", turn.guess
  end

  def test_it_has_a_card
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    assert_equal card, turn.card
  end

  def test_it_has_a_correct?
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    assert_equal true, turn.correct?

    turn = Turn.new("Detroit", card)

    assert_equal false, turn.correct?
  end

  def test_it_has_a_feedback
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)

    turn = Turn.new("Juneau", card)

    assert_equal "Correct!", turn.feedback

    turn = Turn.new("dsfdgfhkttsrgfhgku", card)

    assert_equal "Incorrect.", turn.feedback
  end

end
