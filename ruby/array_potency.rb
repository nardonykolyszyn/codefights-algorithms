# frozen_string_literal: true

# Test case
arr = Array.new(10) { |e| e = rand(1..10) }

# Export as instance method
class Array
  def to_potency
    self.map { |e| [e, e ** 2] }.to_h
  end
end
