:- encoding(utf8).

% actuo/2
actuo(leoDiCaprio, wolfOfWallStreet).
actuo(margotRobbie, wolfOfWallStreet).
actuo(jonahHill, wolfOfWallStreet).
actuo(leoDiCaprio, onceUponATimeInHollywood).
actuo(bradPitt, onceUponATimeInHollywood).
actuo(margotRobbie, onceUponATimeInHollywood).
actuo(joePesci, goodFellas).
actuo(robertDeNiro, goodFellas).
actuo(rayLiotta, goodFellas).
actuo(lorraineBracco, goodFellas).
actuo(leoDiCaprio, catchMeIfYouCan).
actuo(tomHanks, catchMeIfYouCan).
actuo(michaelKeaton, birdman).
actuo(emmaStone, birdman).

ganoElOscar(birdman).

% p ^ q => r
suertude(Persona) :-
  actuo(Persona, Pelicula) ,
  ganoElOscar(Pelicula).


:- begin_tests(peliculas).

  test(consultaIndividualFuncionaOk, nondet):-
    actuo(leoDiCaprio, onceUponATimeInHollywood).

:- end_tests(peliculas).
