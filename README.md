# chopin-opus-12
[LilyPond](https://lilypond.org/) engraving source files used to create Chopin's Variations Brillantes, opus 12.

## Creating the PDF and MIDI files
(I highly recommend the [Frescobaldi](https://www.frescobaldi.org/) IDE for LilyPond.  It makes all of the following much easier.)

The PDF and MIDI files can be created by issuing the following command in the directory this file is in (assuming you have `lilypond` in your PATH variable):

        lilypond variations-brillantes.ly

To create a smaller PDF, try:

        lilypond -dno-point-and-click variations-brillantes.ly

You may also [download the latest release](https://github.com/ksnortum/chopin-opus-12/releases/latest) to get the compiled PDF and MIDI files.

## Errors and Warnings
It was my intent to create LilyPond source files that compiled without errors or warnings, but this was not possible.  When you compile you will see two errors and a warning.  The warning is because for me to splice the scherzo to the theme together I had to have a key change at the end of the theme.  But without any music after the key change, it will print without staff lines going through it.  To facilitate this, I placed an empty grace note at the end of the theme file, which produces a warning about stealing time.

The other two programming errors are from a [LilyPond issue](https://gitlab.com/lilypond/lilypond/-/issues/6598).

## MIDI output
MIDI output will be in three files: introduction.midi, theme.midi (which includes the scherzando and lento parts) and scherzo.midi.  Generating one large MIDI file was not practical.

## Two-sided printing
The pieces are set up so that they can be printed on two sides of the paper, leaving an extra margin amount on the inside pages for binding.  If you don't want this, open the file `header-paper.ily`,
find the `\paper` block (in the middle) and set `two-sided = ##f`.

## Thanks
Thanks to the folks at the [LilyPond user's mailing list](mailto://lilypond-user@gnu.org), especially [Jean Abou Samra](https://github.com/jeanas), for all the help getting LilyPond to do what I wanted.

## License
This work is licensed under the [Attribution-ShareAlike 4.0 International (CC BY-SA 4.0)](https://creativecommons.org/licenses/by-sa/4.0/) from Creative Commons.  Follow the link for details.  Basically, you can use this work however you want *if* you keep the same license and you attribute the work to me, Knute Snortum (knute [at] snortum [dot] net).
