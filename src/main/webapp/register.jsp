<head>
    <title>TravelExpers-Register</title>
</head>
<jsp:include page="header.jsp" />
<body>
this is the register page
<div class="row justify-content-center">
    <div class="col-md-4">
        <form asp-action="Index" method="post">
            <div asp-validation-summary="ModelOnly" class="text-danger"></div>
            <div class="form-group">
                <label asp-for="CustFirstName" class="control-label"></label>
                <input asp-for="CustFirstName" class="form-control" />


            </div>
            <div class="form-group">
                <label asp-for="CustLastName" class="control-label"></label>
                <input asp-for="CustLastName" class="form-control" />

            </div>
            <div class="form-group">
                <label asp-for="CustAddress" class="control-label"></label>
                <input asp-for="CustAddress" class="form-control" />

            </div>
            <div class="form-group">
                <label asp-for="CustCity" class="control-label"></label>
                <input asp-for="CustCity" class="form-control" />

            </div>
            <div class="form-group">
                <label asp-for="CustProv" class="control-label"></label>
                <input asp-for="CustProv" class="form-control" />

            </div>
            <div class="form-group">
                <label asp-for="CustPostal" class="control-label"></label>
                <input asp-for="CustPostal" class="form-control" />

            </div>
            <div class="form-group">
                <label asp-for="CustCountry" class="control-label"></label>
                <input asp-for="CustCountry" class="form-control" />

            </div>
            <div class="form-group">
                <label asp-for="CustHomePhone" class="control-label"></label>
                <input asp-for="CustHomePhone" class="form-control" />

            </div>
            <div class="form-group">
                <label asp-for="CustBusPhone" class="control-label"></label>
                <input asp-for="CustBusPhone" class="form-control" />

            </div>
            <div class="form-group">
                <label asp-for="CustEmail" class="control-label"></label>
                <input asp-for="CustEmail" class="form-control" />

            </div>
            <div class="form-group">
                <label asp-for="AgentId" class="control-label"></label>
                <input asp-for="AgentId" class="form-control" />
            </div>
            <div class="form-group">
                <label asp-for="Username" class="control-label"></label>
                <input asp-for="Username" class="form-control" />

            </div>
            <div class="form-group">
                <label asp-for="Password" class="control-label"></label>
                <input asp-for="Password" class="form-control" required/>

            </div>
            <div class="form-group">
                <label asp-for="ConfirmPassword" class="control-label"></label>
                <input asp-for="ConfirmPassword" class="form-control" required/>

            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Register</button>
            </div>
        </form>
    </div>
</div>
</body>
<jsp:include page="footer.jsp" />