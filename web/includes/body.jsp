<%-- 
    Document   : body
    Created on : Oct 15, 2015, 12:53:02 AM
    Author     : pauleasterbrooks
--%>

<body data-spy="scroll" data-target=".navbar-fixed-top">
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!--<a class="navbar-brand" href="index.html"><img src="images/momentum_logo.png" alt=""></a> -->
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li class="active"><a class="page-scroll" href="#home">Home</a></li>
            <li><a class="page-scroll" href="#contact">Take the Pledge</a></li>
            <li><a class="page-scroll" href="#about">About</a></li>
            <li><a class="page-scroll" href="#story">Acts of Kindness</a></li>
            <li><a class="page-scroll" href="#newsletter">Contact</a></li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-->
    </nav>

    <!-- homepage video section start -->
    <section id="home">

        <video class="text-center" autoplay="" loop="" poster='videos/kindness_cover.png' muted >
          <!-- WebM/VP8 for Firefox4, Opera, and Chrome -->
          <source type="video/webm" src="videos/MOMENTUM_720p.webm">
          <!-- MP4 for Safari, IE9, iPhone, iPad, Android, and Windows Phone 7 -->
          <source type="video/mp4" src="videos/MOMENTUM_720p.mp4">
          Your browser does not support the video tag.
      </video>

      
    </section>
    <!-- homepage video section end -->
    
        <!-- contact-section start -->
    <section id="contact" class="contact-section">
      <div class="container">
        <div class="section-intro text-center">
          <h2>Sign the Pledge</h2>
          <hr class="colored">
          <p>By signing this pledge you promise to engage in<br> at least one random act of kindness</p>
        </div>

        <form class="text-center" name="pledge-form" id="contactForm" action="pledge" method="POST">
            <div class="row">
                <div class="col-sm-6">
                    <div class="form-group">
                      <label class="sr-only" for="name">Name</label>
                      <input type="text" name="name" class="form-control" id="name" placeholder="Name" required>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                      <label class="sr-only" for="email">Email</label>
                      <input type="email" name="email" class="form-control" id="email" placeholder="Email" required>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="form-group">
                      <label class="sr-only" for="city">City</label>
                      <input type="text" name="city" class="form-control" id="city" placeholder="City" required>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                      <label class="sr-only" for="state">State</label>
                      <input type="text" name="state" class="form-control" id="state" placeholder="State">
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="form-group">
                      <label class="sr-only" for="country">Country</label>
                      <input type="text" name="country" class="form-control" id="country" placeholder="Country" required>
                    </div>
                </div>
            </div>

            <div class="form-group">
              <label class="sr-only" for="message">Message</label>
              <textarea name="message" class="form-control" id="message" placeholder="Leave me a message"></textarea>
            </div>

            <button type="submit" name="submit" class="btn btn-primary btn-lg">Take the pledge</button>
        </form>

      </div>
    </section>
    <!-- contact-section end -->
    
    
    <!-- fact-section start-->
    <section class="fact-section"  data-stellar-background-ratio="0.5">
      <div class="fact-overlay">
        <div class="container">
            <div class="row text-center">
                <div class="counter-wrapper">
                  <span class="icon"><i class="flaticon-businessman20"></i></span>
                  <span class="timer">581</span>
                  <% //<form class="timer" action="count" method="GET">${pledge_count}</form> %>
                  <span class="description">People have taken the pledge</span>
                </div> <!-- /.col-sm-3 -->
            </div>
        </div><!-- /.container -->
      </div>
    </section>
    <!-- fact-section end-->


    <!-- about-section start -->
    <section id="about" class="about-section">
      <div class="container">
          <div class="section-intro text-center">
            <h2>About the pledge</h2>
            <hr class="colored">
            <p>One random act of kindness has the ability to create a ripple effect throughout<br> \
                an entire community and eventually spread to even the most isolated people.</p>
          </div>

          <div class="row">
            <div class="col-md-6">
              <div class="profile-overview">
                <h3>Make Kindness Contagious</h3>

                <p>Social isolation may make individuals more prone to 
                    radicalization into an extremist organization or more 
                    likely to pursue extreme action individually.</p>
                <p>Identity seekers who are often isolated and feel the need to 
                    belong within a group have been identified as one of the 
                    largest factors that lead people to joining extremist 
                    groups, where they hope they can find a sense of belonging 
                    and build friendships.</p>
                <div class="social-links">
                  <ul class="list-inline">
                    <li><a href="https://www.facebook.com/kindnessismomentum/?ref=hl"><i class="fa fa-facebook"></i></a></li>
                    <li><a href="https://twitter.com/MomentumMKC"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="https://www.youtube.com/channel/UCONwPivvUkzcdHM5b7XTt-w"><i class="fa fa-youtube"></i></a></li>
                    <li><a href="https://instagram.com/kindnessismomentum/"><i class="fa fa-instagram"></i></a></li>

                  </ul>
                </div>

              </div><!-- /.profile-overview -->
            </div><!-- /.col-md-6 -->
            <div class="col-md-6 no-padding">
                    <div class="social-counter">
                      <div class="twitter-api clearfix">
                        <div class="icon">
                          <a href="https://twitter.com/MomentumMKC"><i class="fa fa-twitter"></i></a>
                        </div>
                        <div class="counter">
                          <span class="timer">84244</span>
                          <span class="title">Follower</span>
                        </div>
                      </div><!-- /.twitter-api -->
                      <div class="facebook-api clearfix">
                        <div class="icon">
                          <a href="https://www.facebook.com/kindnessismomentum/?ref=hl"><i class="fa fa-facebook"></i></a>
                        </div>
                        <div class="counter">
                          <span class="timer">4964</span>
                          <span class="title">Friends</span>
                        </div>
                      </div><!-- /.facebook-api -->
                      <div class="google-api clearfix">
                        <div class="icon">
                          <a href="#"><i class="fa fa-google-plus"></i></a>
                        </div>
                        <div class="counter">
                          <span class="timer">54654</span>
                          <span class="title">Circle</span>
                        </div>
                      </div><!-- /.google-api -->
                    </div><!-- /.right-section -->
                </div><!-- /.col-md-6 -->
          </div>
      </div>
    </section>
    <!-- about-section end -->

    <!-- story-section start-->
    <section id="story" class="story-section">
      <div class="container">
        <div class="section-intro text-center">
          <h2>Acts of Kindness</h2>
          <hr class="colored">
          <p>Here are some ideas to get you started.</p>
        </div>

          <div class="row">
              <div class="col-md-12">
                  <ul class="timeline">
                      <li>
                          <div class="posted-date">
                          </div><!-- /posted-date -->

                          <div class="timeline-panel">
                              <div class="timeline-content">
                                  <div class="timeline-heading">
                                      <h3><a href="#">Hold open the door</a></h3>
                                  </div><!-- /timeline-heading -->

                                  <div class="timeline-body">
                                      <p>The next time you are walking into a building 
                                      or leaving take an extra second to hold 
                                      open the door for the person behind you</p>
                                  </div><!-- /timeline-body -->
                              </div> <!-- /timeline-content -->
                          </div><!-- /timeline-panel -->
                      </li>

                      <li class="timeline-inverted">
                          <div class="posted-date">
                          </div><!-- /posted-date -->

                          <div class="timeline-panel">
                              <div class="timeline-content">
                                  <div class="timeline-heading">
                                      <h3><a href="#">Chat with a homeless person</a></h3>
                                  </div><!-- /timeline-heading -->

                                  <div class="timeline-body">
                                      <p>The next time you pass a homeless person, 
                                          don't just donate spare change, but 
                                          take an extra minute out of your day 
                                          to listen to their story</p>
                                  </div><!-- /timeline-body -->
                              </div> <!-- /timeline-content -->
                          </div> <!-- /timeline-panel -->
                      </li>

                      <li>
                          <div class="posted-date">
                          </div><!-- /posted-date -->

                          <div class="timeline-panel">
                              <div class="timeline-content">
                                  <div class="timeline-heading">
                                      <h3><a href="#">Pay for the person behind you</a></h3>
                                  </div><!-- /timeline-heading -->

                                  <div class="timeline-body">
                                      <p>Whether you are driving through a toll 
                                          booth or at a coffee shop, pre-pay 
                                          someone else's tab. This as always a 
                                          pleasant surprise for the person 
                                          receiving a gift from a total stranger</p>
                                  </div><!-- /timeline-body -->
                              </div> <!-- /timeline-content -->
                          </div><!-- /timeline-panel -->
                      </li>

                      <li class="timeline-inverted">
                          <div class="posted-date">
                          </div><!-- /posted-date -->

                          <div class="timeline-panel">
                              <div class="timeline-content">
                                  <div class="timeline-heading">
                                      <h3><a href="#">Listen</a></h3>
                                  </div><!-- /timeline-heading -->

                                  <div class="timeline-body">
                                      <p>If you see someone upset regardless of you know 
                                          them or not simply offer to listen. 
                                          Sometimes its the best thing you can 
                                          do for someone</p>
                                  </div><!-- /timeline-body -->
                              </div> <!-- /timeline-content -->
                          </div> <!-- /timeline-panel -->
                      </li>

                      <li>
                          <div class="posted-date">
                          </div><!-- /posted-date -->

                          <div class="timeline-panel">
                              <div class="timeline-content">
                                  <div class="timeline-heading">
                                      <h3><a href="#">Compliment a stranger</a></h3>
                                  </div><!-- /timeline-heading -->

                                  <div class="timeline-body">
                                      <p>Notice something unique, pretty, or 
                                          interesting about a stranger next to 
                                          you and don't just make a mental note 
                                          of it in your head, tell that person!</p>
                                  </div><!-- /timeline-body -->
                              </div> <!-- /timeline-content -->
                          </div><!-- /timeline-panel -->
                      </li>
                  </ul>
              </div>
          </div><!-- /row -->

      </div>
    </section>
    <!-- story-section end-->
    
    <!-- newsletter-section start -->
    <section class="newsletter-section" id="newsletter" data-stellar-background-ratio="0.5">
      <div class="tt-overlay">
        <div class="container">
          <div class="section-intro text-center">
            <h2>Get update via newsletter</h2>
            <p>Sign up to be the first to hear about us</p>
          </div>

          <form class="subscribe-form mailchimp form-inline" action="email" method="post">
              <!-- to showing error message -->
              <label for="subscribeEmail" class="error"></label>
                          
              <div class="form-group">
                  <label class="sr-only" for="subscribeEmail">Subscribe</label>
                  <input type="email" class="form-control" id="subscribeEmail" name="EMAIL" placeholder="Enter you email here">
              </div><!-- /.form-group -->
              <button type="submit" class="btn btn-primary btn-lg">Subscribe</button>

              <!-- to showing success messages -->
              <p class="subscription-success"></p>
          </form>

        </div>
      </div>
    </section>
    <!-- newsletter-section end -->


    <!-- location-section start -->
    <section class="location-section">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 no-padding">
                  <div id="myMap"></div>
                </div><!-- /.col-md-8 -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </section>
    <!-- location-section end -->


    <!-- footer-section start -->
    <footer class="footer-section text-center">
      <div class="container">
        <h3>I'm social, You can follow me</h3>
        <div class="social-links">
          <ul class="list-inline">
            <li><a href="https://www.facebook.com/kindnessismomentum/?ref=hl"><i class="fa fa-facebook"></i></a></li>
            <li><a href="https://twitter.com/MomentumMKC"><i class="fa fa-twitter"></i></a></li>
            <li><a href="https://www.youtube.com/channel/UCONwPivvUkzcdHM5b7XTt-w"><i class="fa fa-youtube"></i></a></li>
          </ul>
        </div>

        <span class="copyright">Momentum - All rights reserved &copy;2015</span>
      </div>
    </footer>
    <!-- footer-section end -->


    <!-- Preloader -->
    <div id="preloader">
        <div id="status">
            <div class="status-mes"></div>
        </div>
    </div>


    <!-- jQuery -->
    <script src="js/jquery-2.1.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/smoothscroll.min.js"></script>
    <script src="js/jquery.inview.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.countTo.min.js"></script>
    <script src="js/coundown-timer.min.js"></script>
    <script src="js/jquery.shuffle.min.js"></script>
    <script src="js/bootstrap-tabcollapse.min.js"></script>
    <script src="magnific/jquery.magnific-popup.min.js"></script>
    <script src="js/ajaxchimp.min.js"></script>
    <script src="js/twitterFetcher.min.js"></script>
    <script src="owl.carousel/owl.carousel.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="js/scripts.js"></script>
  </body>
