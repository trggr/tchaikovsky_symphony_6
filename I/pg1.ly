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

\layout {
  \context {
    \Staff
    \RemoveAllEmptyStaves  % Hides all empty staves, including on the first system
  }
}

\header {
  title = "Symphony No. 6"
  subtitle = "First Movement: Allegro non troppo"
  composer = "Peter Ilyich Tchaikovsky"
}

\score {
  \new GrandStaff <<

      \new Staff \with {instrumentName = "Flute 1"
                        shortInstrumentName = "Fl.1"
                        midiInstrument = "flute"
      } <<
        \clef treble
        \global
        \relative do'' {
           \include "flute_01.ly"
        }
      >>

      \new Staff \with {instrumentName = "Flute 2"
                        shortInstrumentName = "Fl.2"
                        midiInstrument = "flute"
      } <<
        \clef treble
        \global
        \relative do'' {
           \include "flute_02.ly"
        }
      >>

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
        % transpose MIDI output down a minor third
        \transposition la
        \relative do' {
          \key re \minor
          \time 4/4
        
          \include "clarinet_01.ly"
        }
      >>

      \new Staff \with {instrumentName = "Clarinet 2 in A"
                        shortInstrumentName = "Cl.2"
                        midiInstrument = "clarinet"
      } <<
        % transpose MIDI output down a minor third
        \transposition la
        \relative do' {
          \key re \minor
          \time 4/4
        
          \include "clarinet_02.ly"
        }
      >>
      

   \new Staff \with { instrumentName = "Fagotte 1"
                      shortInstrumentName = "Fag.1"} <<
     \set Staff.midiInstrument = "bassoon"
       \relative do, {
       \global
       \clef bass
       \include "fagotte_01.ly"
     }
   >>

   \new Staff \with { instrumentName = "Fagotte 2"
                      shortInstrumentName = "Fag.2"} <<
     \set Staff.midiInstrument = "bassoon"
       \relative do, {
       \global
       \clef bass
       \include "fagotte_02.ly"
     }
   >>
   
    \new Staff \with { instrumentName = "Horn 1 in F"
                       shortInstrumentName = "Hrn.1"
                       \transposition fa
    } <<
      \set Staff.midiInstrument = "french horn"
        \key do \major
        \clef treble
        
        \relative do' {
          \include "horn1_01.ly"
      }
  >>

    \new Staff \with { instrumentName = "Horn 2 in F"
                       shortInstrumentName = "Hrn.2"
                       \transposition fa
    } <<
      \set Staff.midiInstrument = "french horn"
        \key do \major
        \clef treble
        
        \relative do' {
          \include "horn2_01.ly"
      }
  >>

    \new Staff \with { instrumentName = "Violin1.1"
                      shortInstrumentName = "Viol1.1"
                    } <<
     \set Staff.midiInstrument = "violin"
     \relative do {
       \clef treble
       \global
       \include "violin1_01.ly"
     }
    >>

    \new Staff \with { instrumentName = "Violin1.2"
                      shortInstrumentName = "Viol1.2"
                    } <<
     \set Staff.midiInstrument = "violin"
     \relative do {
       \clef treble
       \global
       \include "violin1_02.ly"
     }
    >>

    \new Staff \with { instrumentName = "Violin2.1"
                      shortInstrumentName = "Viol2.1"
                    } <<
     \set Staff.midiInstrument = "violin"
     \relative do {
       \clef treble
       \global
       \include "violin2_01.ly"
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

    \new Staff \with { instrumentName = "Violoncello 1"
                       shortInstrumentName = "Vc.1"
    } <<
      \set Staff.midiInstrument = "cello"
      \relative do {
        \clef bass
        \global
        \include "cello_01.ly"
      }
    >>

    \new Staff \with { instrumentName = "Violoncello 2"
                       shortInstrumentName = "Vc.2"
    } <<
      \set Staff.midiInstrument = "cello"
      \relative do {
        \clef bass
        \global
        \include "cello_02.ly"
      }
    >>


    \new Staff \with { instrumentName = "Contrabass 1"
                       shortInstrumentName = "Cb.1"
                       midiMinimumVolume = #0.1  % Adjust the minimum (for soft dynamics)
                       midiMaximumVolume = #0.5  % Adjust the maximum (for loud dynamics)
    } <<
      \set Staff.midiInstrument = "contrabass"
        \relative do {
          \clef "bass_8"
          \global
          \include "contrabass1_01.ly"
        }
    >>

    \new Staff \with { instrumentName = "Contrabass 2"
                       shortInstrumentName = "Cb.2"
                       midiMinimumVolume = #0.1  % Adjust the minimum (for soft dynamics)
                       midiMaximumVolume = #0.5  % Adjust the maximum (for loud dynamics)
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
