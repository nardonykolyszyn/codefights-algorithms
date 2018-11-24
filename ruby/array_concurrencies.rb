# frozen_string_literal: true

arr = ['a', 'a', 'b','d', 'e']
arr.sort.chunk(&:itself).map {|v, vs| [v, vs.count]}.to_h
