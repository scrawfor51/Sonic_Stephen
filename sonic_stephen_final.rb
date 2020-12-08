##| ##| play sample :elec_tick is not bad
##| ##| Second rif comes in at 52 measures
##| ##| Adjust reverb on seonc rif
##| ##| Double check cutoff for tom
##| ##| Note when using the x.times do, always comes in 1 measure late in 4/4


##| use_synth :beep

##| # intro

##| # opening rif
play sample :guit_em9
sleep 4
play sample :guit_e_fifths

##| # back progression 8-78
in_thread do
  
  sleep 4
  
  9.times do  # C maj, E maj, G maj, E min
    
    play chord(:C3, :major)
    sleep 2
    play chord(:E3, :major)
    sleep 2
    play chord(:G3, :major)
    sleep 2
    play chord(:E3, :minor)
    sleep 2
    
  end
end

##| # light snares 24-80
in_thread do
  5.times do
    sleep 4
  end
  112.times do
    
    sample :drum_snare_soft, amp: 0.25
    sleep 0.5
  end
end

##| # on-count cymbal 16-80
in_thread do
  5.times do
    sleep 4
  end
  
  27.times do
    
    sample :drum_cymbal_pedal
    sleep 2
  end
end

# crescendo build/ light tom
in_thread do
  9.times do
    sleep 4
  end
  
  120.times do
    
    sample :drum_tom_hi_soft, amp: 0.25, release: 0.5
    sleep 0.25
  end
end

##| # trail off rif at 40
in_thread do
  11.times do
    sleep 4
  end
  2.times do
    sample :guit_em9
    sleep 4
    sample :guit_e_fifths
    sleep 4
  end
end



##| # melody 1
in_thread do # chord progression 2 in at 80-126
  19.times do
    sleep 4
  end
  
  4.times do # A min x 2, E maj, A min x 2, G maj, A min x 2, E min
    play chord(:A3, :minor)
    sleep 1
    play chord(:A3, :minor)
    sleep 1
    play chord(:E3, :major)
    sleep 2
    play chord(:A3, :minor)
    sleep 1
    play chord(:A3, :minor)
    sleep 1
    play chord(:G3, :major)
    sleep 2
    play chord(:A3, :minor)
    sleep 1
    play chord(:A3, :minor)
    sleep 1
    play chord(:E3, :minor)
    sleep 2
  end
end

in_thread do
  24.times do
    sleep 4
  end
  20.times do
    sample :drum_bass_soft, amp: 0.5
    sleep 2
  end
end

in_thread do
  24.times do
    sleep 4
  end
  10.times do
    sample :drum_tom_lo_soft, amp: 0.25
    sleep 4
  end
end

in_thread do
  24.times do
    sleep 4
  end
  40.times do
    sample :bd_haus, amp: 0.25
    sleep 0.5
  end
end


in_thread do
  28.times do
    sleep 4
  end
  8.times do
    sample :ambi_choir, rate: 0.1
    sleep 2
    
  end
end



##| # Melody 2

in_thread do
  32.times do
    sleep 4
  end
  4.times do
    play chord(:G3, :major), release: 0.5
    sleep 1
    play chord(:E3, :major), release: 1.5
    sleep 1
    play chord(:A3, :minor), release: 0.5
    sleep 1
    play chord(:C3, :major)
    sleep 1
  end
end

in_thread do
  36.times do
    sleep 4
  end
  4.times do
    play chord(:D3, :minor), amp: 0.5
    sleep 1
    play chord(:E3, :sus4), release: 0.5
    sleep 1
    play chord(:A3, :minor), amp: 0.5
    sleep 1
    play chord(:C3, :major), release: 0.5
    sleep 1
  end
end


in_thread do
  32.times do
    sleep 4
  end
  4.times do
    sample :ambi_swoosh
    sleep 8
  end
end

in_thread do
  36.times do
    sleep 4
  end
  8.times do
    sleep 2
    sample :bass_woodsy_c, amp: 0.1
    sleep 2
  end
end

in_thread do
  36.times do
    sleep 4
  end
  
  8.times do
    sample :bd_sone, amp: 0.5
    sleep 4
  end
