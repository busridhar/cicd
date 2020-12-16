using my.bookshop as my from '../db/data-model';

service CatalogService {
   @Capabilities:{Insertable:false, Deletable:true}
    entity Books as projection on my.Books;
    @readonly entity Authers as projection on my.Authers;
    
}