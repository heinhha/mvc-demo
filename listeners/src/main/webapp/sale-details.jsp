<%@page import="com.jdc.shop.model.entity.SaleItem"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="com.jdc.shop.model.entity.Voucher"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sale Details</title>
</head>
<body>

	<%
	Voucher voucher = (Voucher)request.getAttribute("data");
	%>
	<%!String formatDateTime(LocalDateTime date) {
		return date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"));
	}%>


	<!-- Title -->
	<h1>Sale Details</h1>

	<!-- Sale Summary -->
	<table>
		<tr>
			<td>Voucher Id</td>
			<td><%=voucher.getId()%></td>
		</tr>

		<tr>
			<td>Customer Name</td>
			<td><%=voucher.getCustomer()%></td>
		</tr>

		<tr>
			<td>Sale Date Time</td>
			<td><%=formatDateTime(voucher.getSaleTime())%></td>
		</tr>
	</table>


	<!-- Sale Item Table -->
	<h3>Sale Item</h3>

	<table style="width: 70%">
		<thead>
			<tr>
				<td>Product</td>
				<td>Category</td>
				<td>Unit Price</td>
				<td>Qty</td>
				<td>Total</td>
			</tr>
		</thead>
		<tbody>
			<%
			for (SaleItem item : voucher.getSales()) {
			%>

			<tr>
				<td><%=item.getProduct().getName()%></td>
				<td><%=item.getProduct().getCategory()%></td>
				<td><%=item.getProduct().getPrice()%></td>
				<td><%=item.getCount()%></td>
				<td><%=item.getTotal()%></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>

	<hr/>
	<p>
		<a href="index.jsp">Home</a>
	</p>
</body>
</html>