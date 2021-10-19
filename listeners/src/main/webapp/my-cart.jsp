<%@page import="java.text.DecimalFormat"%>
<%@page import="com.jdc.shop.model.ShoppingCart"%>
<%@page import="com.jdc.shop.model.entity.SaleItem"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Cart</title>
</head>
<body>
	
	<h1>My Cart</h1>
	
	<hr/>
	<p>
		<a href="index.jsp">Home</a>
	</p>
	<hr/>
	
	<p>
		Item Details in Shopping Cart.
	</p>
	
	<%ShoppingCart cart = (ShoppingCart)session.getAttribute("cart"); %>
	
	
	<%! String format(int data) {
		return new DecimalFormat("#,##0").format(data);
	}
	%>
	
	<table style="width: 70%">
		<tr>
			<td>Product</td>
			<td>Category</td>
			<td>Unit Price</td>
			
			<td>Count</td>
			
			<td>Total</td>
		</tr>
		
		<%
			for(SaleItem item : cart.items()) {
		%>
		<tr>
			<td><%=item.getProduct().getName()%></td>
			<td><%=item.getProduct().getCategory()%></td>
			<td><%=item.getProduct().getPrice()%></td>
			<td style="text-align: left;">
				<!-- Minus Count -->
				<a href="cart-minus?product=<%=item.getProduct().getId()%>">-</a>
				
				<%=item.getCount() %>
				
				<!-- Plus Count -->
				<a href="cart-plus?product=<%=item.getProduct().getId()%>">+</a>
				
			</td>
			<td><%=item.getTotal()%></td>
		</tr>
		<%
		}
		%>
		
		
		<tr>
			<td colspan="3">Total</td>
			<td><%=cart.itemCount() %></td>
			<td><%=format(cart.total())%></td>
		</tr>
	</table>
	
	<hr/>
	
	<h4>Check Out</h4>
	<form action="checkout" method="post">
		<label>Customer Name</label>
		<input type="text" placeholder="Enter Customer Name" name="customer" />
		<button type="submit">Checkout</button>
	</form>
	
	
	
</body>
</html>