%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveTextA = 
  \tweak X-offset -3
  \tweak Y-offset -1
  \etc
moveTextB = \tweak X-offset -6 \etc

slurShapeA = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (-1.5 . 0) (-1.5 . 1))
                        ) \etc

%%% Music %%%

global = {
  \time 4/4
  \key bf \major
}

rightHand = \relative {
  \global
  \sectionLabel "INTRODUCTION" bf4-\moveTextA ^\risoluto \ottava 1 <bf'' bf'>( 
    g'16 f ef d  \ottava 0 c bf g f |
  ef16 d c bf  g f ef d  \staffDown \voiceOne c bf g f  ef d c) r |
  \staffUp \oneVoice <bf' ef g>4. <a ef' a>8 <a d f>4. <d f bf>8 |
  <e bf' c>8[ r16 <ef a d>( <d bf'>8) r16 <f bf f'>](  <g bf ef g>8[) r16
    <a ef' a>( <a d f>8) r16 <d g bf>] |
  <e bf' c>4-. <f a f'>-. r \tuplet 6/4 { r16 ds,( e a g f } |
  f4) r4 r8 f'8( g d |
  f4.-> bf,8 ef16 bf' ef d  c bf a g |
  g4~ g16 f bf, c d8-.) r bf'8.->( df,16 |
  
  \barNumberCheck 9
  c4) c8.( c16 \tuplet 5/4 { c16 df c b c } ef8. d16 |
  c2->~) \stemDown c16( d c f,  \stemNeutral c' d ef e |
  f16 d ef! g  f d' c bf  a a' g f  d ef g, a |
  c16 bf \ottava 1 d' c  a bf f fs  a g f ef  \ottava 0 d[ c g) r32 bf]( |
  g,4.->) af8( \tuplet 5/4 { bf16 c bf af bf } c8.) g16_( |
  bf2)( a8) e'16[( f]  g f c d |
  ef!4) ef8.( ef16  ef d cs d  bf' a fs d |
  df2) df4.->( c8 |
  
  \barNumberCheck 17
  cf4) cf8.(^\pocoRit cf16 cf bf a bf \acciaccatura { bf8 } g'!16. f32 f,16 g |
  a4)~( \tuplet 3/2 { a8 c! bf } 
    << { a4.-> g8 | f4) } \new Voice { \voiceTwo  s4 e | f4 } >>
  c'->~( c16 ds f e  fs g d'! c |
  a8-.) r c,4->~( c16 ds f e  fs g d'! c |
  a8-.) r f4->~( f16 gf gs a  b c d ef) |
  f,16( g! a bf  b c d ef)  b( c d ef  e f fs g) |
  \ottava 1 f16( d' c a  \voiceOne f-.) r r8 r16 \ottava 0 d( bf g f-.) r r8 |
  r16 d( bf g  f-.) r r8  r16 \staffDown d( bf g  f-.) r r8 |
  
  \barNumberCheck 25
  r8 c16( ef  a) \staffUp r c( ef  a) r c( ef  a) r8 \ottava 1 a'16 |
  \oneVoice ef'16 a,( ef' d  df) g,( df' c  b) f( b bf  a!) ef!( a af |
  g16) df( g gf  f) b,( f' e  \ottava 0 ef) a,!( ef' d  df) g,!( df' c |
  b16) f( b bf  a!) ef( a af  g) df( g gf  f) b,-\slurShapeA \( f' e |
  ef16 a,! d f  ef a, e' g  f a, d f  ef a, e' g |
  \afterGrace 15/16 { \grace { e16[( f]) } f1\)\startTrillSpan } 
    { e16[^(\stopTrillSpan f] } |
  a'16[)\moveTextB ^\pocoRall r32 g( ef16) r32 d](  f16[) r32 ef( c16) r32 gs](
    d'16[) r32 c( a16) r32 d,](  a'16[) r32 g( ef16) r32 c]( |
  a1)\fermata
  \bar "||"
}

leftHandUpper = \relative {
  s1 * 6 |
  \voiceThree 
  s8 g2*1/4( bf4.*1/3 ef4*1/2 \hideNoteHead g8) s4. |
  s8 f,2*1/4( bf4.*1/3 d4*1/2 \hideNoteHead f8) s4. |
  
  \barNumberCheck 9
  ef,2 f |
  s1 |
  s8 f4 s8  s8 f4 s8 |
  % No clef change, SrcB
  s8 bf4 s8  s8 bf4 s8 |
  e,2 s |
  f2_~ \oneVoice <f c' f>8 s s4 |
  s1 * 2 |
  
  \barNumberCheck 17
  s1 |
  \voiceThree 
  s4. d'4.*1/3 c,2 |
  % Tied f in the lower voice, SrcB
  f2_~ \voiceFour f4 s4 |
  \voiceThree r8 <a f'>( <bf gf'> <a f'> <g! bf e>4) s |
}

