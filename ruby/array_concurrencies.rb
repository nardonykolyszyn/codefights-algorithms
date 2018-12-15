# frozen_string_literal: true

# Test case
arr = Array.new(10000) { |e| e = rand(1..20) }

# Export as instance method
class Array
  def concurrencies
    self.group_by(&:itself).map { |k, v| [k, v.size ] }.to_h
  end
end
