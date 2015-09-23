inf
===

Zet deze hele folder 'inf' in zijn geheel in de 'collects' folder van Racket.

Bij OSX is dat in /Applications/Racket.../collects

Vervolgens kun je in de file .racketrc deze regels toevoegen om ervoor te zorgen dat deze modules automatisch worden ingeladen wanneer racket start:

    (require inf/lilypond)
    (require inf/music_transforms)

Kijk in de files voor voorbeelden.

