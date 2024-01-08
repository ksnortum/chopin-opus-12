%...+....1....+....2....+....3....+....4....+....5....+....6....+....7....+....

\version "2.24.0"
\language "english"

\include "global-variables.ily"

%%% Positions and shapes %%%

slurShapeA = \shape #'((0 . 0) (0 . 1) (0 . 2) (0 . 0)) \etc
slurShapeB = \shape #'((0 . 0) (0 . 1.5) (0 . 2.5) (0 . 0)) \etc
slurShapeC = \shape #'((-1 . 3) (0 . 0) (0 . 0) (0 . 0)) \etc
slurShapeD = \shape #'((0.5 . 2.5) (0 . 1.5) (0 . 0.5) (0 . 0)) \etc

%%% Music %%%

global = {
  \time 6/8
  \key bf \major
  \override Beam.breakable = ##t
}

rightHand = \relative {
  \global
  \tuplet 3/2 { g'16[( bf d } c8-.]) a-.  f-. f'4-> |
  \tuplet 3/2 { c16[( d c] } f8-.) g,-.  f-. f'4->~ |
  f16( a g f <a ef'>8->)  d16( bf f d bf8) |
  b16( d df c <e bf'>8->)  a16( f c a f8-.) |
  \tuplet 3/2 { g'16[( bf d } c8-.]) a-.  f-. f'4-> |
  \tupletOff \tuplet 3/2 8 { c16[(^\pocoRall d c]  f[ c a]  g[ a g] } f8-.)
    f'4->( |
  \ottava 1 f'8-.)^\aTempo d16[( c bf g] \ottava 0 f d c bf g f) |
  ef16( d c bf <a d> c  bf8) r <c d fs d'>[ |
  
  \barNumberCheck 9
  <g' bf g'>8] r16 <g, bf d>[( <g c ef>8]  <g bf d>8-.)[ r16 <g c g'>(
    <a c fs>8]-> |
  <bf d g bf>8-.) r16 g( <bf g'> g'  <bf g'>8-.) r r |
  <a, f'>8[-. r16 <g e'>( <f d'>8]  <g e'>8[-.) r16 <a f'>( <e cs'>8] |
  <f d'>8-.) r16 d'( <f d'> \ottava 1 d' <f d'>8-.) \ottava 0 r a,8( |
  f'8-.) g16[( f e f] a8-.) e4-^( |
  f8-.) g16[( f e d]  e8-.) a,4-^ |
  \tupletOn \tuplet 3/2 { f16( g \subdivide f } e f c' bf  a8-.) e4-^( |
  f8-.) g16[( f e\prall d] e8-.) a,4->( |
  
  \barNumberCheck 17
  d8-.) fs,16[( g e' d] c8-.) f,4->( |
  bf8-.) ds,16[( \subdivide e \tuplet 3/2 { c'! bf a] } a8-.) d,4->( |
  d'8-.) g16[( f e d] d8-.) c4->~( |
  c16 bf e d cs bf  bf8-.)\noBeam a-.\noBeam d,->~-\slurShapeC ( |
  d16 g bf d g d'  cs a e cs a e) |
  f16( bf d f bf f'  e cs a e cs a) |
  bf16( d f bf \ottava 1 bf bf'  ds, e a a, ef' af |
  cs,16 d g g, df' gf \ottava 0 b, c f f, a! g! |
  
  \barNumberCheck 25
  f8) gs16[( a fs g]  e f gs a c bf) |
  b16( c cs d b c  a bf cs d g f) |
  \ottava 1 f16( a g f a ef'  d a bf f d bf) |
  b16( d df c e bf'!  a e f c a f) \ottava 0 |
  fs16[( g]) gs[( a]) fs[( g]) e[( f]) gs[( a]) c[( bf]) |
  b16[( c]) cs[( d]) b[( c])  a( c) b \ottava 1 bf bf'! fs |
  g,16 g' ef g, g' d  g, ef' c bf! bf' fs |
  g,16 g' ef g, g' d  g, ef' c bf! bf' fs |
  
  \barNumberCheck 33
  bf,16 bf' g b, b' g  b, b' g b, b' g |
  b,16 b' g b, b' g  b, b' g c, c' g |
  <cs, cs'>8-. \ottava 0 r r bf16( g' bf, a fs' a, |
  af16 f'! af, g e' g,  gf ef' gf, f d' f, |
  e16 df' e, ef c' ef,  d b' d, df bf' df, |
  <c a'>8-.) r r <a ef' f>4.( |
  <bf d bf'>8-.) d,16[(^\leggiero ef e f] af8) af16[( d, g f] |
  ef! g c ef g d  f ef c a! f ef |
  
  \barNumberCheck 41
  d8-.) d'16[( ef f g]  f e) c( d ef f |
  ef16 d) bf( c df ef  df c) b( c f ef |
  d16)( ef cs d ef e  f fs af! d, g f |
  ef g c ef g d  f ef c a! f ef |
  d16 f) bf( d f g  f e) c( d ef f |
  ef16 d) bf( c df ef  df c) b( c f ef |
  \ottava 1 df16)( bf' gf bf, gf df' \ottava 0 bf df, bf gf' df gf, |
  f16 cf' df f cf' df \ottava 1 ef df c df gf af) |
  
  \barNumberCheck 49
  df,16( bf' gf bf, gf df' \ottava 0 bf df, bf gf' df gf, |
  f16 cf' df f cf' df \ottava 1 ef df c df gf af) |
  df,16( bf' gf bf, gf df' \ottava 0 bf df, bf gf' df gf,) |
  bf16^( f' df f, bf, f'  \staffDown \voiceOne df f, bf, f' df bf) |
  << { r8 } \\ { \staffUp s8^\conFuoco } >> \staffDown e-. <bf' df e>-.
    \staffUp \oneVoice e[-. <bf' df e>]-. <e bf' df e>-. |
  <f c' ef f>8-. <gf c ef gf>-. <f c' ef f>-. <gf c ef gf>-. <f c' ef f>16-.
    r16\fermata f8-. |
  << { g!4( a8) f4( bf8) } \\ { ef,16\> f d\! ef c8  d16\> ef c\! d bf8 } >> |
  << { c'4( d8) } \\ { a16\> bf g\! a f8 } >> d16(\> bf' c\! bf f'8-.) |
  
  \barNumberCheck 57
  \ottava 1 g,16(\> ef' f\! ef bf'8-.)  g,16(\> cs d\! cs a'8-.) |
  fs,16(\> c'! d\! c a'8-.)  g,16(\> c d\! c g'8-.) |
  << { g4( a8) f4( bf8) } \\ { ef,16\> f d\! ef c8  d16\> ef c\! d bf8 } >> |
  << { c'4( d8) } \\ { a16\> bf g\! a f8 } >> d16( bf' c bf <e, e'>8) |
  <f f'>16( bf c bf <e, e'>8->)  <f f'>16( bf c bf <e, e'>8->) |
  <f f'>16( bf c bf <e, e'>8->)  <f f'>16( bf c bf <e, e'>8->) |
  \ottava 0 r bf,16( cf bf a  bf cf df ef ff gf |
  af16 bf cf df ef ff \ottava 1 gf af bf cf df ef) |
  
  \barNumberCheck 65
  e16[( fs,]) <a! ds>[( fs]) <gs d'>[( e]) <g cs>[( e]) <fs c'>[( d!]) <f b>[( 
    d]) |
  <e bf'>[( c]) <ef a>[( c]) <d af'>[( bf]) <df g>[( bf]) <c gf'>[( af]) 
    <cf f>[( af]) |
  \ottava 0 <as e'>[( fs]) <a ds>[( fs]) <gs d'>[( e]) <g cs>[( e]) <fs c'>[(
    d!]) <f b>[(^\rit d]) |
  <e bf'>[( c]) <ef a>[( c]) <d af'>[( bf]) <cs g'>[( bf]) <d f>8-. 
    <c ef f a>-. |
  <bf d bf'>8-.^\aTempo \staffDown \voiceOne d,,16[( f bf d] \staffUp 
    \oneVoice f d' bf f gf bf |
  f8-.) d16[( f bf d]  f d' bf f gf bf |
  f8-.) d16[( f bf d] \ottava 1 f\> d' bf\! f gf bf |
  f16\> d' bf\! f gf bf  f\> f' d\! bf gf bf) |
  
  \barNumberCheck 73
  f16(\> bf f\! d' bf cs,)  d(\> f d\! bf' f a,) |
  \ottava 0 bf16(\> d bf\! f' d e,)  f(\> bf f\! d' bf cs,) |
  d16(\> f d\! bf' f a,)  bf(\> d bf\! f' d e,) |
  f16(\> bf f\! d' bf cs,)  d(\> f d\! bf' f a, |
  bf8) f16[( d' bf d]  f bf d f bf d |
  \ottava 1 bf'8) \ottava 0 r r <d,, f bf d>4 r8 |
  bf,2.\fermata |
  \bar "|."
}

leftHandUpper = \relative {
  \voiceThree 
  s4 f4. f4.*1/3 |
  s4 f4. f8 |
  s2. * 2 |
  s4 f'4. f4.*1/3 |
  s4 f4. s8 |
  s2. * 2 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 5 |
  d,4 bf'4. a8 |
  s2. * 2 |
  
  \barNumberCheck 25
  \oneVoice \clef treble bf!8( <ef! a>) r bf( <d bf'>) r |
  bf8( <ef a>) r bf( <d bf'>) r |
  s2. * 6 |
  
  \barNumberCheck 33
  s2. * 6 |
  \clef bass s4. \voiceThree b,8( af') s8 |
  s2. |
  
  \barNumberCheck 41
  s2. |
  s4 \clef treble e'8 ef4. |
  s4. \oneVoice b8( <d af'>) r |
  c8( <ef g>) r f,( <ef' a>) r |
  s2. |
  s4 \voiceThree e'8 ef4. |
  s2. |
  s4. \clef bass df,, |
  
  \barNumberCheck 49
  s4. df |
  s4. df |
  s2. * 6 |
  
  \barNumberCheck 57
  s2. * 2 |
  f4. f |
  f4. s |
}

leftHandLower = \relative { 
  bf,8 ef'-\slurShapeA ( f,  bf,) d'-\slurShapeA ( f, |
  % According to SrcA -- SrcB switches the ef and f
  bf,8) ef'-\slurShapeA ( f,  bf,) d'( f,_~ |
  <f ef' a>8) r \clef treble <f' c'>[( <bf d>]) r r |
  \clef bass c,,8 r \clef treble <c' g'>[( <f a>]) r r |
  \voiceFour bf,8 ef'-\slurShapeB ^( f,  bf,) d'-\slurShapeB ^( f, |
  bf,8) ef'-\slurShapeB ^( f,  bf,) d'4 |
  \oneVoice \clef bass bf,,8-. <f' d'>( <bf f'> \clef treble <d bf'>4) r8 |
  \clef bass <f, d' f>8 r <f ef'f>[ <bf d f>] r <d, d'>[ |
  
  \barNumberCheck 9
  <g, g'>8] r16 <g' d'>[( <c ef>8]->  <g d'>8-.)[ r16 <ef ef'>( <d d'>8]-> |
  <g, g'>8-.) bf'[( d,]  g,8-.) r r |
  <a a'>8[-. r16 a'( a8]  a[-.) r16 a( a8] |
  d,8-.) f[( a,]  d,8-.) r r |
  d'8-. a'( <f d'>)  cs-. a'( <g e'>) |
  d8-. a'( <f d'>)  a,-. a'( <g cs>) |
  d8-. a'( <f d'>)  cs-. a'( <g e'>) |
  d8-. a'( <f d'>)  c-. e( <a e'>) |
  
  \barNumberCheck 17
  bf,8-. e( <g d'>)  a,-. f'( c') |
  g,8-. cs( <e bf'>)  \stemDown f,-. d'( a') |
  \stemNeutral bf,8( e <g d'>)  a,( f' c') |
  g,8( cs <e bf'>) \stemDown f,( d' a') |
  \stemNeutral bf,8( e <g d'>)  a,( e' <g cs>) |
  d-\slurShapeD ( f bf)  cs,( e a) |
  <d f>8 r \clef treble <d' f>[->( <cs e>]) r <c fs>[->( |
  <b g'>8]) r <bf e>[->( <a f'>]) r r |
  
  \barNumberCheck 25
  \voiceFour bf,4 s8 bf4 s8 |
  bf4 s8 bf4 s8 |
  \oneVoice f8 r <f' c' ef>[( <bf d>]) r bf,[( |
  c8]) r <g' bf e>[( <f a f'>]) r r |
  \clef bass bf,,-. <f' ef'!>-. bf,-.  <f'! d'>-. bf,-. <f' d'>-. |
  bf,8-. <f' ef'>-. bf,-.  <f' d'>-. r \clef treble <d' fs bf>[->( |
  <ef g bf>8]) r <b d g>[->( <c ef g>]) r <d fs bf!>[->( |
  <ef g bf>8]) r <b d g>[->( <c ef g>]) r <d fs bf!>[->( |
  
  \barNumberCheck 33
  <ef g bf>8]) r <ef g b>[-. q]-. r <e g b>-.[ |
  q8]-. r <e g b e>[-. q]-. r <e g c e>[[-. |
  <e g bf! cs e>8]-. r r \ottava 1 <e'' df'>[ r <ef c'>]( |
  <d b'>8)[ r <df bf'>](  <c a'>)[ r <b af'>]( |
  <bf! g'>8)[ r <a gf'>](  <af f'>)[ r <g e'>]( |
  <gf ef'>8) \ottava 0 r r \clef bass <f,,, f'>4.( |
  <bf, bf'>8-.) r r \voiceFour b'4 \oneVoice r8 |
  c8( <g' ef'>) r \stemDown f,( <ef' a>) \stemNeutral r |
  
  \barNumberCheck 41
  <bf bf'>8-. r \clef treble <b' af'>[( <c g'>]) r <a gf'>[( |
  <bf f'>8]) r \voiceFour <gf bf>4. <f a>8( |
  \oneVoice <bf d>8) r r \voiceFour b4 s8 |
  c4 s8 f,4 s8 |
  \oneVoice <bf bf'>8-. r <b' af'>[( <c g'>]) r <a! gf'>[( |
  <bf! f'>8]) r \voiceFour <gf bf>4. <f a>8( |
  \oneVoice <gf bf df>8) r r r4 r8 |
  \clef bass \stemDown df,,-. cf''( f,  \voiceFour df df' df,) |
  
  \barNumberCheck 49
  gf,8-. bf'^( gf  df df' df,) |
  df,8-. cf''^( f,  df df' df,)
  \oneVoice gf,8-. bf'( gf  df df') r |
  bf,8( <f' df'>) r r4 r8 |
  \voiceFour <g,, g'>8^. r r \oneVoice r4 <g'' df' e>8-. | 
  <a c ef!>8-. <bf ef gf>-. <a ef' f>-.  <bf ef gf>-. <a ef' f>16-. r\fermata 
    r8 |
  bf,8-. ef'( f,)  bf,-. d'( f,) |
  f,8-. ef''( f,)  bf,-. d'( af) |
  
  \barNumberCheck 57
  <ef g>8-. ef'( bf)  a,!-. e''( a,) |
  d,8-. fs'( a,)  ef!-. g'( c,) |
  f,8 f' <c ef>  f, f' <bf, d> |
  f8 f' <c ef>  <bf d> r <g bf df e>->( |
  <f bf d! f>8) r <g bf df e>[( <f bf d! f>]) r <gf bf df e>->[( |
  <f bf d! f>8]) r <g! bf df e>[( <f bf d! f>]) r <gf bf df e>-> |
  <gf,, gf'>8 r r r4 r8 |
  \clef treble <df''' ff bf>8 r r r4 r8 |
  
  \barNumberCheck 65
  fs'8-. b-. e,-.  a,-. d!-. g-. |
  c,8-. f,-. bf-.  ef!-. af,-. df,-. |
  fs8-. b-. e,-.  a,-. d-. g-. |
  \clef bass c,8[( f, bf e f]-.) <f,, f'>-. |
  <bf, bf'>8-. r r <bf' d f bf> q <bf ef gf bf> |
  <bf d f bf>8-. r r \clef treble <bf' d f bf> q <bf ef gf bf> |
  <bf d f bf>8-. r r <bf' d f bf>[ r <bf ef gf bf>]-. |
  <bf d f bf>8[ r <bf ef gf bf>]-. <bf d f bf>[ r <bf ef gf bf>]-. |
  
  \barNumberCheck 73
  <bf d f bf>8 r r16 <cs, cs'>[( <d d'>8]) r r16 <a a'>[( |
  <bf bf'>8]) r \clef bass r16 <e, e'>[( <f f'>8]) r r16 <cs cs'>[( |
  <d d'>8]) r r16 <a a'>[( <bf bf'>8]) r r16 <e, e'>[( |
  <f f'>8]) r r16 <cs cs'>[( <d d'>8]) r r16 <a a'>[( |
  <bf bf'>8]) r r r4 r8 |
  r4 r8 \clef treble <bf'' f' bf>4 r8 |
  \clef bass <bf,, bf'>2.\fermata |
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
  s2.\p |
  s2. * 3 |
  s2.\pp |
  s2.^\delicatiss
  s2.^\dolciss
  s4. s4 s8\ff |
  
  \barNumberCheck 9
  s4. s8. s\< |
  s16 s\! s4 s4. |
  s2.\p |
  s8 s4\f s4. |
  s2.^\dolce |
  s2. * 2 |
  s8 s8.\> s16\! s4. |
  
  \barNumberCheck 17
  s2. * 4 |
  s8\> s\! s\cresc s4. |
  s2. |
  s2.\f |
  \revert DynamicTextSpanner.style
  s2.\decresc |
  
  \barNumberCheck 25
  s8 s\!^\leggiero s s4. |
  s2. * 3 |
  s2.^\scherzando |
  s4. s8. s\f |
  s2. |
  s8 s4\cresc s4. |
  
  \barNumberCheck 33
  s2. * 2 |
  \override DynamicTextSpanner.style = #'none
  s4.\sf s\decresc
  s2. * 2 |
  s4. s\f |
  s8 s\p s s4. |
  s8 s\< s16 s\! s8\> s16 s\! s8 |
  
  \barNumberCheck 41
  s4 s8\> s4\! s8-\tweak to-barline ##f \> |
  s8\! s s\> s4.\! |
  s2.\< |
  s8. s16\! s8\> s4. <>\! |
  s4 s8\> s4\! s8-\tweak to-barline ##f \> |
  s8\! s s\> s4.\! |
  s2.\f |
  s2.\< |
  
  \barNumberCheck 49
  s2.\> |
  s2.\< <>\! |
  s4 s2\cresc |
  s2. * 2 |
  s4 s2\ff |
  \revert DynamicTextSpanner.style
  s4. s\semprePuiAnimato
  s2. |
  
  \barNumberCheck 57
  s2. * 5 |
  s2 s8. s16\! |
  % fz SrcB
  s4.\fz s8 s4\< |
  s2. <>\! |
  
  \barNumberCheck 65
  s2. |
  s2.\dim |
  s2 s8. s16\! |
  s4. s8. s8\f\> s16\! |
  s2. |
  s8 s4\cresc s4. |
  s8 s4\ff s4. |
  s2. |
  
  \barNumberCheck 73
  s2. * 5 |
  s2.\ff |
  s2. |
}

pedal = {
  s8 s4\sd s8\su s4\sd |
  s8\su s4\sd s8\su s4\sd |
  s2.\su |
  s2. |
  s8 s4\sd s8\su s4\sd |
  s8\su s4\sd s8\su s4\sd |
  s4. s4 s8\su |
  s2. |
  
  \barNumberCheck 9
  s2. |
  s8 s4\sd s8 s4\su |
  s2. |
  s8 s4\sd s8 s4\su |
  s2. * 4 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 2 |
  s4\sd s8\su s4. |
  s4\sd s8\su s4. |
  s2. * 4 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 6 |
  s4.\sd s4 s8\su |
  s4.\sd s4 s8\su |
  
  \barNumberCheck 49
  \repeat unfold 5 { s4.\sd s4 s8\su | }
  s2. |
  % Extra pedal marks, SrcB
  s4\sd s8\su s4\sd s8\su |
  s4\sd s8\su s4\sd s8\su |
  
  \barNumberCheck 57
  s4\sd s8\su s4\sd s8\su |
  s4\sd s8\su s4\sd s8\su |
  s2. * 4 |
  s2.\sd |
  s2.\su |
  
  \barNumberCheck 65
  s2. * 8 |
  
  \barNumberCheck 73
  s2. * 4 |
  s2.\sd |
  s2. |
  s2 s4\su |
}

tempi = {
  \tempo "Scherzo vivace" 4. = 88
  s2. * 5 |
  \set Score.tempoHideNote = ##t
  \tempo 4. = 80
  s2. |
  \tempo 4. = 88
  s2. * 2 |
  
  \barNumberCheck 9
  s2. * 8 |
  
  \barNumberCheck 17
  s2. * 8 |
  
  \barNumberCheck 25
  s2. * 8 |
  
  \barNumberCheck 33
  s2. * 8 |
  
  \barNumberCheck 41
  s2. * 8 |
  
  \barNumberCheck 49
  s2. * 5 |
  s4. s8. \tempo 4. = 10  s16 \tempo 4. = 88 s8 |
  s2. * 2 |
  
  \barNumberCheck 57
  s2. * 8 |
  
  \barNumberCheck 65
  s2. * 2 |
  s4. s4 \tempo 4. = 80 s8 |
  s2. |
  \tempo 4. = 88
  s2. * 4 |
  
  \barNumberCheck 73
}

forceBreaks = {
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 4 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 3 { s2.\noBreak } s2.\pageBreak
  
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
  \repeat unfold 2 { s2.\noBreak } s2.\break\noPageBreak
}

scherzoNotes =
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
    \context {
      \Staff
      \remove Time_signature_engraver
    }
  }
}

\include "articulate.ly"

scherzoMidi =
\book {
  \bookOutputName "scherzo"
  \score {
    \keepWithTag midi
    \articulate <<
      \new Staff = "upper" << \rightHand \dynamics \pedal \tempi >>
      \new Staff = "lower" << \leftHand \dynamics \pedal \tempi >>
    >>
    % Switch the Dynamic_performer back to Voice context, see header-paper.ily
    % This is needed because the score dynamics crescendo while the voice
    % dynamics decrecsendo, but the MIDI output suffers.
    \midi {
      \context {
        \Staff
        \remove "Dynamic_performer"
      }
      \context {
        \Voice
        \consists "Dynamic_performer"
      } 
    }
  }
}
