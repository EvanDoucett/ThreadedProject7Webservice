<%--
  Created by IntelliJ IDEA.
  User: edouc
  Date: 2022-10-16
  Time: 3:12 p.m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Agents</title>
    <script src="jquery.js"></script>
    <script src="agents.js"></script>
    <script>
        var jQueryGet = function()
        {
            $.get("http://localhost:8080/JSPDay4JPAEX-1.0-SNAPSHOT/api/agent",
                function(data){
                    for (i=0; i<data.length; i++)
                    {
                        $("#agentList").append("<option value='" + data[i].agentId + "'>"
                            + data[i].agtFirstName + " " + data[i].agtLastName + "</option>");
                    }
                }, "json");
        }
        function jQueryShowAgent(id)
        {
            $.ajax({
                url: "http://localhost:8080/JSPDay4JPAEX-1.0-SNAPSHOT/api/agent/getagent/" + id,
                method: "GET",
                dataType: "json",
                success: function(data)
                {
                    $("#agentJSON").html("<ul>");
                    $("#agentJSON").append("<li>" + data.agentId + "</li>");
                    $("#agentJSON").append("<li>" + data.agtFirstName + "</li>");
                    $("#agentJSON").append("<li>" + data.agtMiddleInitial + "</li>");
                    $("#agentJSON").append("<li>" + data.agtLastName + "</li>");
                    $("#agentJSON").append("<li>" + data.agtBusPhone + "</li>");
                    $("#agentJSON").append("<li>" + data.agtEmail + "</li>");
                    $("#agentJSON").append("<li>" + data.agtPosition + "</li>");
                    $("#agentJSON").append("<li>" + data.agencyId + "</li>");
                    $("#agentJSON").append("</ul>");
                }
            }).fail(function()
            {
                alert("An Error Occurred");
            });
        }
        var fetchGet = async function () {
            var url = "http://localhost:8080/JSPDay4JPAEX-1.0-SNAPSHOT/api/agent";
            var agents = await fetch(url);
            let agentsJSON = await agents.json();
            for (i=0; i<agentsJSON.length; i++)
            {
                $("#agentListFetch").append("<option value='" + agentsJSON[i].agentId + "'>"
                    + agentsJSON[i].agtFirstName + " " + agentsJSON[i].agtLastName + "</option>");
            }
        }
        var fetchShowAgent = async function(id)
        {
            var url = "http://localhost:8080/JSPDay4JPAEX-1.0-SNAPSHOT/api/agent/getagent/" + id;
            var agent = await fetch(url);
            let agentJSON = await agent.json();
            $("#agentFetch").html("<ul>");
            $("#agentFetch").append("<li>" + agentJSON.agentId + "</li>");
            $("#agentFetch").append("<li>" + agentJSON.agtFirstName + "</li>");
            $("#agentFetch").append("<li>" + agentJSON.agtMiddleInitial + "</li>");
            $("#agentFetch").append("<li>" + agentJSON.agtLastName + "</li>");
            $("#agentFetch").append("<li>" + agentJSON.agtBusPhone + "</li>");
            $("#agentFetch").append("<li>" + agentJSON.agtEmail + "</li>");
            $("#agentFetch").append("<li>" + agentJSON.agtPosition + "</li>");
            $("#agentFetch").append("<li>" + agentJSON.agencyId + "</li>");
            $("#agentFetch").append("</ul>");

        }
    </script>
</head>
<jsp:include page="navigationAdmin.jsp" />

<body onload="loadAgents()">
    <select id="agentselect" onchange="getagent(this.value)">
        <option value="">Select an agent to view details</option>
    </select>

    <div id="agentJSON">agent details</div>

    <table id="agentdetails">
        <tr><th>Agent Details</th></tr>
    </table>

<%--    <select id="agentListFetch" onchange="fetchShowAgent(this.value)">--%>
<%--        <option value="">Select an agent</option>--%>
<%--    </select>--%>

    <script>
        $(jQueryGet);
        $(fetchGet);
    </script>
</body>

</html>
