using movies as db from '../db/schema';

service CatalogService {

    entity Films as SELECT from db.Films{
        *,
        genre.name as genre,
        studio.name as studio
    };
}