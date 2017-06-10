class Bottles

  def song
    verses(99, 0)
  end

  def verses(v_from, v_to)
    v_from.step(v_to, -1).collect{ |v|
      verse(v)
    }.join "\n"
  end

  def verse(v_num)
    if v_num == 0
    "No more bottles of beer on the wall, no more bottles of beer.
Go to the store and buy some more, 99 bottles of beer on the wall.
"
    else
    "#{v_num} #{bottle(v_num)} of beer on the wall, #{v_num} #{bottle(v_num)} of beer.
Take #{(v_num-1 == 0) ? 'it' : 'one'} down and pass it around, #{(v_num-1 == 0) ? 'no more' : v_num-1} #{bottle(v_num-1)} of beer on the wall.
"
      end
  end

  def bottle(count)
    (count == 1) ? 'bottle' : 'bottles'
  end

end