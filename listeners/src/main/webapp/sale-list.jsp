<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@page import="com.jdc.shop.model.entity.Voucher"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sale History</title>
</head>
<body>

	<%!String formatDateTime(LocalDateTime date) {
		return date.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm"));
	}%>

	<%
	@SuppressWarnings("unchecked")
	List<Voucher> list = (List<Voucher>) request.getAttribute("data");
	%>

	<!-- Title -->

	<!-- Sale History Table -->
	<table style="width: 80%">
		<thead>
			<tr>
				<td>Voucher ID</td>
				<td>Sale Date</td>
				<td>Customer Name</td>
				<td>Item Count</td>
				<td>Sale Total</td>
			</tr>
		</thead>
		<tbody>
			<%
			for (Voucher v : list) {
			%>
			<tr>
				<td>
					<a href="sale-details?id=<%=v.getId()%>"><%=v.getId()%></a>
				</td>
				<td><%=formatDateTime(v.getSaleTime())%></td>
				<td><%=v.getCustomer()%></td>
				<td><%=v.itemCount()%></td>
				<td><%=v.total()%></td>
			</tr>

			<%
			}
			%>
		</tbody>
	</table>
</body>
</html>