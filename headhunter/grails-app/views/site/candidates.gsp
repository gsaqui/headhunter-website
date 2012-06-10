<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"><!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>Candidate</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" text="type/css" href="../css/bootstrap.css">
    <link rel="stylesheet" text="type/css" href="../css/style.css">


    <script src="../js/libs/modernizr-2.5.2-respond-1.1.0.min.js"></script>
</head>

<body>
<g:render template="/templates/nav" model="[selected:'candidates']"/>


<div class="container">

    <!-- Main hero unit for a primary marketing message or call to action -->
    <div class="hero-unit city"></div>
    <g:if test="${showAlert}">
        <div class="span12 alert alert-success">
            <h2>Thank you for sending us your cv.  We will be in touch soon. </h2>
        </div>
    </g:if>

    <h1 class="message candidate">We strive to place you in a company that will fit all your needs.</h1>

    <div class="extra-info row">
        <div class="span12">
            <h2>Candidates</h2>

            <p>At Sarah Cavendish we have a reputation for working with the brightest minds and highest performing individuals on the market.  Our candidates typify the meaning of Human Capital.  As experienced consultants, with an established network of partners we can provide a high level of market knowledge and introduce you to companies that other agencies simply cannot.</p>

            <p>Please follow the link to our <g:link controller="site"
                                                     action="process">process</g:link> to understand more about how you can work with Sarah Cavendish.</p>

            <h2>Send us your CV</h2>
            <div class="span12">

                <g:form action="candidates" controller="site" enctype="multipart/form-data" class="contact-info form-horizontal">
                    <div class="control-group">
                        <label class="control-label" for="name">Name</label>

                        <div class="controls">
                            <input type="text" id="name" placeholder="Your name" name="name">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="email">Email</label>

                        <div class="controls">
                            <input type="email" placeholder="Email" id="email" name="email">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="phone-number">Phone number</label>

                        <div class="controls">
                            <input type="tel" placeholder="Phone number" id="phone-number" name="phone-number">
                        </div>
                    </div>

                    <div class="control-group">
                        <label class="control-label" for="cv">CV</label>

                        <div class="controls">
                            <input type="file" name="upload" id="cv" size="10">
                        </div>
                    </div>

                    <button type="submit" class="submit btn">Submit</button>
                </g:form>

            </div>

        </div>

    </div>

    <hr>

    <footer>
        <p>&copy; Sarah Cavendish 2012</p>
    </footer>

</div> <!-- /container -->
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="js/libs/jquery-1.7.1.min.js"><\/script>')</script>

<script src="../js/libs/bootstrap/transition.js"></script>
<script src="../js/libs/bootstrap/collapse.js"></script>

<script src="../js/script.js"></script>
</body>
</html>
