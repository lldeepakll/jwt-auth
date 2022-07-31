### JWT authentication

For login 

***POST localhost:3000/auth/login***

> Request :

```
{
  "email":"deepak@gmail.com",
  "password":"123456"
}
```

> Response : 

```
{
    "token": "eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2NTk4ODIzMDB9.uqvehljBu8RUch6hwZXxR1SzpjqDgszk21jVdSydpvs",
    "id": 1,
    "name": "Deepak",
    "email": "deepak@gmail.com"
}
```
