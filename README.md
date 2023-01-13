# README
<img width="897" alt="Screen Shot 2023-01-12 at 9 01 47 PM" src="https://user-images.githubusercontent.com/102133027/212255452-da47dbb5-59ac-4098-894b-f54ba2d81df5.png">

<h2>Set up this back end service by running:</h2>

  <li>bundle install</li>
  <li>rails db:{drop,create,migrate,seed}</li>

<h4>Endpoint 1: New Subscription</h4>
example call: POST "localhost:3000/api/v1/customers/1/subscriptions/create?title=Seasonal Mix&price=75.00&status=true&frequency=once a month&customer_id=1&tea_id=3"

example response: 
