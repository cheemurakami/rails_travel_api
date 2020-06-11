**Rails Travel API**
----
_An Api that give information about hot travel spots._

* **URL** 
  _https://travel-api-rails.herokuapp.com/_

* **Method:**

  `GET` | `POST` | `DELETE` | `PUT`

  * _Note: User must reveive token for authorization to make all requests aside from 'Get' requests._

* **Authorization:**
  * _visit in postman or cUrl:_ https://travel-api-rails.herokuapp.com/auth
  * _under 'Body' enter and create 'email' and 'password'_
  * _submit a 'Post' request_
  * _should expect:_  `{
    "status": "success",
    "data": {
        "id": 1,
        "provider": "email",
        "uid": "jozypants@gmail.com",
        "allow_password_change": false,
        "name": null,
        "nickname": null,
        "image": null,
        "email": "jozypants@gmail.com",
        "created_at": "2020-06-11T16:35:51.233Z",
        "updated_at": "2020-06-11T16:35:51.344Z"
    }
}`

  
* **Data Params**

  `id=[integer]`<br>
  `place=[string]`<br>
  `content=[string]`<br>
  `author=[string]`<br>

* **URL Params**

  * _Example for retrieving a specific 'id':_  https://travel-api-rails.herokuapp.com/api/v1/reviews/2


* **Success Response:**

  * **Code:** 200 <br />
    **Content:** `{ :success }`

  OR

  * **Code:** 201 <br />
  **Content:** `{ :created }`
 
* **Error Response:**

  * **Code:** 401 UNAUTHORIZED <br />
    **Content:** `{ error : "You need to sign in or sign up before continuing." }`

  OR

  * **Code:** 422 UNPROCESSABLE ENTRY <br />
    **Content:** `{ error : ":unprocessable_entity" }`

* **Sample Call:**

  `{
    "id": 1,
    "content": "Typewriter trust fund truffaut master direct trade portland. Waistcoat lo-fi muggle magic wayfarers stumptown farm-to-table.",
    "author": "Rosie Peach",
    "place": "Saint Martin"
}`
### Chisato and Jozy (c) MIC 2020

