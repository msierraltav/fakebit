# A cool Api 
A cool api to manage users with a postgres database and spring boot.

## Configuration

Modify the application.properties file to set the database local connection to your postgres database.

## how to query 

First start the proyect starting java/com.msierralta/api/ApiApplication.java
Then using Insommia , curl or similar hit this endpoint 


## Add a new user

```
# POST -> localhost:8080/api/users 
# Body text Json

{
	"name" : "Juanito" ,
	"email": "mail@mail.com",
	"password" : "123455",
	"age" : 6
}

``` 

## get all users 

```
# GET -> localhost:8080/api/users 
```

## get user by id

```
# GET -> localhost:8080/api/users/{id} 
```

## update user by id

```
# PUT -> localhost:8080/api/users/{id}
# Body text Json

{
	"name" : "Juanito" ,
	"email": "new@mail.com",
	"password" : "09878766543",
	"age" : 7
}

```

## delete user by id

You need to hit the api twice in the next minute to delete the user.

```
# DELETE -> localhost:8080/api/users/{id}
```
