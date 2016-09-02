#(set-global-staff-size 18)

\header {
  tagline = ""
}

\paper {
  indent = 0\mm
  %line-width = 20\mm
    paper-width = 7\cm
    paper-height = 3\cm
    left-margin = 5\mm
    top-margin = 5\mm
    bottom-margin = 5\mm
  ragged-last-bottom = ##f
  ragged-bottom = ##f
    
  print-page-number = ##f
  
  #(define fonts
    (set-global-fonts
      #:music "haydn"
      #:brace "haydn"
      #:roman "IM FELL Great Primer Pro"
      #:sans "sans-serif"
      #:typewriter "monospace"
      #:factor (/ staff-height pt 20)
  ))
  
  #(include-special-characters)
  
}