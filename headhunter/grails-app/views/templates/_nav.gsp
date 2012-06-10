<div class="navbar navbar-fixed-top">
    <div class="navbar-inner">
        <div class="container">
            <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </a>
            <a class="brand" href="/">Sarah Cavendish Consulting</a>

            <div class="nav-collapse">
                <ul class="nav">
                    <li class="${selected == 'home' ? 'active' :''}"><g:link controller="site" action="home">Home</g:link></li>
                    <li class="${selected == 'candidates' ? 'active' :''}"><g:link controller="site" action="candidates">Candidates</g:link> </li>
                    <li class="${selected == 'clients' ? 'active' :''}"><g:link controller="site" action="clients">Clients</g:link> </li>
                    <li class="${selected == 'other' ? 'active' :''}"><g:link controller="site" action="about">Other Services</g:link> </li>
                    <li class="${selected == 'process' ? 'active' :''}"><g:link controller="site" action="process">Process</g:link> </li>
                    <li class="${selected == 'contactUs' ? 'active' :''}"><g:link controller="site" action="contactUs">Contact Us</g:link> </li>
                </ul>
            </div><!--/.nav-collapse -->
        </div>
    </div>
</div>