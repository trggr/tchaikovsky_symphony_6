\version "2.24.0"

\paper {
  #(set-paper-size "tabloid")
}

global = {
  \time 4/4
  \tempo 4 = 54
  \key b \minor
}

\header {
  title = "Symphony No. 6"
  subtitle = "First Movement: Adagio"
  composer = "Peter Ilyich Tchaikovsky"
}

\score {
  \new GrandStaff <<

    \new Staff \with { instrumentName = "Clarinet in A" } <<
      \set Staff.midiInstrument = "clarinet"
      \global
      \transpose a c {
        \relative c' {
          \clef treble
          \include "clarinet_01.ly"
        }
      }
    >>

    \new Staff \with { instrumentName = "Fagotte" } <<
      \set Staff.midiInstrument = "bassoon"
        \relative c, { 
        \global
        \clef bass
        \include "fagotte_01.ly"
      }
    >>

    \new Staff \with { instrumentName = "Viola 1" } <<
      \set Staff.midiInstrument = "viola"
      \relative c {
        \clef alto
        \global
        \include "viola1_01.ly"        
      }
    >>
    
    \new Staff \with { instrumentName = "Viola 2" } <<
      \set Staff.midiInstrument = "viola"
      \relative c {
        \clef alto
        \global
        \include "viola2_01.ly"
      }
    >>

    \new Staff \with { instrumentName = "Bass 1" } <<
      \set Staff.midiInstrument = "contrabass"
        \relative c {
          \clef "bass_8"
          \global
          \include "contrabass1_01.ly"
        }
    >>
    
    \new Staff \with { instrumentName = "Bass 2" } <<
      \set Staff.midiInstrument = "contrabass"
      \transpose c c, {
        \relative c {
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
