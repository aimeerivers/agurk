# language: da

Egenskab: Som bruger ønsker jeg at kunne vælge en eller flere Favoritkanaler

  Scenarie: Jeg vælger en og to Favoritkanaler
    Givet jeg er på radio-oversigten
    Når jeg tilføjer "P4 København" som en Favoritkanal
    Så skal jeg se kun de følgende kanaler:
       | P4 København |
    Når jeg tilføjer "DR P1" som en Favoritkanal
    Så skal jeg se kun de følgende kanaler:
       | P4 København |
       | DR P1        |
