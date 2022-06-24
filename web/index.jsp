<%-- 
    Document   : index
    Created on : Jun 24, 2022, 2:08:13 PM
    Author     : phung
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="cn.techtutorial.dao.ProductDao"%>
<%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    User auth = (User) request.getSession().getAttribute("auth");
    if (auth != null) {
        request.setAttribute("auth", auth);
    }

    ProductDao pd = new ProductDao(DbCon.getConnection());
    List<Product> products = pd.getALLProducts();
    
 ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    List<Cart> cartProduct = null;
    if (cart_list != null) {
        request.setAttribute("cart_list", cart_list);
    }
%>



<!DOCTYPE html>
<html>
    <head>
        <%@include file="includes/head.jsp" %>
        <title>Welcome to Shopping Cart!</title>
    </head>
    <body>
        <%@include file="includes/navbar.jsp" %>

        <div class="container">
            <div class="card-header my-3">All Products</div>
            <div class="row">

                <%            if (!products.isEmpty()) {
                for (Product p : products) {%>
                <div class="col-md-3">
                    <div class="card w-100" style="width: 18rem;">
                        <img class="card-img-top" src="product-images/<%= p.getImage()%>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%= p.getName()%></h5>
                            <h6 class="price"><%= p.getPrice()%></h6>
                            <h6 class="category"><%= p.getCategory()%></h6>
                            <div class="mt-3 d-flex justify-content-between">
                                <a href="add-to-cart?id=<%= p.getId()%>" class="btn btn-primary">Add to cart</a>
                                <a href="order-now?quantity=1&id=<%= p.getId()%>" class="btn btn-primary">Buy Now</a>
                            </div>


                        </div>
                    </div>
                </div>
                <%}
                    }
                %>

            </div>
        </div>

        <%@include file="includes/footer.jsp" %>
    </body>
</html>
