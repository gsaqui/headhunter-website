<!doctype html>
<!--[if lt IE 7]> <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang="en"><!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

    <title>Clients</title>
    <meta name="description" content="">
    <meta name="author" content="">

    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" text="type/css" href="../css/style.css">


    <script src="../js/libs/modernizr-2.5.2-respond-1.1.0.min.js"></script>
</head>

<body>
<g:render template="/templates/nav" model="[selected:'clients']"/>

<div class="container">

    <!-- Main hero unit for a primary marketing message or call to action -->
    <div class="hero-unit city"></div>
    <g:if test="${showAlert}">
        <div class="span12 alert alert-success">
            <h2>Thank you for contacting us.  We will be in touch soon.</h2>
        </div>
    </g:if>

    <h1 class="message candidate">Finding the best people to fill your roles.</h1>

    <div class="extra-info row">
        <div class="span12">
            <h2>Clients</h2>

            <p>Our recruitment headhunters operate a strict service policy ensuring that you are treated as we would wish to be treated ourselves.</p>

            <p>Once instructed on a job requirement, we will create a detailed profile of your company.  A full understanding of your business will allow us to promote your company in the very best light.</p>
        </div>

        <div class="span6">
            <h2>Costs</h2>

            <p>Through the use of technology and using a low touch approach we are able to keep our retainers at a lower rate than our competitors.  The rate is normally between 10-15 percent depending on the position.</p>
        </div>

        <h2>Client Registration</h2>

        <p>If you are interested in engaging our headhunting, resourcing or advisory services please complete the form below and one of our specialists will make contact with you to discuss your requirements in more detail.</p>

        <div class="span12">

            <g:form action="clients" controller="site" enctype="multipart/form-data"
                    class="contact-info form-horizontal">

                <div class="control-group">
                    <label class="control-label" for="name">Contact Name</label>

                    <div class="controls">
                        <input type="text" id="name" name="name" placeholder="Your name">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="job-title">Job Title</label>

                    <div class="controls">
                        <input type="text" name="job-title" placeholder="Job Title" id="job-title">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="company-name">Company Name</label>

                    <div class="controls">
                        <input type="text" placeholder="Company Name" name="company-name" id="company-name">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="address">Company Address</label>

                    <div class="controls">
                        <textarea id="address" name="address"></textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="post-code">Post Code</label>

                    <div class="controls">
                        <input type="text" placeholder="Post Code" id="post-code" name="post-code">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="phone-number">Phone number</label>

                    <div class="controls">
                        <input type="tel" placeholder="Phone number" id="phone-number" name="phone-number">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="email">Email</label>

                    <div class="controls">
                        <input type="email" placeholder="Email" name="email" id="email">
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="hear-about-us">Where did you hear of us?</label>

                    <div class="controls">
                        <textarea id="hear-about-us" name="hear-about-us"></textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="requirements">Please list your current requirements:</label>

                    <div class="controls">
                        <textarea id="requirements" name="requirements"></textarea>
                    </div>
                </div>

                <div class="control-group">
                    <label class="control-label" for="description">Please attach a Job Description if available:</label>

                    <div class="controls">
                        <input type="file" name="upload" id="upload" size="10"/>
                    </div>
                </div>

                <button type="submit" class="submit btn">Submit</button>
            </g:form>

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
<script src="..js/libs/bootstrap/collapse.js"></script>

<script src="../js/script.js"></script>
</body>
</html>
