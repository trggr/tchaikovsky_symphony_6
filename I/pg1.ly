\version "2.24.0"

\header {
  title = "Symphony No. 6 in B minor, Op. 74"
  subtitle = "First Movement: Adagio"
  composer = "Pyotr Ilyich Tchaikovsky"
}

\score {
  \new GrandStaff <<

    \new Staff \with { instrumentName = "Fagotto" } <<
      \set Staff.midiInstrument = "bassoon"
      \relative c, { 
        \key b \minor
        \clef bass
        \time 4/4
        \tempo 4 = 54
        
        r2 r4 e8 (fis)       | %1 
        g4 (fis2) fis8 (g8)  | %2
        a4 (g2) g8 (a8)        | %3
        b4     (ais2.)         | %4
        b1 ~                   | %5
        b8 r8  r4 r2           | %6
        r2 r4     e8 (fis)     | %1 
        g4 (fis2) fis8 (g8)    | %2
        
      }
    >>

    \new Staff \with { instrumentName = "Viola" } <<
      \set Staff.midiInstrument = "viola"
      \relative c {
        \clef alto
        \key b \minor
        \time 4/4
        \tempo 4 = 54
        
        r1              |
        r1              |
        r1              |
        r2 r4 e8 (fis)  |
        g2   (fis) ~    |
        fis8 r8 r4 r2   |
        r1              |
        r1
      }
    >>

    \new Staff \with {
      instrumentName = \markup { \column { "Clarinet" "in A" } }
      } <<
      \set Staff.midiInstrument = "clarinet"
      % Transpose written pitches for Clarinet in A (sounds a minor third lower)
      \transpose a c {
        \relative c' {
          \clef treble
          \key b \minor
          \time 4/4
          \tempo 4 = 54
          
          r1 | r1 | r1      | 
          r2 r4 \mf  e8 fis |
          g2 fis2           |
          fis8 \pp r8 r4 r2 |
          r1 | r1 
        }
      }
    >>
    
    \new Staff \with { instrumentName = "Viola 2" } <<
      \set Staff.midiInstrument = "viola"
      \relative c {
        \clef alto
        \key b \minor
        \time 4/4
        \tempo 4 = 54
        
        r1              |
        r1              |
        r1              |
        e1              |
        dis1 ~          |
        dis8 r8 r4 r2   |
        r1              |
        r1
      }
    >>

    \new Staff \with { instrumentName = "Contrabass 1" } <<
      \set Staff.midiInstrument = "contrabass"
        \relative c {
          \clef "bass_8"
          \key b \minor
          \time 4/4
          \tempo 4 = 54
          
          b1 \pp ~    |
          b ~         |
          b           |
          g           |
          a           |
          a8 r8 r4 r2 |
          b1 \pp ~    |
          b ~         |
        }
    >>
    
    \new Staff \with { instrumentName = "Contrabass 2" } <<
      \set Staff.midiInstrument = "contrabass"
      \transpose c c, {
        \relative c {
          \clef "bass_8"
          \key b \minor
          \time 4/4
          \tempo 4 = 54
          
          e1 \pp ~   |
          e2 dis2 ~  |
          dis2 d2 ~  |
          d2 cis4 c4 |
          g1 ~ | g8 r8 r4 r2 |
          e1 \pp ~   |
          e2 dis2 ~  |
        }
      }
    >>
        
  >>
  \layout {}
  \midi {}
}
