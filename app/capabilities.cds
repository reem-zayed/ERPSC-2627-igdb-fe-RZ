using GameService as service from '../srv/game-service';

annotate service.Student with @(odata.draft.enabled);

annotate service.FavoriteGame with @cds.search : {
    to_game.Name,
    to_game.Genre,
    to_game.Platform,
};