leftHandLower = \relative {
  <bf,, bf'>4 \clef treble <d'' f bf d> r2 |
  r2 \clef bass r4 r8 r16 \voiceFour bf, |
  \oneVoice <ef, ef'>4. <c c'>8 <d d'>4. <g, g'>8 |
  <c c'>8[ r16 <f f'>( <g g'>8) r16 <d d'>](  <ef ef'>8[) r16 <c c'>( <d d'>8)
    r16 <g, g'>] |
  <c c'>4-. <f, f'>-. r <f'' bf df>->_~( |
  <f a c>4) r r2 |
  g,8-. g' bf ef  g r r4 |
  f,,8-. f' bf d  f r r4 |
  
  \barNumberCheck 9
  ef,8 <bf' gf'>8 q q  f <bf f'> q q |
  gf8[-. <bf ef>] g[-. <bf e>] <af ef'>4 r | 
  bf,8-. f' <bf d f> r  c,-. f <c' ef f> r |
  % No clef change, SrcB
  d,8-. bf' <f' bf> r  ef,-. bf' <c g'> r |
  e,8 <bf' c> q q  g[ <bf c>] c,[-. <bf' e>] |
  f8 <d' f> q <df f> s8 r r4 |
  r8 g,8( bf ef)  r fs,( a d) |
  r8 f,!( af df)  r e,( g c) |
  
  \barNumberCheck 17
  r8 ef,!( gf cf)  r d,!( f bf) |
  r8 c,!( f d')  c,( g' bf c |
  f,8) a <bf gf'>( <a f'>  \voiceThree <g! bf e>4) \oneVoice r |
  \voiceFour f2->~ f4 \oneVoice r |
  f8-! \clef treble <c' a'>[( <df bf'> <c a'>] <ef! c'>4) r |
  \clef bass <f,, f'>8 \clef treble <c'' a'>8[( <ef c'> <c a'>] <f ef'>4) r |
  r4 \staffUp \voiceFour r16 g''( ef c  a-.) r r8  r16 g( ef c |
  a16-.) r r8  r16 g( ef c  a-.) \staffDown \clef bass r r8  r16 g( ef c |
  
  \barNumberCheck 25
  f,8-.) r  r16 f'16 \staffUp r8  r16 f' r8  r16 f' c' r |
  \staffDown \clef treble \oneVoice r8 f16[( b, bf8-.])  e16[( a, af8-.]) 
    d16[( g, fs8-.]) c'16[( f, |
  e8-.]) bf'16[( ef, d!8-.]) af'16[( df, c8-.]) f16[( b, bf8-.]) e16[( a,! |
  af8-.])  d16[( g, fs8-.])  c'16[( f, e8-.])  bf'16[( ef, d8-.])
    af'16( df,) |
  \clef bass c8( f,) r4 <c' ef>8( f,) r4 |
  <c' ef! a>4 f,,-. r \clef treble <c'' ef a>-.( |
  <ef a c>4-.) r4 r2 |
  \clef bass <f, c' ef>1\fermata |
}

leftHand = \relative {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  \mergeDifferentlyHeadedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override TextScript.Y-offset = -0.5
  \tag layout { s4 } \tag midi { s4\f } s2.\sf |
  s1 |
  s1^\conForza |
  s1\< <>\! |
  s2 s\p |
  s2 s8 s4.^\dolce |
  s1 * 2 |
  
  \barNumberCheck 9
  s1 |
  s8 s4.^\legato s4 s\< <>\! |
  s1 * 3 |
  s2. s4\> <>\! |
  s2 s8.\< s16\! s4\> <>\! |
  s1 |
  
  \barNumberCheck 17
  s2 s8.\< s16\! s4 |
  s1 |
  s2 s16 s8.\< s16\! s8.\> <>\! |
  s2 s16 s8.\< s8 s\! |
  s2 s\< |
  s4\> s\> s\> s\> <>\!
  s1 * 2 |
  
  \barNumberCheck 25
  s1 |
  s2. s16 s8.\dim |
  s1 |
  \tag layout { s2... s16\! } \tag midi { s1 }
  \tag layout { s1 } \tag midi { s1\p } |
  s1 |
  s1^\leggierissimo
  s1 |
}

pedal = {
  s4\sd s s8\su s4. |
  s1 * 5 |
  s2.\sd s4\su |
  s2.\sd s4\su |
  
  \barNumberCheck 9
  s1 * 2 |
  s4.\sd s8\su s4.\sd s8\su |
  s4.\sd s8\su s4.\sd s8\su |
  s2. s8.\sd s16\su |
  s1 * 3 |
  
  \barNumberCheck 17
  s1 * 4 |
  s2.\sd s4\su |
  s2.\sd s4\su |
  s1 * 2 |
  
  \barNumberCheck 25
  s1\sd |
  s1\su |
  s1 * 2 |
  s1\sd |
  s1 |
  s1\su |
  s1 |
}

tempi = {
  \once \override Score.MetronomeMark.Y-offset = 9
  \tempo "Allegro maestoso" 4 = 116
  s1 * 8 |
  
  \barNumberCheck 9
  s1 * 8 |
  
  \barNumberCheck 17
  s1 * 8 |
  
  \barNumberCheck 25
  s1 * 6 
  \set Score.tempoHideNote = ##t
  \tempo 4 = 108
  s4 \tempo 4 = 104 s \tempo 4 = 100 s \tempo 4 = 96 s |
  \tempo 4 = 92
  s1 |
}

forceBreaks = {
  % page 1
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 3 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\pageBreak
  
  % page 2
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  \repeat unfold 2 { s1\noBreak } s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  s1\noBreak s1\break\noPageBreak
  \grace { s8 } \repeat unfold 2 { s1\noBreak } s1\pageBreak
}

introductionNotes =
\score {
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \tempi
    \new Devnull \forceBreaks
  >>
  \layout {}
}

\include "articulate.ly"

introductionMidi =
\book {
  \bookOutputName "introduction"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
