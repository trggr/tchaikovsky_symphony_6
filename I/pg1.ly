\version "2.24.4"
\language "italiano"

#(set-global-staff-size 18) % Default is 20. Try 18, 16, or 14.

\paper {
  #(set-paper-size "tabloid")
%  page-breaking = #ly:minimal-breaking
}

#(set-default-paper-size "legallandscape")

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
   \new StaffGroup <<


      \new StaffGroup \with {instrumentName = "Floten 2."
                            shortInstrumentName = \markup { \column {"Fl." "div." } }
                            midiInstrument = "flute"
      } <<
          \new Staff \with {%instrumentName = "Flute 1"
                            %shortInstrumentName = "Fl.1"
                            %midiInstrument = "flute"
          } <<
            \clef treble
            \global
            \relative do'' {
               \include "flute_01.ly"
            }
          >>
    
          \new Staff \with {%instrumentName = "Flute 2"
                            %shortInstrumentName = "Fl.2"
                            %midiInstrument = "flute"
          } <<
            \clef treble
            \global
            \relative do'' {
               \include "flute_02.ly"
            }
          >>
      >>
      \new Staff \with {instrumentName = "KL. Fl."
                        shortInstrumentName = "Kl.Fl"
                        midiInstrument = "flute"
      } <<
        \clef treble
        \global
        \relative do'' {
           \include "flute_03.ly"
        }
      >>
      
      \new StaffGroup \with {instrumentName = "Oboen 1.2"
                             shortInstrumentName = \markup { \column {"Ob." "div." } }
                             midiInstrument = "oboe"
      } <<
          \new Staff \with {%instrumentName = "Oboe 1"
                            %shortInstrumentName = "Ob.1"
          } <<
            \clef treble
            \global
            \relative do'' {
               \include "oboe_01.ly"
            }
          >>
    
          \new Staff \with {%instrumentName = "Oboe 2"
                            %shortInstrumentName = "Ob.2"
                            
          } <<
            \clef treble
            \global
            \relative do'' {
               \include "oboe_02.ly"
            }
          >>
      >>
      
      \new StaffGroup \with {instrumentName = "Clarinet in A"
                            shortInstrumentName = \markup { \column {"Klar." "div." } }
                            midiInstrument = "clarinet"
      } <<
          \new Staff \with {%instrumentName = "Clarinet 1 in A"
                            %shortInstrumentName = "Cl.1"
                            %midiInstrument = "clarinet"
          } <<
            % transpose MIDI output down a minor third
            \transposition la
            \relative do' {
              \key re \minor
              \time 4/4
            
              \include "clarinet_01.ly"
            }
          >>
    
          \new Staff \with {%instrumentName = "Clarinet 2 in A"
                            %shortInstrumentName = "Cl.2"
                            %midiInstrument = "clarinet"
          } <<
            % transpose MIDI output down a minor third
            \transposition la
            \relative do' {
              \key re \minor
              \time 4/4
            
              \include "clarinet_02.ly"
            }
          >>
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
                      shortInstrumentName = "Fag.2"
                      midiInstrument = "bassoon"} <<
       \relative do, {
       \global
       \clef bass
       \include "fagotte_02.ly"
     }
   >>
   
    \new StaffGroup \with {instrumentName = "Horn in F"
                            shortInstrumentName = \markup { \column {"Hrn." "in F." } }
                            midiInstrument = "french horn"
    } <<
        \new Staff \with {% instrumentName = "Horn 1 in F"
                          % shortInstrumentName = "Hrn.1"
                           \transposition fa
        } <<
            \key do \major
            \clef treble
            
            \relative do' {
              \include "horn1_01.ly"
          }
        >>
    
        \new Staff \with {% instrumentName = "Horn 2 in F"
                          % shortInstrumentName = "Hrn.2"
                           \transposition fa
        } <<
            \key do \major
            \clef treble
            
            \relative do' {
              \include "horn2_01.ly"
          }
        >>
    >>
    
    \new StaffGroup \with {instrumentName = "Violin 1"
                            shortInstrumentName = \markup { \column {"Viol.1" "div." } }
                            midiInstrument = "violin"
                      midiChorusLevel = #0.3
                      midiPanPosition = #-0.2
    } <<
        \new Staff \with {% instrumentName = "Violin1.1"
                          %shortInstrumentName = "Viol1.1"
                          %midiInstrument = "violin"
                        } <<
         \relative do {
           \clef treble
           \global
           \include "violin1_01.ly"
         }
        >>
    
        \new Staff \with {% instrumentName = "Violin1.2"
                          %shortInstrumentName = "Viol1.2"
                          %midiInstrument = "violin"
                          %midiChorusLevel = #0.4
                        } <<
         \relative do {
           \clef treble
           \global
           \include "violin1_02.ly"
         }
        >>
    >>
      
    \new Staff \with { instrumentName = "Violin 2"
                      shortInstrumentName = "Viol.2"
                      midiInstrument = "violin"
                      midiChorusLevel = #0.4
                    } <<
     \relative do {
       \clef treble
       \global
       \include "violin2_01.ly"
     }
    >>

      \new StaffGroup \with {instrumentName = "Viola <divisi>"
                             shortInstrumentName = \markup { \column {"Vla." "div." } }
                             midiInstrument = "viola"
                             midiChorusLevel = #0.3
                             midiPanPosition = #0.3
%                             midiMinimumVolume = #0.1
%                             midiMaximumVolume = #0.5
      } <<
        \new Staff \with { 
                        } <<
         \relative do {
           \clef alto
           \global
           \include "viola1_01.ly"
         }
        >>
    
        \new Staff \with { %instrumentName = "Viola 2"
                           %shortInstrumentName = "Vl.2"
                           %midiChorusLevel = #0.4
                           %midiPanPosition = #0.3
        } <<
          \relative do {
            \clef alto
            \global
            \include "viola2_01.ly"
          }
        >>
      >>
   
      \new StaffGroup \with {instrumentName = "Violoncello"
                             shortInstrumentName = \markup { \column {
                                                        "Vc."
                                                        "div."
                                                      }
                                                    }
                             midiChorusLevel = #0.3
                             midiInstrument = "viola"
      } <<
          \new Staff \with { %instrumentName = "Violoncello 1"
                             %midiChorusLevel = #0.3
                             %shortInstrumentName = "Vc.1"
          } <<
            \set Staff.midiInstrument = "cello"
            \relative do {
              \clef bass
              \global
              \include "cello_01.ly"
            }
          >>
      
          \new Staff <<
            \set Staff.midiInstrument = "cello"
            \relative do {
              \clef bass
              \global
              \include "cello_02.ly"
            }
          >>
      >>

    \new StaffGroup \with {instrumentName      = "Contrabass <divisi>"
                           shortInstrumentName = \markup { \column {"Kb." "div." } }
                           midiChorusLevel = #1
                           midiInstrument = "contrabass"
                           % midiInstrument = "pizzicato strings"
                           midiMinimumVolume = #0.1
                           midiMaximumVolume = #0.5
    } <<
        \new Staff <<
            \relative do {
              \clef "bass_8"
              \global
              \include "contrabass1_01.ly"
            }
        >>
    
        \new Staff <<
          \transpose do do, {
            \relative do {
              \clef "bass_8"
              \global
              \include "contrabass2_01.ly"
            }
          }
        >>
    >>

  >>

  \midi {}
  
  \layout {}

}
