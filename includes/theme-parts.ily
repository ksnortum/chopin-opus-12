%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

moveTextA = 
  \tweak X-offset -3 
  \tweak Y-offset -1
  \etc
moveNoteA = \tweak NoteColumn.X-offset 0.25 \etc
moveTrillA = \once \override TrillSpanner.bound-details.left.padding = 0.5

slurShapeA = \shape #'((-1 . 2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeB = \shape #'((0 . -1) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeC = \shape #'(
                        ((0 . 1) (0 . 3) (0 . 3) (0 . 3))
                        ((0.5 . 0) (0.5 . 0) (0 . 0) (0 . 0))
                        ) \etc
slurShapeD = \shape #'((0.5 . 2.5) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeE = \shape #'((0 . 0) (0 . -2) (0 . -2) (0 . 1)) \etc
slurShapeF = \shape #'((0 . 0) (0 . 1) (0 . 1) (0 . 0)) \etc
slurShapeG = \shape #'((0 . 0) (0 . 3.5) (0 . 1) (0 . 0)) \etc
slurShapeH = \shape #'((2 . 0) (2 . 1) (2 . 1) (2 . 0)) \etc
slurShapeI = \shape #'((0 . 2.25) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeJ = \shape #'(
                        ((0 . 0) (0 . 0) (0 . 0) (0 . 0))
                        ((0 . 0) (0 . 0) (0 . 0) (-1 . 1))
                        ) \etc
slurShapeK = \shape #'((0.5 . 2.25) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeL = \shape #'((0.5 . 2.25) (0 . 0.5) (0 . 0) (0 . 0)) \etc
slurShapeM = \shape #'((0 . 1) (0 . -1) (0 . -1) (0 . 0)) \etc
slurShapeN = \shape #'((0.5 . 2.5) (0 . 1) (0 . 0) (0 . 0)) \etc
slurShapeO = \shape #'((0 . -2) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeP = \shape #'((0 . -0.5) (2 . 0) (0 . 0) (0 . 0)) \etc
slurShapeQ = \shape #'((0 . 0) (2 . 0) (0 . 0) (0 . 0)) \etc
slurShapeR = \shape #'((-0.75 . 0) (1 . 4) (0 . -2) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 6/8
  \key bf \major
}

