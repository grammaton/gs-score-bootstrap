\version "2.19.15"

\include "_legendasetup.ly"
\include "../_musicalsettings.ly"
\include "../_custom_vibrato.ly"
\include "legendacodes.ly"

%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ BOOK ++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

\score {
      \new Staff \with {
      %instrumentName = "Sax"
      %\remove "Time_signature_engraver"
      } { \asaxCvoceunisono }
      
  
    \layout {
      \context {
        \Score
        \accidentalStyle forget
        \remove "Bar_number_engraver"
        \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
        \override Clef #'stencil = ##f
        \override TimeSignature #'transparent = ##t
        \override Beam #'damping = #4 % ------------ INCLINAZIONE TRAVATURA
        \override Flag #'stencil = #modern-straight-flag
        \override Stem #'length-fraction = #'1.2
        \override NoteHead #'font-size = #-1
        \override DynamicLineSpanner.staff-padding = #3
        
      }
    }

     
    %\header { piece = \markup \fontsize #3 { "Legenda"}}
} 