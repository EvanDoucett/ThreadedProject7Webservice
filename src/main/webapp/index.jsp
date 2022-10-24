<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<head>
    <title>TravelExpers-Index</title>
</head>
<jsp:include page="header.jsp" />
<jsp:include page="navigation.jsp" />
<br/>
<div>
    <img src="media/TravelExpertsLogoMain.jpg"class="img-fluid d-block mx-auto" alt="..." />
</div>
<br/>
<body class="bg-body" onload="loadPackages()">
<a class="weatherwidget-io" href="https://forecast7.com/en/19d90n155d58/hawaii/" data-label_1="HAWAII" data-label_2="WEATHER" data-theme="original" >HAWAII WEATHER</a>
<script>
    !function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src='https://weatherwidget.io/js/widget.min.js';fjs.parentNode.insertBefore(js,fjs);}}(document,'script','weatherwidget-io-js');
</script>
<!-- Gallery -->
<hr class="featurette-divider">
<!-- Hero Banner Section -->
<section class="hero-banner bg-primary  py-5">
    <div class="container">
        <div class="row row align-items-center">
            <div class="col-lg-5 offset-lg-1 order-lg-1">
                <img src="media/airportwalking.jpg" class="img-fluid" alt="at the airport">
            </div>
            <div class="col-lg-6">
                <h1 class="fw-bold mt-3">Make memories again!</h1>
                <p class="fs-5 text-white fw-bold lead text-secondary my-5">It's time to experience more of the places and people you love, in real life. Whether you'll be listening to the waves of the Atlantic, feeling that Toronto buzz, breathing in the Rocky Mountain air, or tasting mama's cooking again—book your flights to experience Canada this summer.</p>
                <a class="nav-link text-dark fs-5 text-primary badge bg-white" asp-controller="Register" asp-action="Index">Register Now!</a>
                <a class="nav-link text-dark fs-5 text-primary badge bg-white" asp-controller="Account" asp-action="Login">Login</a>
            </div>
        </div>
    </div>
</section>
<div class="text-center">
    <h1 class="display-4">Check out our amazing packages!</h1>
</div>
<hr class="featurette-divider">
<br/>
<div class="row">
    <div class="col-md-4">
        <div class="gallery">
            <a href="https://www.getyourguide.com">
                <img src="media/rome.jpg" alt="sorry but the casa is not availible" style="width:100%">
                <div class="caption">
                    <p>A hammerhead shark uses its wide head to trap stingrays by pinning them to the seafloor.
                        The shark's eye placement, on each end of its very wide head, allows it to scan more area more quickly than other sharks can.</p>
                </div>
            </a>
        </div>
    </div>
    <div class="col-md-4">
        <div class="gallery">
            <a href="https://www.gadventures.com/destinations/europe/italy/">
                <img src="media/R.jpg" alt="sorry, swimming is not availible" style="width:100%">
                <div class="caption">
                    <p>Sail along San Francisco's breathtaking waterfront, under the majestic Golden Gate Bridge, and around notorious Alcatraz Island.
                        Discover San Francisco's history via an award-winning audio commentary, available in 16 languages.</p>
                </div>
            </a>
        </div>
    </div>
    <div class="col-md-4">
        <div class="gallery">
            <a href="https://www.intrepidtravel.com/ca/australia/2-week?utm_source=bing&utm_medium=cpc&utm_campaign=Adapt%20-%20CA%20-%20Search%20-%20International%20-%20MOFU%20-%20Oceania%20-%20DSA&utm_term=%2Fca%2Faustralia%2F&utm_content=Australia">
                <img src="media/R (2).jpg" alt="sorry but austrailia is not availible" style="width:100%">
                <div class="caption">
                    <p>Tour the Inside of the Alcatraz prison cellhouse.
                        Step back in time and experience the legendary island that has been a civil war fort, a military prison and one of the most notorious federal penitentiaries in US history.</p>
                </div></a>
        </div>
    </div>
</div>
<br/>
<div class="row">
    <div class="col-md-4">
        <div class="gallery">
            <a href="https://en.wikipedia.org/wiki/United_Kingdom" >
                <img src="media/buck.jpg" alt="sorry but the shark is not availible" style="width:100%">
                <div class="caption">
                    <p>A hammerhead shark uses its wide head to trap stingrays by pinning them to the seafloor.
                        The shark's eye placement, on each end of its very wide head, allows it to scan more area more quickly than other sharks can.</p>
                </div>
            </a>
        </div>
    </div>
    <div class="col-md-4">
        <div class="gallery">
            <a href="https://635.gtbank.com/2018/07/destination-guide-croatia-or-france/">
                <img src="media/francep.jpg" alt="sorry, boating is not availible" style="width:100%">
                <div class="caption">
                    <p>Sail along San Francisco's breathtaking waterfront, under the majestic Golden Gate Bridge, and around notorious Alcatraz Island.
                        Discover San Francisco's history via an award-winning audio commentary, available in 16 languages.</p>
                </div>
            </a>
        </div>
    </div>
    <div class="col-md-4">
        <div class="gallery">
            <a href="https://www.alcatrazislandtickets.com/Alcatraz-Tours/?msclkid=b903d467a6651ed334b8b6ffbe584a0d">
                <img src="media/at.png" alt="sorry but alcatraz is not availible" style="width:100%">
                <div class="caption">
                    <p>Tour the Inside of the Alcatraz prison cellhouse.
                        Step back in time and experience the legendary island that has been a civil war fort, a military prison and one of the most notorious federal penitentiaries in US history.</p>
                </div>
            </a>
        </div>
    </div>
</div>
<hr class="featurette-divider">

<p class="d centered3">Media Blitz Here!</p>

<div class="row featurette2 buffering">
    <div class="col-md-7">
        <h2 class="featurette2-heading">It'll blow your mind.<span class="text-muted">It'll blow your mind.</span></h2>
        <p class="lead">When you book on the app you can save up to 20% on select packages!! With these app deals you'll save even more on trips, and that means you can take more trips, and manage it all on the go!</p>
    </div>
    <div class="col-md-5">
        <img class="featurette-image img-fluid mx-auto borders" data-src="holder.js/500x500/auto" alt="media/World.jpg" style="width: 500px; height: 300px;" src="media/worldtravel.jpg" data-holder-rendered="true">
    </div>
</div>

<hr class="featurette-divider">

<div class="row featurette2 buffering">
    <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Oh yeah, it's that good! <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">Because when you purchase a package, you can get flight and a hotel for under CA$699.00 per person.</p>
    </div>
    <div class="col-md-5 order-md-1">
        <img class="featurette-image img-fluid mx-auto borders" data-src="holder.js/500x500/auto" alt="media/SanFranPrison" src="media/savingsplane.jpg" data-holder-rendered="true" style="width: 500px; height: 300px;">
    </div>
</div>

<hr class="featurette-divider">

<div class="row featurette buffering">
    <div class="col-md-7">
        <h2 class="featurette-heading">Follow your Sunshine! <span class="text-muted">Let your Florida adventure begin.</span></h2>
        <p class="lead">What can be discovered beyond your home? Maybe 825 miles of beaches? How about 320 freshwater springs or hidden caverns located in Florida.</p>
    </div>
    <div class="col-md-5">
        <img class="featurette-image img-fluid mx-auto borders" data-src="holder.js/500x500/auto" alt="media/R(2).jpg" src="media/florida.jpg" data-holder-rendered="true" style="width: 500px; height: 300px;">
    </div>
</div>


<br/>
<jsp:include page="footer.jsp" />
