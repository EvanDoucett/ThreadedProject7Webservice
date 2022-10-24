function loadAgents()
{
    var req = new XMLHttpRequest();
    var agentselect = document.getElementById("agentselect");

    req.onreadystatechange = function() {
        if (req.readyState ==4 && req.status == 200 )
        {
            var agents = JSON.parse(req.responseText);
            for (i=0; i < agents.length; i++)
            {
                var agent = agents[i];
                var newoption = document.createElement("option")
                newoption.setAttribute("value", agent.agentId);
                var agentName = agent.agtFirstName + " " + agent.agtLastName;
                newoption.appendChild(document.createTextNode(agentName));
                agentselect.appendChild(newoption);
            }//for
        }//if
    }//function

    req.open("get", "http://localhost:8080/JSPDay4JPAEX-1.0-SNAPSHOT/api/agent/loadselect");
    req.send(null);
}//loadAgents

function getagent(agentId)
{
    var req = new XMLHttpRequest();
    var agentdetails = document.getElementById("agentdetails");
    while (agentdetails.hasChildNodes())
    {
        agentdetails.removeChild(agentdetails.firstChild);
    }
    req.onreadystatechange = function() {
        if (req.readyState == 4 && req.status == 200)
        {
            var agent = JSON.parse(req.responseText);
            Object.keys(agent).length;
            var mykeys = Object.keys(agent);
            var myvalues = Object.values(agent);
            var myhtml = "";
            for (i=0; i<mykeys.length; i++)
            {
                myhtml += "<tr>";
                myhtml += "<td>" + mykeys[i] + "</td><td>" +myvalues[i] + "</td>" ;
                myhtml += "</tr>";
            }
            agentdetails.innerHTML = myhtml;
        }//if
    }//function
    req.open("get",
        "http://localhost:8080/JSPDay4JPAEX-1.0-SNAPSHOT/api/agent/getagent/" + agentId);
    req.send(null);
}//getagent


