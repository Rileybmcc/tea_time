# README
<img width="897" alt="Screen Shot 2023-01-12 at 9 01 47 PM" src="https://user-images.githubusercontent.com/102133027/212255452-da47dbb5-59ac-4098-894b-f54ba2d81df5.png">

<h2>Set up this back end service by running:</h2>

  <li>bundle install</li>
  <li>rails db:{drop,create,migrate,seed}</li>

<h4>Endpoint 1: New Subscription</h4>
<p>example call: POST "localhost:3000/api/v1/customers/1/subscriptions/create?title=Seasonal Mix&price=75.00&status=true&frequency=once a month&customer_id=1&tea_id=3"</p>

example response:
{
    "outcome": "success",
    "data": {
        "id": 3,
        "title": "Seasonal Mix",
        "price": 75.0,
        "status": true,
        "frequency": "once a month",
        "customer_id": 1,
        "tea_id": 3,
        "created_at": "2023-01-13T07:07:47.846Z",
        "updated_at": "2023-01-13T07:07:47.846Z"
    }
}

<h4>Endpoint 2: Destroy Subscription</h4>
<p>example call: DELETE "localhost:3000/api/v1/customers/1/subscriptions/3"</p>

example response:
{
    "outcome": "success",
    "data": {}
}


<h4>Endpoint 3: Show Users Subscriptions</h4>
<p>example call: GET "localhost:3000/api/v1/customers/2"</p>

example response:
{
    "user": {
        "id": 2,
        "first_name": "Shawn",
        "last_name": "Spencer",
        "email": "ShawnS@gmail",
        "address": "1444 E 12th St",
        "created_at": "2023-01-12T22:23:43.862Z",
        "updated_at": "2023-01-12T22:23:43.862Z"
    },
    "data": []
}