rightHandUpper = \relative {
  \sectionLabel "THÈME" 
  \partial 8 f'8( |
  g4 a8 f4 bf8 |
  c4 d8 bf4) f8-\slurShapeA ( |
  g4 a8 f4 bf8 |
  <g c>4 <a d>8 bf4) r8 |
  d4-\slurShapeB ( c8 bf a g |
  \voiceOne c4 d8 ef4.) |
  d8( cs d bf4 a8 |
  \oneVoice <d, g>4.) \bar "||" <ef f>( |
  
  \barNumberCheck 9
  <d f>8-.) r r r q^( <ef g> |
  <d f>8 <d bf'> <c a'> <ef c'>4 <d bf'>8) |
  r4 r8 r <d f>^( <ef g> |
  <d f>8 <d bf'> <c a'> <ef c'>4 <d bf'>8) |
  r8 d'( c  f c d |
  bf8 ef bf  d bf c |
  \voiceOne g!8)( a bf c4 <g cs>8 |
  <f d'>2. |
  
  \barNumberCheck 17
  d'8 a <f d'> <a f'> <g e'> <cs, g' a>|
  \oneVoice <d f d'>8) f-.[_( f-.] f-. f-. f-.)( |
  g4 a8 f4 bf8 |
  c4 d8 bf4) <f f'>8( |
  <g f'>4 <a ef'>8 \voiceOne ef'8 d c |
  \acciaccatura { c8 } bf a bf \oneVoice <f a c>4) f8( |
  g4 a8 f4 bf8 |
  c4 d8 bf4) <af f'>8( |
  
  \barNumberCheck 25
  <g f'>4^\rit <g c ef>8 <f a! ef'>4~ <f bf d>8 |
  \voiceOne d'8 c d bf4) \bar "||" \oneVoice d'8-. |
  bf8-. g-. f-.  d-. bf-. g-. |
  f8 r <f a ef'>( <f bf d>) r <d' d'>8 |
  <bf bf'>8 <g g'> <f f'>  <d d'> <bf bf'> <g g'> |
  <f f'>8-. r <a' ef' f>( <bf d bf'>4) \bar "||" f8( |
  g16 a g f g a  f g f e f bf |
  \voiceOne c d b c ef d  \oneVoice bf c bf a bf f') |
  
  \barNumberCheck 33
  g16( a g f g a  f g f e f bf |
  \voiceOne c d b c ef d  \oneVoice bf c bf a bf cs) |
  \ottava 1 \acciaccatura { \slurUp d8 } ef'~( ef16 d c bf)
    \acciaccatura { \slurUp bf,8 } c'8~( c16 bf a g) |
  a16( g f ef f ef  \ottava 0 d c a g f ef) |
  d16( g bf ef d8-.)  \tuplet 3/2 { d,16( ef \subdivide d } cs d bf' a |
  g16-.) g->( fs' g g,-.) r r4 \bar "||" <ef, gf>8[( |
  <d f>8]) d16( f f, bf  d d f d <cs a'> g' |
  d16 f bf f a gf  c f, bf d f d' |
  
  \barNumberCheck 41
  bf8-.) d,,16[(-> f f, bf]  d d f d <cs a'> g' |
  d16 f bf f a gf  c f, bf d f bf |
  bf'8-.) r <d,, d'>( <f f'>4) <c c'>8( |
  <d d'>-.)[ r16 <c c'>( <bf bf'>8]  <ef ef'>4.)~ |
  q8[ r16 <bf bf'>( q8]  <c c'>)[ r16 <bf bf'>( <c c'>8] |
  <d d'>4.)~ q4^\rit <e e'>8 |
  \ottava 1 a16->[( d f bf] a8-.) \tuplet 3/2 { a,16( bf \subdivide a } gs a
    f'16. e32 |
  d16) d( cs' d d,-.) \ottava 0 r r8 r f,,^( |
  
  \barNumberCheck 49
  g16 a g f g a  f g f e f bf |
  \voiceOne c16 d b c ef d  \tuplet 3/2 { bf c \subdivide bf } a bf g'16. f32 |
  g,16 f' ef d ef gf,  f ef' d cs d f, |
  \oneVoice e16 df' c e, c' bf)  a( f a c f f') |
  g,16( a g f g a  f g f e f bf |
  \voiceOne c16 d b c ef d  \oneVoice \tuplet 3/2 { bf[ c \subdivide bf } a bf)
    \ottava 1 \acciaccatura { \slurUp bf8 } c'16 \slurNeutral r32 bf]( |
  fs16.) g32( d16.) \ottava 0 ef32( a,16.) bf32(  f16.)^\rit gf32( d16.) ef32(
    b16.) c32( |
  gf16->) f-\slurShapeE ( e f <a d>-> c  bf8) r \bar "||" <d d'>( |
  
  \barNumberCheck 57
  <bf bf'>8)[ r16 <g g'>( <f f'>8]  <d d'>-.) r <f, f'>( |
  <a ef' g>4)^( f'8)  <bf, d g>[( f']) <c' fs d'>-. |
  <cs g' bf>-. <bf df g>-. <a c f>-. <d, a' d>[-. <d g bf>]-. <cs g'>[( |
  <d f>]) r <f a ef' f>[-. <bf d bf'>]-. r \bar "||" <d, f>^\scherzando ( |
  <ef fs>16[-.) <ef g>]-.  <ef a>8[-. r16 <ef g>](  <d e>[-.) <d f>]-.
    <d a'>8[-. r16 <d bf'>]( |
  <ef a b>-.[) <ef a c>]-.  <ef a d>8[-. r16 <ef a c>](  <d a'>16[-.)
    <d bf'>]-.  <g bf g'>8[-. r16 <f bf f'>]( |
  <ef fs>16[-.) <ef g>]-.  <a, ef' a>8[-. r16 <a ef' g>](  <bf d e>16[-.)
    <d f>]-.  <d a'>8[-. r16 <d bf'>]( |
  <ef a b>16[-.) <ef a c>]-. <ef a ef'>8[-. r16 <ef a d>]( 
    \acciaccatura { \slurUp c'8 } <d, bf'>16[-.) \slurNeutral <d a'>]-. 
    <d bf'>8[-. r16 <d c'>]( |
    
  \barNumberCheck 65
  \stemUp <g bf cs>16[-.) <g bf d>]-.  <g bf ef>8[-. r16 <g bf d>](
    <d g c>[-.) <d g bf>]-.  <d a'>8[-. r16 <d g>]( |
  <g a d>16[-.) <g a ef'>]-.  <g a f'>8[-. r16 <g a ef'>](  <g a d>[-.)
    <g a c>]-.  <g bf>8[-. r16 <g a>]( |
  \stemDown <g cs>16[-.) <g d'>]-.  <g g'>8[-. r16 <g ef'>](  \stemUp
    <fs d'>[-.) <fs cs'>]-.  <fs c'>8[-. r16 <d a'>16]( |
  <d g>16[-.)^\rit <ef fs>]-.  <d g>8[-. r16 <df gf>](  <c f>16[-.) <df e>]-.
    <c f>8[-. r16 <a ef' f>]( |
  <bf d! f>16[-.) <d g>]-.  <d e>8[-. r16 <d f>](  <ef fs>16[-.) <ef g>]-.
    <ef gs>8[-.-> r16 <ef a>]( |
  <d c'>16[-.) <d a'>]-.  <d c'>8[-. r16 <d bf'>]( \stemDown <bf' e>16[-.)
    <bf f'>]-.  <bf g'>8[-. r16 <bf f'>]( |
  \stemUp <d, f>16[-.) <d g>]-.  <d e>8[-. r16 <d f>](  <c ef fs>16[-.) 
    <c ef g>]-.  <c ef gs>8[-. r16 <c ef a>]( |
  <d c'>16[-.) <d a'>]-.  <d c'>8[-. r16 <d bf'>](  \stemDown <a' f' a>16[-.)
    <bf f' bf>]-.  <c f c'>8[-. r16 <bf f' bf>]( |
    
  \barNumberCheck 73
  <af ef'>[-.) <af cs>]-.  <af ef'>8[-. r16 <af d>](  <g f'>16[-.) <g ef'>]-.
    \stemUp <g a>8[-. r16 <g bf>]( |
  <g b>16[-.) <g c>]-.  <g d'>8[-. r16 <g cs>](  <fs ef'>[-.) <fs d'>]-.
    <fs gs>8[-. r16 <fs a>]( |
  <f! c'!>16[-.) <f as>]-.  <f c'>8[-. r16 <f b>](  <e bf' d>[-.) <e bf' c>]-.
    <e fs>8[-. r16 <e g>]( |
  <ef! gs>16[-.) <ef a>]-.  q8[-. r16 <e a>](  q[-.) <f a>]-.  q8[-. r16
    <bf f'>]( |
  \stemDown <bf fs'>16[-.) <bf g'>]-.  <a a'>8[-. r16 <a g'>](  <bf e>16[-.)
    <bf f'>]-.  <bf a'>8[-. r16 <bf bf'>]( |
  % Changing bf to as in the first two sixteenth notes to avoid the forked stem
  <e as b>16[-.) <e as c>]-. <ef a d>8[-. r16 <ef a c>](  <d c'>16[-.)
    <d bf'>]-.  <af' g'>8[-. r16 <af f'>]( |
  q16[-.)^\pocoStretto <g ef'>]-.  q8[-. r16 q]-.  q[ <fs d'>]-.  q8[-. r16
    <f d'>]-. |
  q16[-. <e c'>]-.  q8[-. r16 <ef c'>]-.^\rit  q[-. <d bf'>]-.  <bf a'>8[-.
    r16 <bf g'>]-. |
    
  \barNumberCheck 81
  <a ef'! g>[-.( <a d g>]-.  q8[-. r16 <a c g'>]-.  <bf g'>16[-. <bf f'>]-.
    <bf a'>8[-.) r16 <bf bf'>]( |
  <a ef'>16[-.) <a d>]-.  q8[-. r16 <a c>16]-.(  <af c>[-.) <af b>](^\rit
    <g c>8 <f g d'> |
  q16[ <ef g ef'>] q8) r16 ef'\(( d[-.) ef]-.  ef8[-.\) r16 <bf e>]-.( |
  q16[-.^\rall <a f'>]-. q8-.) r16 f'\(( ef[-.) f]-.  f8-.\) gf->(\noBeam |
  \bar "||"
  \key df \major
  \stemNeutral bf,8) c4-> af8( df f |
  af4.^\ten f4) af,8( |
  bf8) c8[~( c32 df bf c])  af[(\trill g af bf]  c[ df ef df]  gf![ f c' bf] |
  af8) af[->~( \tuplet 3/2 { af16 gf f] } f4) r8 |
  
  \barNumberCheck 89
  f8-. f[->~( f32 gf ef f]  df8-.) df[->~( df32 ef c df]) |
  \acciaccatura { \slurUp bf8 } bf'4( af16 gf f4) r8 |
  r8 c[->~( c32 df bf c] af8-.) af[->~( af32^\rit c g c]) |
  f,4.->( f'4) r8 |
  <af,, df f>16.-.( q32-. q8-.) r r \tupletOff \tuplet 21/2 { 
    af'4*1/2->(^\leggieriss
    \magnifyMusic 0.63 { \stemUp bf8 af g af bf c df ef f gf! af bf c df
    \ottava 1 ef f gf af bf c }
  } |
  \stemNeutral df8) \ottava 0 r16 \clef bass <bf,,, df>-.( <af c>16.-. 
    <gf bf>32-. <f af>4-.) r8 |
  \clef treble <af df f af>16.-.( q32-. q8-.) r r \tuplet 21/2 {
    c'4*1/2->(^\leggieriss
    \magnifyMusic 0.63 { \stemUp df8 c bf c df ef f gf af bf \ottava 1 c df ef
    f gf af bf c df ef }
  } |
  \stemNeutral f8) \ottava 0 r16 <af,,, f'> \tupletOn \tuplet 3/2 { <a ef'>[
  <bf df> r32 <gf bf>]( } <f af>4) r8 |
  
  \barNumberCheck 97
  <c f a>4^\dolciss r8 d''16([ c bf g d) r32 e-\slurShapeG \(] |
  % Trill with natural, SrcB
  \afterGrace 15/16 { f4^\trillNatural -\trillUnderSlur \startTrillSpan } 
    { e16[(^\stopTrillSpan f]) } g16[\) r32 a]( c,4.)~ |
  c4( d8 \tuplet 3/2 8 { g,16[-. a-. bf-.]  c[-. d-. e-.] } f16[-.) r32 
    g]-\slurShapeH ( |
  a4.) \grace { gs16[( a]) } \afterGrace 15/16 
    { \moveTrillA a4.-\slurShapeI \(^\trillNatural -\trillUnderSlur 
    \startTrillSpan } { gs16[(\stopTrillSpan a]) } |
  \ottava 1 c'16^\rit a e \ottava 0 c a f  e8\) <gs, f'>16[-.( <gs e'>-.
    <gs ds'>-. <gs d'>-.] |
  <a c>8) \ottava 1 bf''16[(^\rall g e c]  \ottava 0 bf[ g df!-> c] f32)
    r32\fermata gf16( |
  bf,8)^\aTempo c4-> af8( df f |
  af4.^\ten f4) af,8( |
  
  \barNumberCheck 105
  bf8) c8[->~-\slurShapeJ \( c32 df bf c]  af[ bf g af]  df[ ef c df]
    \tuplet 5/4 { e f df' c bf } |
  \grace { g16*1/2[( af]) } af4.*1/3\)(-\trillUnderSlur \startTrillSpan 
    \tupletOff \tuplet 9/2 {
    \magnifyMusic 0.63 { \stemUp g8\stopTrillSpan af gf'! ef c af bf ef, af } 
  } \stemNeutral f4.) |
  f8-. f[->~( f32 gf ef f] df8-.) df[->~( df32 ef c df] |
  bf8-.) bf'8[->~( bf32 c af bf]  gf[ af f gf]  \tupletOn \tuplet 3/2 16 { 
    ef[ gf f]  df![ f ef]  c[ ef df]  bf[ df c] } |
  a8) \tuplet 3/2 16 { 
    \voiceTwo <bf gf'>32[-\slurShapeO ^\(^( df] \voiceOne bf') df[ af'! gf]\) }
    \tupletOff \tuplet 3/2 16 { 
    \voiceTwo <gf,, ef'>32[^( bf] \voiceOne gf' bf[ f' ef])
    \voiceTwo <ef,, c'>[^( gf] \voiceOne ef' gf[ df' c])
    \voiceTwo <bf,, gf'>[^( ef] \voiceOne bf' ef[ af gf])
    \vsd <gf,, ef'>32[\slurShapeP ^( bf] \vsu gf' bf[ f' ef])
  } |
  \tuplet 3/2 16 { 
    \vsd <f,, ef'>[-\slurShapeQ ^( c'] \vsu a' c[ f ef])
    \voiceTwo <bf, gf'>[^( ef] \voiceOne bf' ef[ af! gf])
    \vsd <gf,, ef'>[-\slurShapeP ^( bf] \vsu gf' bf[ f' ef])
    \vsd <ef,, c'>[-\slurShapeQ ^( gf] \vsu ef' gf[ df' c])
    \vsd <bf,, gf'>[-\slurShapeQ ^( ef] \vsu bf' ef[ af! gf])
    \vsd <gf,, ef'>[-\slurShapeQ ^( bf] \vsu gf' bf[ f' ef]~
  } |
  <a, ef'>8) \tupletOn \tuplet 3/2 16 { 
    \voiceTwo ef'32[-\slurShapeO ^( gf] \voiceOne e f[ c' a]) }
    \tupletOff \tuplet 3/2 16 {
    \voiceTwo ef[^( gf] \voiceOne e f[ c' a])
    \voiceTwo ef[^( gf] \voiceOne e f[ c' a])
    \voiceTwo df,[^( gf] \voiceOne e f[ c' a])
    \voiceTwo c,[^( gf'] \voiceOne e f[ c' a])
  } |
  \tuplet 3/2 16 {
    \voiceTwo \staffDown f,32[-\slurShapeR ^( \staffUp gf'!] \voiceOne 
      e f[ c' a])
    \voiceTwo ef[^(^\rall g] \voiceOne e f[ c' a])
    \voiceTwo ef[^( g] \voiceOne e f[ c' a])
    \voiceTwo ef[^( g] \voiceOne e f[ c' a])
    \voiceTwo d,[^( g] \voiceOne e f[ c' a])
    \voiceTwo c,[^( g'] \voiceOne e f[ c' a])
  } \bar "||" \key bf \major |
  \grace s8
}

rightHandLower = \relative {
  \partial 8 s8
  s2. * 5 |
  \voiceTwo g'2. |
  g4. d4.~ |
  \hideNoteHead d4. s |
  
  \barNumberCheck 9
  s2. * 6 |
  g4.~ g4 s8 |
  s2. |
  
  \barNumberCheck 17
  f4 s8 s4. |
  s2. * 3 |
  s4. f |
  g4. s |
  s2. * 2 |
  
  \barNumberCheck 25
  s2. |
  a4. bf4 s8 |
  s2. * 5 |
  g4 a8 s4. |
  
  \barNumberCheck 33
  s2. |
  g'4 a8 s4. |
  s2. * 6 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. |
  g,4 a8 s4 af8 |
  g8 s4 s4. |
  s2. * 2 |
  g'4 a8 s4. |
  s2. * 2 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 8 |
  
  \barNumberCheck 105
  s2. * 5 |
  s4. s4 s16 bf,, |
}

rightHand = {
  \global
  \mergeDifferentlyDottedOn
  <<
    \new Voice \rightHandUpper
    \new Voice \rightHandLower
  >>
}

leftHandUpper = \relative {
  \partial 8 s8 |
  \voiceThree ef'4 c8 d4 f,8 |
  ef'4 f8 d4 f,8 |
  ef'4 c8 d4 f,8 |
  ef'4 f8 d4 s8 |
  s2. * 2 |
  bf4. d4 c8( |
  \hideNoteHead bf4.) s |
  
  \barNumberCheck 9
  s2. * 4 |
  \clef treble r8 bf' a af4.-> |
  g4 gf8 f4. |
  e4.~ e4 ef8 |
  d2. |
  
  \barNumberCheck 17
  \clef bass s4. a4 a8~ |
  % No slur, SrcB
  \hideNoteHead a8 s4 s d8 |
  ef4 c8 d4 f,8 |
  ef'4 f8 d4 f,8 |
  ef'4 c8 bf4 d8 |
  e4. f4 f,8 |
  ef'!4 c8 d4 f,8 |
  ef'4 f8 d4 s8 |
  
  \barNumberCheck 25
  s2. |
  f8 ef f d4 s8 |
  s2. * 4 |
  ef4( c8 d4 f,8 |
  ef'4 f8 d4) s8 |
  
  \barNumberCheck 33
  ef'4( c8 d4 f,8 |
  ef'4 f8 d4) s8 |
  s2. * 4 |
  s4. r4 e,,8( |
  \hideNoteHead f8) \clef treble s8 ef'4. d8 |
  
  \barNumberCheck 41
  s4. r4 e,8( |
  \hideNoteHead f8) s4 s4. |
  s2. |  
  bf,4. bf |
  bf4. s |
  s2. * 2 |
  s2 s8 \voiceFour \clef bass \voiceThree d'^( |
  
  \barNumberCheck 49
  ef4 c8 d4 f,8 |
  ef'4 f8 d4 b8 |
  c8. bf!16 a8 bf4 g!8 |
  bf c df c) s \clef treble r |
  ef'4( c8 d4 f,8 |
  ef'4 f8 d) s4 |
  s2. |
  \moveNoteA a,4 c8 d s4 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s2. * 8 |
  
  \barNumberCheck 89
  s2. * 4 |
  s4. s8 f8.( ef16 |
  \hideNoteHead df8) s4 s4. |
  s4. s8 \clef treble <f af>8.( <ef gf>16 |
  f8) s4 s4. |
  
  \barNumberCheck 97
  s2. * 3 |
  f,4. f |
  s2. * 4 |
  
  \barNumberCheck 105
  df4. df |
  df4. df4 s8 |
  s2. |
  s16 gf4 s16 s4. |
}

leftHandLower = \relative {
  \partial 8 r8
  \voiceFour f2.~ |
  f2.~ |
  f2.~ |
  f4. bf4 \oneVoice r8
  d4( c8 bf a g) |
  ef'4( d8 c4.) |
  \voiceFour d,2.( |
  \oneVoice <g bf>4.) <a c>( |
  
  \barNumberCheck 9
  <bf, bf'>8) bf'-. bf-. bf-. bf-. bf-. |
  bf,8-. bf'-. bf-. bf-. bf-. bf-. |
  bf,8-. bf'-. bf-. bf-. bf-. bf-. |
  bf,8-. bf'-. bf-. bf-. bf-. bf-. |
  \clef treble \voiceFour bf2.~ |
  bf2.~ |
  bf2.~ |
  bf8 a g  f g gs |
  
  \barNumberCheck 17
  \clef bass a4.^~ <a, \single \omit Dots a'> |
  <d a'>8 \oneVoice r r r4 r8 |
  \voiceFour f2.~ |
  f2.~ |
  f2.~ |
  f2.~ |
  f2.~ |
  f4. bf4 <d, bf'>8 |
  
  \barNumberCheck 25
  <ef bf'>4 < c c'>8 <f c'>4 bf8 |
  \voiceFour f4. bf4 \oneVoice \clef treble d'8-. |
  bf-. g-. f-.  \clef bass d-. bf-. g-. |
  f8-. r <f c'>(  <bf d>) r <d, d'>8 |
  <bf bf'>8 <g g'> <f f'>  <d d'> <bf bf'> <g g'> |
  <f f'>8-. r <f'' c' f>( <bf, bf'>4) r8 |
  \voiceFour f'2.~ |
  f4. bf4 \oneVoice r8 |
  
  \barNumberCheck 33
  \clef treble \voiceFour f'2.~ |
  f4. bf4 \oneVoice r8 |
  \clef bass g,,8-. bf'( d,)  bf-. d'( g,) |
  c,8-. ef'( a, g') r r |
  d,8-. d'( <bf g'>)  d,-. d'( <c fs> |
  <g bf g'>8-.) r r16 \clef treble g''( g,8) r \clef bass a,8[( |
  bf8]) r r  \voiceFour bf,, bf'4~ |
  <bf f'>8 \clef treble d'-\slurShapeC ^( ef!  bf4. |
  
  \barNumberCheck 41
  \oneVoice bf'8-.) r r  \clef bass \voiceFour bf,,,8 bf'4~ |
  \oneVoice <bf f'>8 d'( ef!  d4 f,8) |
  bf,16( f' bf d bf f)  bf,( f' a c a f) |
  bf,16-\slurShapeD ( f' af bf af f)  bf,-\slurShapeD ( ef g bf g ef) |
  bf-\slurShapeD ( ef gf bf gf ef)  bf( gf' bf ef bf gf) |
  bf,( f' bf d bf f)  bf,( e gs d' gs, e) |
  a,8( <f' a d>) r a,( <g'! cs>) r |
  <d f d'>4 r16 \clef treble d'''( d,8) r \clef bass s 
  
  \barNumberCheck 49
  \voiceFour  f,,2.~ |
  f2.~ |
  f2 f4->~ |
  f4.~ f8 \oneVoice r \voiceFour \clef treble f'8~ |
  f2.~ |
  f4.( bf8) \oneVoice r <bf, d af'> |
  \clef bass ef,8( bf' c  gf'4.) |
  <f, ef'>4.-\slurShapeF ( << { \hideNoteHead d'8) } \new Voice { bf8 } >> r 
    <d, d'>( |
  
  \barNumberCheck 57
  <bf bf'>8)[ r16 <g g'>( <f f'>8]  <d d'>-.) r <f, f'> |
  q4.( <bf bf'>8) r <d d'>-. |
  <ef ef'>8-. <e e'>-. <f f'>-.  <fs fs'>[ <g g'>] <e' bf'>[( |
  <f bf>]) r <f, f'>[-. <bf, bf'>]-. r <bf' f'>8( |
  <bf f'!>16[-.) q]-.  q8[-. r16 q16](  q[-.) q]-.  q8[-. r16 q]( |
  \stemDown <f f'>16[-.) q]-.  q8[-. r16 q](  <bf f'>16[-.) q]-.  <bf' ef>8[-.
    r16 <bf d>]( |
  <f, f'>16[-.) q]-.  q8[-. r16 q](  <bf f'>16[-.) q]-.  q8[-. r16 q16]( |
  <bf gf'>16[-.) q]-.  q8[-. r16 <bf f'>](  <bf bf'>16[-.) q]-. q8-. r16 a'( |
  
  \barNumberCheck 65
  <g d'>16[-.) q]  q8[-. r16 g](  <bf, g'>16[-.) q]-.  q8[-. r16 q]( |
  <c g' a>16[-.) q]-.  q8[-. r16 q](  <ef g c>[-.) q]-.  q8[-. r16 q]( |
  <d bf'>16[-.) q]-.  q8[-. r16 q](  <d a' c>16[-.) q]-.  q8[-. r16 
    <d fs c'>]( |
  <g bf>16[-.) <g c>]-.  <g bf>8[-. r16 bf](  a16[-.) bf]-.  a8[-. r16
    <f, f'>]( |
  <bf f'>16[-.) q]-.  q8[-. r16 q](  q16[-.) q]-.  q8[-. r16 q]( |
  q16[-.) q]-.  q8[-. r16 <bf bf'>](  <bf' cs>[-.) <bf d>]-.  <bf ef!>8[-. r16
    <bf d>]( |
  <bf, f'>16[-.) q]-.  q8[-. r16 q](  q[-.) q]-.  q8[-. r16 q]( |
  <bf f' bf>16[-.) q]-.  q8[-. r16 q](  <cs' f>[-.) <d f>]-.  <ef f>8[-. r16 
    <d f>]( |
    
  \barNumberCheck 73
  <bf f'>16[-.) q]-.  q8[-. r16 <bf, bf'>](  <ef bf'>16[-.) q]-.  q8[-. r16
    q]( |
  <ef a>16[-.) q]-.  q8[-. r16 q](  <d a'>16[-.) q]-.  q8[-. r16 <d a' d>]( |
  <g d'>16[-.) q]-.  q8[-. r16 <g, g'>](  <c g'>16[-.) q]-.  q8[-. r16
    <c g' bf>]( | 
  <f c'>16[-.) q]-.  q8[-. r16 <f cs'>](  q[-.) <f d'>]-.  q8[-. r16 q]( |
  <f ef'!>[-.) q]-.  q8[-. r16 <f cs'>](  q[-.) <f d'>]-.  q8[-. r16 
    <f df'>]( |
  <f c'>16[-.) q]-.  q8[-. r16 <f f'>](  <bf f'>[-.) q]-. \clef treble 
    \stemNeutral <d bf'>8[-. r16 q]( |
  q16[-.) <ef bf'>]-.  q8[-. r16 <cs a'!>]-.  q16[ <d a'>]-.  q8[-. r16 
    <b af'>]-. |
  <b g'>16[-. <c g'>]-.  q8[-. r16 <bf gf'>]-.  <a f'>[-. <bf f'>]-.  <c e>8[-.
    r16 q]-. |
    
  \barNumberCheck 81
  \clef bass <f, c' f>16[-. <f ef'! f>]-.  q8[-. r16 q]-.  <f d' f>16[-. q]-.
    q8[-. r16 <f d'>]( |
  <fs c'>16[-.) <fs d'>]-.  q8[-. r16 <fs ef'>]-.(  <f ef'>16[-.) <f d'>]( 
    <ef c'>8 <d b'> |
  <d g b>16[ <c g' c>] q8) r r4 r16 <gf' c>-.( |
  q16[-. <f c'>]-.  q8-.) r r4 r8 |
  \key df \major
  af,16(_\legato gf' af ef' gf, af)  af,( f' af df f, af) |
  af,16( gf' af c gf af)  af,( f' af df f, af) |
  af,16( gf' af ef' gf, af)  af,( f' af df f, af) |
  af,16( gf' af c gf af)  df,( f af df) c,( <f a ef'>) |
  
  \barNumberCheck 89
  bf,16( f' bf df f, bf)  bf,( f' bf df f, bf) |
  bf,16( gf' bf ef gf, bf)  bf,( f' bf df f, bf) |
  f,16( f' af c) bf,( <f' df'>)  c( f af c) c,( <e bf'>) |
  f,16( c' af' f c' af') r4 r8 |
  <df,,, df'>16.-.( q32-. q8-.) r \voiceFour <af'' f'>^. <af c>^~ <gf! af c> |
  \oneVoice <f af df>8 r16 <gf, df'>-.( q16.-. q32-.  <df df'>4-.) r8 |
  q16.-.( q32-. q8-.) r \clef treble <c'' f af>-. \voiceFour af4 |
  df8 \oneVoice r16 \clef bass <df, df'> \tuplet 3/2 { <gf df'>[ q r32 bf]( }
    df4) r8 |
  
  \barNumberCheck 97
  c,,8 f'16[( a d16.) c32](  c,8) g'16( bf d16.) c32( |
  c,8) f16( a d16.) c32(  c,8) e16( bf' d16.) c32( |
  c,8) g'16( bf f' e)  c,8 g'16( bf \clef treble a' g) |
  \clef bass f,8-\slurShapeK ( a16 c g' f)  f,8-\slurShapeL ( a16 c e ds) |
  e,16( a c \clef treble e a b  c8) \clef bass <e,, b' d>16-.([ q-. q-. q-.] |
  <a c>8) c,16[-\slurShapeM ( bf'! g c] e8-.) r <f, a ef'>32 r\fermata r16 |
  af,16( gf' af ef' gf, af)  af,( f' af df f, af) |
  af,16( gf' af c gf af)  df,( f af df f, af) |
  
  \barNumberCheck 105
  df,16-\slurShapeD ( gf af ef' gf, af)  df,-\slurShapeD ( f af df f, af) |
  df,16-\slurShapeD ( ef af c gf! af)  df,-\slurShapeN ( f af df) c,( 
    <f a ef'>) |
  bf,16-. f'( bf df f, bf)  af,-. f'( bf df f, bf) |
  gf,16-. gf'-\slurShapeL ( bf df d bf  ef8) r <gf, ef'>-> |
  <f ef'>8 s4 s4. |
  s2. |
  <f,, f'>8 s4 s4. |
  s2. \key bf \major |
  \grace s8
}

leftHand = \relative {
  \global
  \clef bass
  \mergeDifferentlyDottedOn
  <<
    \new Voice \leftHandUpper
    \new Voice \leftHandLower
  >>
}

dynamics = {
  \override DynamicTextSpanner.style = #'none
  \override TextScript.Y-offset = -0.5
  \partial 8 s8-\moveTextA ^\dolce |
  s2. * 4 |
  s4.\> s8 s4\! |
  s2. * 2 |
  s4. s\> <>\!
  
  \barNumberCheck 9
  s4. s8 s4\< |
  s4 s8\! s4.\> <>\! |
  s4. s8 s4\< |
  s4 s8\! s4.\> <>\! |
  s8 s^\legato s2 |
  s2. |
  s4. s\cresc |
  s2.\< <>\! |
  
  \barNumberCheck 17
  s4. s8\> s4\! |
  s8 s4-\tweak Y-offset 1 \< s4 s8-\tweak Y-offset 1 \sf |
  s2. * 5 |
  s4. s8 s4\> <>\! |
  
  \barNumberCheck 25
  s2. |
  s4.-\tweak Y-offset 1 \> s8 s4\! |
  s2. |
  s4 s8\> s4\! s8\f |
  s2. |
  s4 s8\ff s4 s8\p |
  s2.\<^\legato |
  s4\> s8\! s4. |
  
  \barNumberCheck 33
  s2.\< |
  s4.\> s\! |
  s8\> s8. s16\! s8\> s8. s16\!
  s4. s\> <>\! |
  s4. \tuplet 3/2 { s8\> s16\! } s4 |
  s4. s4 s8\> <>\! |
  s2. |
  s2.\< <>\! |
  
  \barNumberCheck 41
  s4. s4 s8\> <>\! |
  s8 s4\< s4. |
  s4\sf s8\< s4.\! | 
  s4 s8\< s4.\! |
  s2.\< |
  s2.\sf |
  s2. * 2 |
  
  \barNumberCheck 49
  s2.\pocoCresc |
  s2. |
  s4\> s16 s\! s4\> s16 s\! |
  s4\< s16 s\! s4. |
  \revert DynamicTextSpanner.style
  s4. s8 s4\cresc |
  s4. s\p |
  s2.^\leggierissimo |
  s4. s4 s8\f |
  
  \barNumberCheck 57
  s2. |
  s4.\> s4\p s8\f |
  s2 s8 s\> <>\! |
  s4 s8\ff s4 s8\pp |
  s8\< s4\! s8\< s4\! |
  s8\> s\! s16 s\< s s\! s4 |
  s2. |
  s8\< s4\! s4.\< |
  
  \barNumberCheck 65
  s8\< s4\! s4.\> |
  s16\< s\! s8. s16\> s4. |
  s8\< s4\! s4. |
  \override DynamicTextSpanner.style = #'none
  s2.\dim |
  s8\sf s8. s16\< s4. <>\! |
  s8 s8. s16\< s16 s8.\f\> s8 |
  s2.\p\< |
  s8 s8.\! s16\< s16 s8.\f\> s8 |
  
  \barNumberCheck 73
  s2.\p |
  s2. * 2 |
  s8 s4-\tweak Y-offset -1 \cresc s4. |
  \revert DynamicTextSpanner.style
  s2\p s4\tweak Y-offset -1 \cresc |
  s2 s8. s16\! |
  s2. |
  \override DynamicTextSpanner.style = #'none
  s2.\dim |
  
  \barNumberCheck 81
  s2.^\dolcissimo |
  s4.\> s\! |
  s4 s16 s\pp s4. |
  s2. |
  s4.^\conAnima s\< <>\! |
  s2. |
  s4. s16 s\< s4 <>\! |
  s2. |
  
  \barNumberCheck 89
  s2. |
  s4.\> s4\! s8 |
  s2. * 2 |
  s2.\f |
  s8. s\p s4. |
  s4.\f s8 s\> s16 s\! |
  s8. s\p s4. |
  
  \barNumberCheck 97
  s2. * 2 |
  s4.\pocoCresc s8 s4\< |
  s2.\< |
  s4.\> s8\! s4 |
  s8 s4^\delicatissimo s4. |
  s4. s\< <>\! |
  s2. |
  
  \barNumberCheck 105
  s4. s\< |
  s4.\> s16 s\! s4 |
  s2 s4\cresc |
  s2. |
  s8 s4\f s4. |
  s8 s4\f s4. |
  s8 s\p s\dim s4. |
  s8 s^\sempre s\dim s4 s8\pp |
}

pedal = {
  \partial 8 s8 |
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 2 |
  s2\sd s8. s16\su |
  s4.\sd s8 s4\su |
  s4.\sd s4\su\sd s16 s\su |
  s2. |
  s8 s4\sd s4 s8\su |
  s2. |
  
  \barNumberCheck 41
  s8 s4\sd s4 s8\su |
  s2. |
  s4.\sd s4\su\sd s16 s\su |
  s2. |
  s4. s4\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4\sd s8\su s4\sd s8\su |
  s4.\sd s8 s4\su |
  
  \barNumberCheck 49
  s2. * 6 |
  s2\sd s8. s16\su |
  s2. |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 8 |
  
  \barNumberCheck 81
  s4.\sd s4\su\sd s16 s\su |
  s2. * 3 |
  \repeat unfold 4 { s4.\sd s4\su\sd s16 s\su | }
  
  \barNumberCheck 89
  s4.\sd s4 s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4\su\sd s16 s\su |
  s4.\sd s4 s8\su |
  s8.\sd s\su s4. |
  s2. |
  s8.\sd s\su s4. |
  s2. |
  
  \barNumberCheck 97
  s4.\sd s4\su\sd s16. s32\su |
  s4.\sd s\su\sd |
  s2 s8. s16\su |
  s2. |
  s4.\sd s4.\su |
  s8 s4\sd s4.\su |
  s4\sd s16 s\su s4. |
  s2. |
  
  \barNumberCheck 105
  s2. * 2 |
  s4\sd s8\su s4\sd s8\su |
  s4.\sd s\su |
  s2. * 2 |
  s4.\sd s4 s16. s32\su |
}

tempi = {
  \set Score.tempoHideNote = ##t
  \tempo "Allegro moderato" 4. = 116
  \partial 8 s8
  s2. * 8 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  \tempo 4. = 108 
  s2. |
  \tempo 4. = 100
  s4. s4 \tempo 4. = 116 s8 |
  s2. * 3 |
  \set Score.tempoHideNote = ##f
  s4. s4 \tempo 4. = 92 s8 |
  s2. * 2 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 4 |
  \set Score.tempoHideNote = ##t
  s4. \tempo 4. = 84 s |
  \tempo 4. = 92
  s2. |
  s2. * 2 |
  
  \barNumberCheck 49
  s2. * 6 |
  s4. \tempo 4. = 88 s |
  \tempo 4. = 84 s2 s8 \tempo 4. = 92 s |
  
  \barNumberCheck 57
  s2. * 3 |
  \set Score.tempoHideNote = ##f
  s2 s8 \tempo 4. = 66 s |
  s2. * 4 |
  
  \barNumberCheck 65
  s2. * 2 |
  \set Score.tempoHideNote = ##t
  \tempo 4. = 63
  s2. |
  \tempo 4. = 66
  s2. * 5 |
  
  \barNumberCheck 73
  s2. * 6 |
  \tempo 4. = 69
  s2. |
  s4. \tempo 4. = 66 s |
  
  \barNumberCheck 81
  \tempo 4. = 63
  s2. |
  \tempo 4. = 58
  s2. |
  \tempo 4. = 54
  s2. |
  \tempo 4. = 50
  s2. |
  \set Score.tempoHideNote = ##f
  \tempo "Lento" 4. = 42
  s2. * 4 |
  
  \barNumberCheck 89
  s2. * 8 |
  
  \barNumberCheck 97
  s2. * 4 |
  \set Score.tempoHideNote = ##t
  \tempo 4. = 40
  s2. |
  \tempo 4. = 38
  s4. s4 s32 \tempo 4. = 10 s16. |
  \tempo 4. = 42
}

forceBreaks = {
  % page 3
  \partial 8 s8\noBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 5 { s2.\noBreak } s2\noBreak s8\pageBreak

  % page 4
  s8\noBreak \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 5
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 4 { s2.\noBreak } s2\noBreak s8\break\noPageBreak
  s8\noBreak \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 6
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 7
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 8
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \grace{ s8 } \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  % page 9 (partial)
  s2.\noBreak s4.\break\noPageBreak
  s4.\noBreak s2.\break\noPageBreak
  s2.\noBreak \grace s8\break\noPageBreak
}

themeNotes =
\score {
  \header {
    opus = ##f
  }
  \keepWithTag layout  
  \new PianoStaff <<
    \new Staff = "upper" \rightHand
    \new Dynamics \dynamics
    \new Staff = "lower" \leftHand
    \new Dynamics \pedal
    \new Devnull \tempi
    \new Devnull \forceBreaks
  >>
  \layout {
    indent = 0
  }
}

\include "articulate.ly"

themeMidi =
\book {
  \bookOutputName "theme"
  \score {
    \header {
      midiOutputFile = "theme"
    }
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    \midi {}
  }
}
