namespace my.bookshop;

entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
  auther : Association to Authers;
}

entity Authers {
  key ID : Integer;
  name  : String;
  books  : Association to many Books on books.auther = $self;
}