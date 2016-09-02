%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ INTRODUZIONE ++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

asaxSignintro = \relative c' {
  \cadenzaOn
  \override TextSpanner.style = #'line
  \override TextSpanner.thickness = #4
  \override TextSpanner.bound-details.left.padding = #2.7
  
  \textSpannerDown
  
 s8\fff^\markup{\strokeUp } \startTextSpan s4 s4^\markup{
     \italic "suono teso e senza variazioni"}^\markup{
     \italic "con i denti"} s2 s2 \stopTextSpan
  
\cadenzaOff
\break \bar ""    
  
}

%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ FINALE ++++++++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++


  strokeDownsign = \markup\center-column{
  \combine \raise #-3.1 \magnify #0.7 \fontsize #6 
  \arrow-head #Y #DOWN ##t 
  \postscript #"0.2 setlinewidth 1 setlinecap [0 0] -1 0 9.4 moveto 0 -11.2 rlineto stroke" 
  }
  
asaxfinalesign = \relative c' {
  \cadenzaOn
  
  s1
  
  
  \myBreak
  
  \vibrato #'(5 4 3 2 1 1 ) #3
  \once\override TrillSpanner #'extra-offset = #'(-.35 . 3.5)	 %questo aggiusta la posizione
  s8_\markup{\strokeDownsign }\startTrillSpan s8 s4 s1 s2^\markup{\italic "al trillo di meccaniche"}  s1 s2 \stopTrillSpan
  
  \cadenzaOff
\break \bar ""
        
}

%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++ A MOLTEPLICI DIREZIONI ++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

asaxAglissato = \relative c' {
 
  \cadenzaOn

    \override Glissando.style = #'zigzag
    \override Glissando.zigzag-length = #'1
    \override Glissando.zigzag-width = #'2
    \stemNeutral
    aes'4\glissando s1 \hideNotes a,4 \unHideNotes


\cadenzaOff
\break \bar ""

}


%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%++++++++++++++++++++++++++++++++++++++++++++++ C I SUOI NON LI DIMENTICHERÒ ++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



asaxCglissarmonico = \relative c' {
  
  \cadenzaOn
  \autoBeamOff
  
  \once \override Glissando.thickness = #2
  \once \override Glissando.bound-details.left.Y = #.6
  \override Stem #'transparent = ##t
  <c~ c'\harmonic>4\glissando\( 
    \once \override Glissando.thickness = #2
    \once \override Glissando.bound-details.right.Y = #.6
    c4~\glissando
    \once \override Glissando.thickness = #2
    \once \override Glissando.bound-details.left.Y = #.6
    <c~ c'\harmonic>4\glissando
    \once \override Glissando.thickness = #2
    \once \override Glissando.bound-details.right.Y = #.6
    c4~\glissando
    \once \override Glissando.thickness = #2
    \once \override Glissando.bound-details.left.Y = #.6
    <c c'\harmonic>4
    \override Stem #'transparent = ##f
    c'8.--\)
    
    \cadenzaOff
\break \bar ""

}

asaxCvoce = \relative c' {
  
  \cadenzaOn
  \autoBeamOff
\new Voice <<
       \mergeDifferentlyHeadedOn
       \override NoteColumn.ignore-collision = ##t
       { \override Stem #'length-fraction = #'1.7
         \stemDown dis'4( d!8)
         \override Stem #'length-fraction = #'2
         fis4--
         \override Stem #'length-fraction = #'1.7
         dis8( d!) } \\
       { \whispernostemOn e,4~^\markup{\italic "poca voce"}\sf\> e8 e4 e8~ e8\p \whisperOff } s1
    >>
}

asaxCvoceunisono = \relative c' {
  
  \cadenzaOn
  \autoBeamOff
    \whisperOn bes8\ff \whisperOff s1 s1
}




asaxCcluster = \relative c' {
  
  \cadenzaOn
  \autoBeamOff
\stemUp
         \override Stem #'transparent = ##f
         \once \override Flag.stencil = #weight-flag
         \override Stem #'length-fraction = #'1
         c64 ^\markup {
    \override #'(size . .3) {
      \woodwind-diagram
        #'saxophone
        #'((cc . (one two three five six))
           (lh . ())
           (rh . (low-c)))
         }}
         s1
}

%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ D SCHEMA PRIMO ++++++
%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++



asaxDslap = \relative c' {
  
  \cadenzaOn
  \autoBeamOff
  \override NoteHead #'style = #'triangle
  
  c4\ff\>^\markup{\italic "Slap!"}
  s1 s1 s1 s1
}

asaxDglisvoce = \relative c' {
  
  \cadenzaOn
  \autoBeamOff
  
\override Stem #'transparent = ##t
	%\once \override NoteHead #'font-size = #4
	%\once \override	NoteHead #'style = #'harmonic-black
 	%d'1\f\>^\markup {\override #'(font-shape . italic) "cantato non intonato" }
  \new Voice <<
    \mergeDifferentlyHeadedOn
    \override NoteColumn.ignore-collision = ##t
    { \stemDown
      \override Stem #'length-fraction = #'1.2
      d'4\( s8
      
      \override Stem #'transparent = ##t
      \override NoteHead #'transparent = ##t
      d8\)
      \override NoteHead #'transparent = ##f
      b }
    \\
    { \stemNeutral
      \override Stem #'transparent = ##t
      s8
      %\override NoteHead #'transparent = ##f
      \override NoteHead #'font-size = #4
      \override NoteHead #'style = #'harmonic-black
      %\whisperOn
      \parenthesize d,4-\bendAfter #7
      %\whisperOff
      \override Stem #'transparent = ##f
      \override NoteHead #'transparent = ##f
      \repeat tremolo 2 {\stemDown \whisperOn d'16 d \whisperOff }
    }
  >>

}


asaxDsoffio = \relative c' {
  
  \cadenzaOn
  \autoBeamOff
  
  \override NoteHead #'style = #'cross
	c'4^\markup{\center-align \italic "soffio duro"} s4 b8[ a]
	\stopStaff s4 f 
	\override Stem #'transparent = ##t
	b4 
  
}

asaxDfraseggio = \relative c' {
  
  \cadenzaOn
  \autoBeamOff
  \override Stem #'transparent = ##t
  \stopStaff
  
  \revert NoteHead #'style
  \once \override Staff.Clef.color = #white
  \once \override Staff.Clef.layer = #-1
  \shape #'((1 . 0) (5 . 10) (-5 . -10) (0 . 0)) PhrasingSlur
  g''4^\markup{\center-align \sans "Sexy!"}\( s4
  \once \override NoteHead #'transparent = ##t
   \shape #'((0 . 0) (5 . 6) (-2 . 0) (-5 . -6)) PhrasingSlur
   g4\(\)
   s4
  \shape #'((1 . -2) (5 . -20) (10 . 12) (-5 . 10)) PhrasingSlur
  s4\(\) s4
  
}


asaxDreverse = \relative c' {
  
  \cadenzaOn
  \autoBeamOff
  \override TextSpanner.bound-padding = #1.0
  \override TextSpanner.style = #'line
  \override TextSpanner.bound-details.left.arrow = ##t
  \override TextSpanner.bound-details.left.padding = #3
  \override TextSpanner.bound-details.right.padding = #-7
  \override TextSpanner.Y-offset = #0
  
  s8\startTextSpan]) \stopStaff
  
  
   s4 s1^\markup{\italic "reverse 10''"} s1 s1 \stopTextSpan \startStaff s8
  
}