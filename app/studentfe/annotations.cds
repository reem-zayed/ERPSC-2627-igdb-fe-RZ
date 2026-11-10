using GameService as service from '../../srv/game-service';
annotate service.Student with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Voornaam',
                Value : First_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Achternaam',
                Value : Last_name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'Algemene informatie',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'FavorieteGames',
            Label : 'Favoriete games',
            Target : 'to_favos/@UI.LineItem',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Voornaam',
            Value : First_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Achternaam',
            Value : Last_name,
        },
    ],
);

annotate service.Student with @(
    UI.HeaderInfo : {
        TypeName : 'Student',
        TypeNamePlural : 'Studenten',
        Title : {
            $Type : 'UI.DataField',
            Value : First_name,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : Last_name,
        },
    },
);

annotate service.FavoriteGame with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Cover',
            Value : to_game.Cover_url,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Game',
            Value : Game_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Genre',
            Value : to_game.Genre,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Platform',
            Value : to_game.Platform,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Releasedatum',
            Value : to_game.Release_date,
        },
    ],
);

annotate service.Game with {
    Game_ID      @title : 'ID';
    Name         @title : 'Game'         @Common.FieldControl : #ReadOnly;
    Genre        @title : 'Genre'        @Common.FieldControl : #ReadOnly;
    Platform     @title : 'Platform'     @Common.FieldControl : #ReadOnly;
    Release_date @title : 'Releasedatum' @Common.FieldControl : #ReadOnly;
    Cover_url    @title : 'Cover'        @Common.FieldControl : #ReadOnly  @UI.IsImageURL;
    Publisher    @title : 'Uitgever'     @Common.FieldControl : #ReadOnly;
    Description  @title : 'Beschrijving' @Common.FieldControl : #ReadOnly  @UI.MultiLineText;
};

annotate service.FavoriteGame with {
    Game_ID @(
        Common.Label : 'Game',
        Common.Text : to_game.Name,
        Common.TextArrangement : #TextOnly,
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'Game',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Game_ID,
                    ValueListProperty : 'Game_ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Name',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Genre',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Platform',
                },
            ],
        },
    );
};

annotate service.Student with @(
    UI.SelectionFields : [
        First_name,
        Last_name,
    ],
);

annotate service.Student with {
    First_name @title : 'Voornaam';
    Last_name  @title : 'Achternaam';
};

annotate service.FavoriteGame with @(
    UI.HeaderInfo : {
        TypeName : 'Favoriete game',
        TypeNamePlural : 'Favoriete games',
        Title : {
            $Type : 'UI.DataField',
            Value : to_game.Name,
        },
        Description : {
            $Type : 'UI.DataField',
            Value : to_game.Genre,
        },
        ImageUrl : to_game.Cover_url,
    },
    UI.FieldGroup #Details : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_game.Genre,
            },
            {
                $Type : 'UI.DataField',
                Value : to_game.Platform,
            },
            {
                $Type : 'UI.DataField',
                Value : to_game.Publisher,
            },
            {
                $Type : 'UI.DataField',
                Value : to_game.Release_date,
            },
        ],
    },
    UI.FieldGroup #Beschrijving : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_game.Description,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Details',
            Label : 'Details',
            Target : '@UI.FieldGroup#Details',
        },
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Beschrijving',
            Label : 'Beschrijving',
            Target : '@UI.FieldGroup#Beschrijving',
        },
    ],
);

annotate service.Student with {
    First_name @mandatory;
    Last_name  @mandatory;
};