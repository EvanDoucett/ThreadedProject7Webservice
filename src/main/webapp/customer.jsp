<%--
  Created by IntelliJ IDEA.
  User: edouc
  Date: 2022-10-17
  Time: 8:03 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customers</title>
    <script src="jquery.js"></script>
    <script src="customer.js"></script>
</head>
<body>
<%--<jsp:include page="header.jsp" />--%>
<%--<jsp:include page="navigation.jsp" />--%>
<%--<jsp:include page="navigationAdmin.jsp" />--%>
    <h1>Customer Details</h1>

    <select id="customerSelect" onchange="getCustomer(this.value)" multiple>
        <option value="">Select a customer</option>
    </select>
<br/>
<br/>
    <form>
        Customer Id: <input type="number" id="customerId" disabled="disabled"/><br/>
        First Name: <input type="text" id="custFirstName"/><br/>
        Last Name: <input type="text" id="custLastName"/><br/>
        Address: <input type="text" id="custAddress"/><br/>
        City: <input type="text" id="custCity"/><br/>
        Province: <input type="text" id="custProv"/><br/>
        Postal: <input type="text" id="custPostal"/><br/>
        Country: <input type="text" id="custCountry"/><br/>
        Home Phone: <input type="text" id="custHomePhone"/><br/>
        Business Phone: <input type="text" id="custBusPhone"/><br/>
        Email: <input type="text" id="custEmail"/><br/>
        AgentId: <input type="number" id="agentId "/><br/>
        <br/>
        <button id="btnUpdate" type="button" >Update Customer</button>
    </form>
<p id="customerCount"></p>
<p id="message"></p>
<br/>
<ul id="customerstable">
    <li value=""></li>
</ul>
<script>

//to udpate the client by sending a JSON file and modifying a table//
//used on the customer.jsp - <button id="btnUpdate" type="button">Update Customer</button>//
//does not pass any param//

    $("#btnUpdate").click(function(){
        $.ajax({
            url:"http://localhost:8080/JSPFAll2022Day7REST-1.0-SNAPSHOT/api/customer/putcustomer/"+ $("#customerId").val(),
            method:"PUT",
            config: {
                header: {
                "Access-Control-Allow-Origin": "*"
                }
            },
            cache:false,
            dataType:"json",
            success: function(resultdata){$("#message").html(resultdata.message)}
        });
    });

// $("#btnUpdate").click( function(){
//     $.ajax({
//         url: "http://localhost:8080/JSPFAll2022Day7REST-1.0-SNAPSHOT/api/customer/putcustomer/"
//             + $("#customerId").val(),
//         type: "PUT",
//         data: '{"CustFirstName":"' + $("#CustFirstName").val()
//             + '", "CustLastName":"' + $("#CustLastName").val()
//             + '", "CustAddress":"' + $("#CustAddress").val()
//             + '", "CustCity":"' + $("#CustCity").val()
//             + '", "CustProv":"' + $("#CustProv").val()
//             + '", "CustPostal":"' + $("#CustPostal").val()
//             + '", "CustCountry":"' + $("#CustCountry").val()
//             + '", "CustHomePhone":"' + $("#CustHomePhone").val()
//             + '", "CustBusPhone":"' + $("#CustBusPhone").val()
//             + '", "CustEmail":"' + $("#CustEmail").val()
//             + '", "AgentId":"' + $("#AgentId").val() + '"}',
//         //contentType: "application/json",
//         cache: false,
//         dataType: "json",
//     });
// });
</script>
</body>
<jsp:include page="footer.jsp" />
