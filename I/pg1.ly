\version "2.24.0"
\language "italiano"

\paper {
  #(set-paper-size "tabloid")
}

global = {
  \time 4/4
  \tempo 4 = 54
  \key si \minor
}

nineBarBreak = {
  \repeat unfold 10 { % Unfold for a repeating pattern of 10 times
    s1*8  % Spacer rests for 8 full measures
    s1 | \break % Spacer rest for the 9th measure, followed by a line break
  }
}

\header {
  title = "Symphony No. 6"
  subtitle = "First Movement: Allegro non troppo"
  composer = "Peter Ilyich Tchaikovsky"
}

\score {
  \new GrandStaff <<

      % Add the invisible voice with the break pattern
      \new Voice { \nineBarBreak }

      \new Staff \with {instrumentName = "Oboe 1"
                        shortInstrumentName = "Ob1"
                        midiInstrument = "oboe"
      } <<
        \clef treble
        \global
        \relative do'' {
           \include "oboe_01.ly"
        }
      >>

      \new Staff \with {instrumentName = "Oboe 2"
                        shortInstrumentName = "Ob2"
                        midiInstrument = "oboe"
      } <<
        \clef treble
        \global
        \relative do'' {
           \include "oboe_02.ly"
        }
      >>

      
      \new Staff \with {instrumentName = "Clarinet 1 in A"
                        shortInstrumentName = "Cl.1"
                        midiInstrument = "clarinet"
      } <<
        \transpose la do' {
        \clef treble
        \global
        
        % The Clarinet in A player reads this key: D minor (one flat: B-flat)
        
        % The Clarinet in A part is written in D minor
        % D minor Natural Scale (d, e, f, g, a, bes, c)
        \relative re {
          \include "clarinet_01.ly"
        }
      }
      >>

      \new Staff \with {instrumentName = "Clarinet 2 in A"
                        shortInstrumentName = "Cl.2"
                        midiInstrument = "clarinet"
      } <<
        \transpose la do' {
        \clef treble
        \global
        
        \relative re' {
          \include "clarinet_02.ly"
        }
      }
      >>


    \new Staff \with { instrumentName = "Fagotte"
                       shortInstrumentName = "Fag."} <<
      \set Staff.midiInstrument = "bassoon"
        \relative do, {
        \global
        \clef bass
        \include "fagotte_01.ly"
      }
    >>

    \new Staff \with { instrumentName = "Horn in F"
                       shortInstrumentName = "Hrn."} <<
      \set Staff.midiInstrument = "french horn"
      \transpose fa do' { % Transpose the sounding F to written C
        \relative do' {
          \include "horn1_01.ly"
        }
      }
  >>
  
    
    \new Staff \with { instrumentName = "Viola 1"
                       shortInstrumentName = "Vl.1"
                     } <<
      \set Staff.midiInstrument = "viola"
      \relative do {
        \clef alto
        \global
        \include "viola1_01.ly"
      }
    >>

    \new Staff \with { instrumentName = "Viola 2"
                       shortInstrumentName = "Vl.2"
    } <<
      \set Staff.midiInstrument = "viola"
      \relative do {
        \clef alto
        \global
        \include "viola2_01.ly"
      }
    >>

    \new Staff \with { instrumentName = "Contrabass 1"
                       shortInstrumentName = "Cb.1"} <<
      \set Staff.midiInstrument = "contrabass"
        \relative do {
          \clef "bass_8"
          \global
          \include "contrabass1_01.ly"
        }
    >>

    \new Staff \with { instrumentName = "Contrabass 2"
                       shortInstrumentName = "Cb.2"
    } <<
      \set Staff.midiInstrument = "contrabass"
      \transpose do do, {
        \relative do {
          \clef "bass_8"
          \global

          \include "contrabass2_01.ly"
        }
      }
    >>

  >>
  \layout {}
  \midi {}
}
