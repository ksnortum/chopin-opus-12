%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"

% Scheme

subdivide = 
#(define-music-function (note) (ly:music?)
   #{
     \set stemRightBeamCount = #1 
     #note
     \set stemLeftBeamCount = #1
   #})

pocoCresc = #(make-music 'CrescendoEvent 'span-direction START 'span-type 
                         'text 'span-text "poco cresc.")

semprePuiAnimatoMarkup = \markup \whiteout \pad-markup #0.5 
  "sempre più animato e crescendo"
semprePuiAnimato = 
  #(make-music 'CrescendoEvent 'span-direction START 'span-type 'text 
               'span-text semprePuiAnimatoMarkup)

% Definitions

staffDown = \change Staff = "lower"
staffUp   = \change Staff = "upper"

vsd = {
  \change Staff = "lower"
  \voiceTwo 
}

vsu = {
  \change Staff = "upper"
  \voiceOne 
}

sd = \sustainOn
su = \sustainOff

hideNoteHead = \once {
  \omit Stem
  \omit Dots
  \omit Flag
  \hideNotes
  \override NoteColumn.ignore-collision = ##t
}

tupletOff = {
  \omit TupletBracket
  \omit TupletNumber
}

tupletOn = {
  \undo \omit TupletBracket
  \undo \omit TupletNumber
}

trillUnderSlur = -\tweak outside-staff-priority ##f \etc

% Markup

risoluto = \markup \large \italic "risoluto"
conForza = \markup \large \italic "con forza"
conAnima = \markup \large \italic "con anima"
legato = \markup \large \italic "legato"
leggierissimo = \markup \large \italic "leggierissimo"
leggieriss = \markup \large \italic "leggieriss."
leggiero = \markup \large \italic "leggiero"
dolce = \markup \large \italic "dolce"
dolcissimo = \markup \large \italic "dolcissimo"
dolciss = \markup \large \italic "dolciss."
delicatissimo = \markup \large \italic "delicatissimo"
delicatiss = \markup \large \italic "delicatiss."
scherzando = \markup \large \italic "scherzando"
sempre = \markup \large \italic "sempre"
rit = \markup \large \italic "rit."
rall = \markup \large \italic "rall."
ten = \markup \large \italic "ten."
pocoRall = \markup \large \italic "poco rall."
pocoRit = \markup \large \italic "poco rit."
pocoStretto = \markup \large \italic "poco stretto"
aTempo = \markup \large \italic "a tempo"
conFuoco = \markup \large \italic "con fuoco"
trillNatural = \markup \tiny \natural
