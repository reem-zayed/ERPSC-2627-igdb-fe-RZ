using GameService as service from '../srv/game-service';

annotate service.Student with @(odata.draft.enabled);

annotate service.FavoriteGame with @cds.search : {
    to_game.Name,
    to_game.Genre,
    to_game.Platform,
};
annotate service with @Capabilities.FilterFunctions : ['tolower'];
annotate service.Student with @Capabilities.FilterRestrictions : {
    FilterExpressionRestrictions : [
        {
            Property : First_name,
            AllowedExpressions : 'SearchExpression',
        },
        {
            Property : Last_name,
            AllowedExpressions : 'SearchExpression',
        },
    ],
};