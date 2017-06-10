class Bottles

  def song
    verses(99, 0)
  end

  def verses(v_from, v_to)
    v_from.step(v_to, -1).collect {|v|
      verse(v)
    }.join "\n"
  end

  def verse(v_num)
    if v_num == 0
      'No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
'
    else
      next_num = v_num-1
      "#{v_num} #{v_num.to_bottle_s} of beer on the wall, #{v_num} #{v_num.to_bottle_s} of beer.
Take #{(next_num == 0) ? 'it' : 'one'} down and pass it around, #{(next_num == 0) ? 'no more' : next_num} #{next_num.to_bottle_s} of beer on the wall.
"
    end
  end
end

class Fixnum
  def to_bottle_s
    (self == 1) ? 'bottle' : 'bottles'
  end
end