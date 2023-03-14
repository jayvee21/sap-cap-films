namespace movies;

using { cuid, managed} from '@sap/cds/common';


entity Films : cuid, managed {
    title: String;
    genre : Association to Genre;
    studio: Association to Studio;
    score: Integer;
    profitability: Decimal;
    rottenTomato: Integer;
    gross: Decimal;
    year: Integer;
}

entity Genre {
    key ID : Integer;
    name: String;
    films: Association to many Films on films.genre = $self;
}

entity Studio {
    key ID : Integer;
    name: String;
    films: Association to many Films on films.studio = $self;
}