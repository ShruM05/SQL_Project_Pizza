-- Q1: Retrieve the total number of orders placed.
--SELECT Count(*) FROM Orders;

--Q2: Identify the highest-priced pizza.

/*Select Pizza_types.name, Pizzas.Price from pizza_types 
join Pizzas on pizza_types.Pizza_type_id = pizzas.pizza_type_id
order by price Desc limit 1;*/

--Q3: List the top 5 most ordered pizza types along with their quantities.
/*Select Pizza_Types.name, SUM(Order_details.quantity) as Quantity from Order_details join pizzas on Order_details.pizza_id = Pizzas.pizza_id 
join Pizza_Types on Pizza_Types.Pizza_Type_ID = Pizzas.Pizza_Type_ID
Group by Pizza_Types.name order by Quantity Desc Limit 5;*/

--Q4: Determine the distribution of orders by hour of the day.
/*Select Hour(Time), Count(Orders_ID) as Count_Orders from Orders
Group by Hour(Time);*/

--Q5: Group the orders by date and calculate the average number of pizzas ordered per day.
/*with order_quantity as (Select Orders.date, Sum(order_details.quantity) as Quantity from orders join order_details on orders.order_id = Order_details.order_id
Group by orders.date;) 
Select Avg(Quantity) from order_quantity;*/