end


in_thread do
  40.times do
    sleep 4
  end
  4.times do
    play chord(:G3, :major), release: 0.5
    play chord(:D3, :minor)
    sleep 1
    play chord(:E3, :major), release: 1.5
    play chord(:E3, :sus4), release: 0.5
    sleep 1
    play chord(:A3, :minor), release: 0.5
    play chord(:A3, :minor), release: 1.5
    sleep 1
    play chord(:C3, :major)
    play chord(:C3, :major), release: 0.5
    sleep 1
  end
end

# "random phase "

in_thread do
  44.times do
    sleep 4
  end
  12.times do
    play choose([chord(:A3, :major), chord(:G3, :major), chord(:D3, :major)]), amp: (rrand(0.3, 1)), release: (rrand(0.1, 3))
    sleep 2
  end
end

in_thread do
  44.times do
    sleep 4
  end
  12.times do
    sample  :drum_cymbal_closed, amp: (rrand(0.2, 0.5))
    sleep 2
  end
end

in_thread do
  44.times do
    sleep 4
  end
  24.times do
    sample :drum_snare_soft, amp: 0.5
    sleep 1
  end
end

in_thread do
  44.times do
    sleep 4
  end
  6.times do
    cue [:high, :mid, :low, :g].choose
    sleep 4
  end
end

in_thread do
  sync :high
  sample :bass_trance_c, amp: rrand(0.1, 0.2), rate: rrand(0.4, 0.8)
  
end

in_thread do
  sync :mid
  sample :bass_voxy_hit_c, amp: rrand(0.1, 0.2),  rate: rrand(0.4, 0.8)
  
end

in_thread do
  sync :low
  sample  :bass_woodsy_c, amp: rrand(0.1, 0.2),  rate: rrand(0.4, 0.8)
end

in_thread do
  sync :g
  play sample :guit_em9
  sleep 4
  play sample :guit_e_fifths
end


# new tone
in_thread do
  50.times do
    sleep 4
  end
  4.times do
    2.times do
      4.times do
        play chord(:C3, :major), amp: 0.3
        sleep 0.5
      end
      play chord(:F3, :major), amp: 0.5
      sleep 1
      play chord(:D3, :minor), amp: 0.5
      sleep 2
    end
    1.times do
      play chord(:G3, :major), amp: 0.75
      sleep 0.5
      play chord(:F3, :major), amp: 0.5
      sleep 0.5
      play chord(:D3, :major), amp: 0.3
      sleep 0.5
      play chord(:C3, :minor), amp: 0.1
      sleep 0.5
    end
  end
end

in_thread do
  50.times do
    sleep 4
  end
  24.times do
    sample :elec_hollow_kick
    sleep 2
  end
end

in_thread do
  52.times do
    sleep 4
  end
  16.times do
    sample :drum_snare_soft, amp: 0.5
    sleep 1
  end
end

in_thread do
  52.times do
    sleep 4
  end
  8.times do
    sample :bd_808, amp: 2
    sleep 4
  end
end

#outro

in_thread do
  
  66.times do
    sleep 4
  end
  
  6.times do  # C maj, E maj, G maj, E min
    
    play chord(:C3, :major)
    sleep 2
    play chord(:E3, :major)
    sleep 2
    play chord(:G3, :major)
    sleep 2
    play chord(:E3, :minor)
    sleep 2
    
  end
end

##| # light snares 24-80
in_thread do
  64.times do
    sleep 4
  end
  112.times do
    
    sample :drum_snare_soft, amp: 0.25
    sleep 0.5
  end
end

##| # on-count cymbal 16-80
in_thread do
  62.times do
    sleep 4
  end
  
  27.times do
    
    sample :drum_cymbal_pedal
    sleep 2
  end
end

# crescendo build/ light tom
in_thread do
  68.times do
    sleep 4
  end
  
  120.times do
    
    sample :drum_tom_hi_soft, amp: 0.25, release: 0.5
    sleep 0.25
  end
end

# end
in_thread do
  70.times do
    sleep 4
  end
  2.times do
    sample :guit_em9
    sleep 4
    sample :guit_e_fifths
    sleep 4
  end
end










