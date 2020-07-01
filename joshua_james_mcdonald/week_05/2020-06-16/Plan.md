# New rails app

## Main idea

need 3 tables connected. Let go for a customers, an orders and a products table. 

## tables schema

    Products                            Orders                          Customers                            OrderItems
    ===========                         ============                    =========                            ============
    Id int primary key auto increment   Id int primary key NOINCREMENT  Id int primary key auto increment    FOREIGN KEY order Id
    Name text                                                           FirstName text                       FOREIGN KEY Product ID
    Description text                    FOREIGN KEY customer.id                                              quantity int
    CurrentStock text                   OrderDate datetime              PhoneNumber int                     
    cost number                                                         Email text                          
