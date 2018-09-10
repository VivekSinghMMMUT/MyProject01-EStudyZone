<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <style>
            .outer
            {
                min-height: auto;
                background-color: #23527c;

            }
            .header
            {
                min-height: 100px;
                background-color:#00cccc;

            }
            .slider
            {
                background-color: gray;
                min-height: 100%;            
            }
            .logo
            {

                min-height: 100px;
                background-color:#666666;

            }

            [class*="entypo-"]:before {
                font-family: 'entypo', sans-serif;
            }

            @font-face {
                font-family: 'Advent Pro';
                font-style: normal;
                font-weight: 400;
                src: local('Advent Pro Regular'), local('AdventPro-Regular'), url(https://fonts.gstatic.com/s/adventpro/v5/Xfe7ShDKddJBJE_WqrWHYCEAvth_LlrfE80CYdSH47w.woff2) format('woff2');
            }

            @font-face {
                font-family: 'entypo';
                font-style: normal;
                font-weight: normal;
                src: url('http://weloveiconfonts.com/api/fonts/entypo/entypo.eot');
                src: url('http://weloveiconfonts.com/api/fonts/entypo/entypo.eot?#iefix') format('eot'), 
                    url('http://weloveiconfonts.com/api/fonts/entypo/entypo.woff') format('woff'), 
                    url('http://weloveiconfonts.com/api/fonts/entypo/entypo.ttf') format('truetype'), 
                    url('http://weloveiconfonts.com/api/fonts/entypo/entypo.svg#entypo') format('svg');
            }
            .entypo-note:before{content:"\266a"}.entypo-note-beamed:before{content:"\266b"}.entypo-music:before{content:"\1f3b5"}.entypo-search:before{content:"\1f50d"}.entypo-flashlight:before{content:"\1f526"}.entypo-mail:before{content:"\2709"}.entypo-heart:before{content:"\2665"}.entypo-heart-empty:before{content:"\2661"}.entypo-star:before{content:"\2605"}.entypo-star-empty:before{content:"\2606"}.entypo-user:before{content:"\1f464"}.entypo-users:before{content:"\1f465"}.entypo-user-add:before{content:"\e700"}.entypo-video:before{content:"\1f3ac"}.entypo-picture:before{content:"\1f304"}.entypo-camera:before{content:"\1f4f7"}.entypo-layout:before{content:"\268f"}.entypo-menu:before{content:"\2630"}.entypo-check:before{content:"\2713"}.entypo-cancel:before{content:"\2715"}.entypo-cancel-circled:before{content:"\2716"}.entypo-cancel-squared:before{content:"\274e"}.entypo-plus:before{content:"\2b"}.entypo-plus-circled:before{content:"\2795"}.entypo-plus-squared:before{content:"\229e"}.entypo-minus:before{content:"\2d"}.entypo-minus-circled:before{content:"\2796"}.entypo-minus-squared:before{content:"\229f"}.entypo-help:before{content:"\2753"}.entypo-help-circled:before{content:"\e704"}.entypo-info:before{content:"\2139"}.entypo-info-circled:before{content:"\e705"}.entypo-back:before{content:"\1f519"}.entypo-home:before{content:"\2302"}.entypo-link:before{content:"\1f517"}.entypo-attach:before{content:"\1f4ce"}.entypo-lock:before{content:"\1f512"}.entypo-lock-open:before{content:"\1f513"}.entypo-eye:before{content:"\e70a"}.entypo-tag:before{content:"\e70c"}.entypo-bookmark:before{content:"\1f516"}.entypo-bookmarks:before{content:"\1f4d1"}.entypo-flag:before{content:"\2691"}.entypo-thumbs-up:before{content:"\1f44d"}.entypo-thumbs-down:before{content:"\1f44e"}.entypo-download:before{content:"\1f4e5"}.entypo-upload:before{content:"\1f4e4"}.entypo-upload-cloud:before{content:"\e711"}.entypo-reply:before{content:"\e712"}.entypo-reply-all:before{content:"\e713"}.entypo-forward:before{content:"\27a6"}.entypo-quote:before{content:"\275e"}.entypo-code:before{content:"\e714"}.entypo-export:before{content:"\e715"}.entypo-pencil:before{content:"\270e"}.entypo-feather:before{content:"\2712"}.entypo-print:before{content:"\e716"}.entypo-retweet:before{content:"\e717"}.entypo-keyboard:before{content:"\2328"}.entypo-comment:before{content:"\e718"}.entypo-chat:before{content:"\e720"}.entypo-bell:before{content:"\1f514"}.entypo-attention:before{content:"\26a0"}.entypo-alert:before{content:"\1f4a5'"}.entypo-vcard:before{content:"\e722"}.entypo-address:before{content:"\e723"}.entypo-location:before{content:"\e724"}.entypo-map:before{content:"\e727"}.entypo-direction:before{content:"\27a2"}.entypo-compass:before{content:"\e728"}.entypo-cup:before{content:"\2615"}.entypo-trash:before{content:"\e729"}.entypo-doc:before{content:"\e730"}.entypo-docs:before{content:"\e736"}.entypo-doc-landscape:before{content:"\e737"}.entypo-doc-text:before{content:"\1f4c4"}.entypo-doc-text-inv:before{content:"\e731"}.entypo-newspaper:before{content:"\1f4f0"}.entypo-book-open:before{content:"\1f4d6"}.entypo-book:before{content:"\1f4d5"}.entypo-folder:before{content:"\1f4c1"}.entypo-archive:before{content:"\e738"}.entypo-box:before{content:"\1f4e6"}.entypo-rss:before{content:"\e73a"}.entypo-phone:before{content:"\1f4dE"}.entypo-cog:before{content:"\2699"}.entypo-tools:before{content:"\2692"}.entypo-share:before{content:"\e73c"}.entypo-shareable:before{content:"\e73e"}.entypo-basket:before{content:"\e73d"}.entypo-bag:before{content:"\1f45c'"}.entypo-calendar:before{content:"\1f4c5"}.entypo-login:before{content:"\e740"}.entypo-logout:before{content:"\e741"}.entypo-mic:before{content:"\1f3a4"}.entypo-mute:before{content:"\1f507"}.entypo-sound:before{content:"\1f50a"}.entypo-volume:before{content:"\e742"}.entypo-clock:before{content:"\1f554"}.entypo-hourglass:before{content:"\23f3"}.entypo-lamp:before{content:"\1f4a1"}.entypo-light-down:before{content:"\1f505"}.entypo-light-up:before{content:"\1f506"}.entypo-adjust:before{content:"\25d1"}.entypo-block:before{content:"\1f6ab"}.entypo-resize-full:before{content:"\e744"}.entypo-resize-small:before{content:"\e746"}.entypo-popup:before{content:"\e74c"}.entypo-publish:before{content:"\e74d"}.entypo-window:before{content:"\e74e"}.entypo-arrow-combo:before{content:"\e74f"}.entypo-down-circled:before{content:"\e758"}.entypo-left-circled:before{content:"\e759"}.entypo-right-circled:before{content:"\e75a"}.entypo-up-circled:before{content:"\e75b"}.entypo-down-open:before{content:"\e75c"}.entypo-left-open:before{content:"\e75d"}.entypo-right-open:before{content:"\e75e"}.entypo-up-open:before{content:"\e75f"}.entypo-down-open-mini:before{content:"\e760"}.entypo-left-open-mini:before{content:"\e761"}.entypo-right-open-mini:before{content:"\e762"}.entypo-up-open-mini:before{content:"\e763"}.entypo-down-open-big:before{content:"\e764"}.entypo-left-open-big:before{content:"\e765"}.entypo-right-open-big:before{content:"\e766"}.entypo-up-open-big:before{content:"\e767"}.entypo-down:before{content:"\2b07"}.entypo-left:before{content:"\2b05"}.entypo-right:before{content:"\27a1"}.entypo-up:before{content:"\2b06"}.entypo-down-dir:before{content:"\25be"}.entypo-left-dir:before{content:"\25c2"}.entypo-right-dir:before{content:"\25b8"}.entypo-up-dir:before{content:"\25b4"}.entypo-down-bold:before{content:"\e4b0"}.entypo-left-bold:before{content:"\e4ad"}.entypo-right-bold:before{content:"\e4ae"}.entypo-up-bold:before{content:"\e4af"}.entypo-down-thin:before{content:"\2193"}.entypo-left-thin:before{content:"\2190"}.entypo-right-thin:before{content:"\2192"}.entypo-up-thin:before{content:"\2191"}.entypo-ccw:before{content:"\27f2"}.entypo-cw:before{content:"\27f3"}.entypo-arrows-ccw:before{content:"\1f504"}.entypo-level-down:before{content:"\21b3"}.entypo-level-up:before{content:"\21b0"}.entypo-shuffle:before{content:"\1f500"}.entypo-loop:before{content:"\1f501"}.entypo-switch:before{content:"\21c6"}.entypo-play:before{content:"\25b6"}.entypo-stop:before{content:"\25a0"}.entypo-pause:before{content:"\2389"}.entypo-record:before{content:"\26ab"}.entypo-to-end:before{content:"\23ed"}.entypo-to-start:before{content:"\23ee"}.entypo-fast-forward:before{content:"\23e9"}.entypo-fast-backward:before{content:"\23ea"}.entypo-progress-0:before{content:"\e768"}.entypo-progress-1:before{content:"\e769"}.entypo-progress-2:before{content:"\e76a"}.entypo-progress-3:before{content:"\e76b"}.entypo-target:before{content:"\1f3af"}.entypo-palette:before{content:"\1f3a8"}.entypo-list:before{content:"\e005"}.entypo-list-add:before{content:"\e003"}.entypo-signal:before{content:"\1f4f6"}.entypo-trophy:before{content:"\1f3c6"}.entypo-battery:before{content:"\1f50b"}.entypo-back-in-time:before{content:"\e771"}.entypo-monitor:before{content:"\1f4bb"}.entypo-mobile:before{content:"\1f4f1"}.entypo-network:before{content:"\e776"}.entypo-cd:before{content:"\1f4bf"}.entypo-inbox:before{content:"\e777"}.entypo-install:before{content:"\e778"}.entypo-globe:before{content:"\1f30e"}.entypo-cloud:before{content:"\2601"}.entypo-cloud-thunder:before{content:"\26c8"}.entypo-flash:before{content:"\26a1"}.entypo-moon:before{content:"\263d"}.entypo-flight:before{content:"\2708"}.entypo-paper-plane:before{content:"\e79b"}.entypo-leaf:before{content:"\1f342"}.entypo-lifebuoy:before{content:"\e788"}.entypo-mouse:before{content:"\e789"}.entypo-briefcase:before{content:"\1f4bc"}.entypo-suitcase:before{content:"\e78e"}.entypo-dot:before{content:"\e78b"}.entypo-dot-2:before{content:"\e78c"}.entypo-dot-3:before{content:"\e78d"}.entypo-brush:before{content:"\e79a"}.entypo-magnet:before{content:"\e7a1"}.entypo-infinity:before{content:"\221e"}.entypo-erase:before{content:"\232b"}.entypo-chart-pie:before{content:"\e751"}.entypo-chart-line:before{content:"\1f4c8"}.entypo-chart-bar:before{content:"\1f4ca"}.entypo-chart-area:before{content:"\1f53e"}.entypo-tape:before{content:"\2707"}.entypo-graduation-cap:before{content:"\1f393"}.entypo-language:before{content:"\e752"}.entypo-ticket:before{content:"\1f3ab"}.entypo-water:before{content:"\1f4a6"}.entypo-droplet:before{content:"\1f4a7"}.entypo-air:before{content:"\e753"}.entypo-credit-card:before{content:"\1f4b3"}.entypo-floppy:before{content:"\1f4be"}.entypo-clipboard:before{content:"\1f4cb"}.entypo-megaphone:before{content:"\1f4e3"}.entypo-database:before{content:"\e754"}.entypo-drive:before{content:"\e755"}.entypo-bucket:before{content:"\e756"}.entypo-thermometer:before{content:"\e757"}.entypo-key:before{content:"\1f511"}.entypo-flow-cascade:before{content:"\e790"}.entypo-flow-branch:before{content:"\e791"}.entypo-flow-tree:before{content:"\e792"}.entypo-flow-line:before{content:"\e793"}.entypo-flow-parallel:before{content:"\e794"}.entypo-rocket:before{content:"\1f680"}.entypo-gauge:before{content:"\e7a2"}.entypo-traffic-cone:before{content:"\e7a3"}.entypo-cc:before{content:"\e7a5"}.entypo-cc-by:before{content:"\e7a6"}.entypo-cc-nc:before{content:"\e7a7"}.entypo-cc-nc-eu:before{content:"\e7a8"}.entypo-cc-nc-jp:before{content:"\e7a9"}.entypo-cc-sa:before{content:"\e7aa"}.entypo-cc-nd:before{content:"\e7ab"}.entypo-cc-pd:before{content:"\e7ac"}.entypo-cc-zero:before{content:"\e7ad"}.entypo-cc-share:before{content:"\e7ae"}.entypo-cc-remix:before{content:"\e7af"}.entypo-github:before{content:"\f300"}.entypo-github-circled:before{content:"\f301"}.entypo-flickr:before{content:"\f303"}.entypo-flickr-circled:before{content:"\f304"}.entypo-vimeo:before{content:"\f306"}.entypo-vimeo-circled:before{content:"\f307"}.entypo-twitter:before{content:"\f309"}.entypo-twitter-circled:before{content:"\f30a"}.entypo-facebook:before{content:"\f30c"}.entypo-facebook-circled:before{content:"\f30d"}.entypo-facebook-squared:before{content:"\f30e"}.entypo-gplus:before{content:"\f30f"}.entypo-gplus-circled:before{content:"\f310"}.entypo-pinterest:before{content:"\f312"}.entypo-pinterest-circled:before{content:"\f313"}.entypo-tumblr:before{content:"\f315"}.entypo-tumblr-circled:before{content:"\f316"}.entypo-linkedin:before{content:"\f318"}.entypo-linkedin-circled:before{content:"\f319"}.entypo-dribbble:before{content:"\f31b"}.entypo-dribbble-circled:before{content:"\f31c"}.entypo-stumbleupon:before{content:"\f31e"}.entypo-stumbleupon-circled:before{content:"\f31f"}.entypo-lastfm:before{content:"\f321"}.entypo-lastfm-circled:before{content:"\f322"}.entypo-rdio:before{content:"\f324"}.entypo-rdio-circled:before{content:"\f325"}.entypo-spotify:before{content:"\f327"}.entypo-spotify-circled:before{content:"\f328"}.entypo-qq:before{content:"\f32a"}.entypo-instagrem:before{content:"\f32d"}.entypo-dropbox:before{content:"\f330"}.entypo-evernote:before{content:"\f333"}.entypo-flattr:before{content:"\f336"}.entypo-skype:before{content:"\f339"}.entypo-skype-circled:before{content:"\f33a"}.entypo-renren:before{content:"\f33c"}.entypo-sina-weibo:before{content:"\f33f"}.entypo-paypal:before{content:"\f342"}.entypo-picasa:before{content:"\f345"}.entypo-soundcloud:before{content:"\f348"}.entypo-mixi:before{content:"\f34b"}.entypo-behance:before{content:"\f34e"}.entypo-google-circles:before{content:"\f351"}.entypo-vkontakte:before{content:"\f354"}.entypo-smashing:before{content:"\f357"}.entypo-sweden:before{content:"\f601"}.entypo-db-shape:before{content:"\f600"}.entypo-logo-db:before{content:"\f603"}
            /* latin */
            @font-face {
                font-family: 'Advent Pro';
                font-style: normal;
                font-weight: 400;
                src: local('Advent Pro Regular'), local('AdventPro-Regular'), url(https://fonts.gstatic.com/s/adventpro/v5/rT9jpj7pBpZV6AmssbZKk_k_vArhqVIZ0nv9q090hN8.woff2) format('woff2');
            }
            /* greek */
            @font-face {
                font-family: 'Advent Pro';
                font-style: normal;
                font-weight: 700;
                src: local('Advent Pro Bold'), local('AdventPro-Bold'), url(https://fonts.gstatic.com/s/adventpro/v5/M4I6QiICt-ey_wZTpR2gKzyJJ3dJfU6-XWVNf-DPRbs.woff2) format('woff2');
            }
            /* latin-ext */
            @font-face {
                font-family: 'Advent Pro';
                font-style: normal;
                font-weight: 700;
                src: local('Advent Pro Bold'), local('AdventPro-Bold'), url(https://fonts.gstatic.com/s/adventpro/v5/M4I6QiICt-ey_wZTpR2gKxHJTnCUrjaAm2S9z52xC3Y.woff2) format('woff2');
            }
            /* latin */
            @font-face {
                font-family: 'Advent Pro';
                font-style: normal;
                font-weight: 700;
                src: local('Advent Pro Bold'), local('AdventPro-Bold'), url(https://fonts.gstatic.com/s/adventpro/v5/M4I6QiICt-ey_wZTpR2gK4WiMMZ7xLd792ULpGE4W_Y.woff2) format('woff2');
            }      




            .menu
            {
                min-height: 50px;
                background-color:#00cccc;
            }
            .title
            {
                background-color:#000033;
                min-height: 100px;  
            }

            section #services {
                text-align: center;
                transform: translatez(0);
            }
            section #services h2 {
                //margin: 80px 0px 40px;
                color:#000033;
                font-size: 2.4em;
                font-family: 'Raleway Dots', sans-serif;
                text-transform: uppercase;
                text-align: center;
            }
            section #services li {
                width: 60px;
                height: 60px;
                display: inline-block;
                margin: 20px;
                list-style: none;
            }
            section #services li div {
                width: 65px;
                height: 65px;
                color: white;
                font-size: 3.4em;
                text-align: center;
                //line-height: 120px;
                background-color: #000033;
                transition: all 0.5s ease;
            }
            section #services li div:hover {
                transform: rotate(360deg);
                border-radius: 100px;
            }
            section #services li span {
                width: 60px;
                height: 20px;
                display: block;
                padding: 15px 0px;
                color: white;
                opacity: 0.95;
                font-weight: bold;
                font-family: 'Advent Pro', sans-serif;
                text-transform: uppercase;
                font-size: 1.2em;
                text-align: center;
            }





            .main
            {
                min-height:100%;
                background-image: url(images/mbg.jpg);
                opacity: 0.95;

            }
            .footer
            {
                min-height: 100px;
                background-color: black;
            }
            .sec
            {
                max-height: 100%;
                background-image: url(images/rgbg.png);
                background-color: white;
                opacity: 0.95;
            }
            #spt
            {
                font-size:50px;

                color: darkred;
                font-weight: bold;
                font-family: 'Algerian';
            }
            .custom
            {
                width:100%;
            }
            #outer2
            {
                min-height: 370px;

                background-color:rgba(0,0,0,0.45);

            }
        </style>
    </head>
    <body>
        <div class="container-fluid outer">
            <!-- Header div open-->
            <%@include  file="masterpages/header.jsp"%>
            <!-- Header div close-->

           
            <!-- Menu div open-->
            <%@include  file="masterpages/menu.jsp"%> 
            <!-- Menu div close-->

            <!-- Main div open-->
            <div class="row main"  style="margin-top: -20px;opacity: 1;">
                <div class="container sec">
                    <br/><center>
                        <span style="font-size:60px;"><b><span style="color:blue;">E</span>-<span style="color:red;">S</span><span style="color:orange;">t</span><span style="color:blue;">u</span><span style="color:green;">d</span><span style="color:red;">y<br/></span></b>
                        </span><span style="font-size:47px;">One account. All of E-study.</span><br/><br/>
                        <span style="font-size:20px;"><b>Sign in to Continue to E-study</b></span><br/><br/>
                        <div id="outer2"  class="col-sm-9" style="box-shadow:5px 5px 25px black;margin-left: 12%;border-radius:5px;">

                            <form action="generalcode/getotpcode.jsp" method="post">
                                <br/><br/><input type="text" name="userid" class="form-control input-lg" style="margin-top:13%;font-size:23px;border-radius:5px;" placeholder="Enter your Id" /><br/>
                                <input type="text" name="mobile"  class="form-control input-lg"  style="font-size:23px;border-radius:5px;" placeholder="Enter mobile number "/>

                                <br/><input type="submit" value="Get OTP" class="btn btn-success btn-lg btn-block custom">

                            </form>
                          

                        </div></center>
                </div>
                <div class="container sec" style="opacity: 0.88;"><center>
                        <br/><span style="font-size:20px;"><b><a href="registration.jsp" style="text-decoration:none;color:black;">Create an account<br/><br/></a></b></span>
                        <span style="font-size:20px;"><b>One E-study Account for everything E-study</b></span>
                    </center>
                    <br/> <br/></div>
            </div>
            <!-- Main div close-->

            <div class="row" style="background-color:black;">
                <br/> <center><span style="font-size: 25px;font-weight:bold;color: white;"> &nbsp;&nbsp;&nbsp;&nbsp;Social</span></center>
                <section>
                    <ul id='services'>

                         <li>
                            <a href="https://www.facebook.com/" target="blank"> <div class='entypo-facebook' style="margin-top: -30px;"></div></a>
                            <span>Facebook</span>
                        </li>
                        <li>
                            <a href="https://twitter.com/" target="blank"><div class='entypo-twitter'></div></a>
                            <span>Twitter</span>
                        </li>
                        <li>
                            <a href="https://www.google.co.in/?gfe_rd=cr&ei=zvNbWbz0H-zs8AeFtqHIDw&gws_rd=ssl" target="blank"><div class='entypo-gplus'></div></a>
                            <span>Google+</span>
                        </li>
                        <li>
                            <a href="https://www.linkedin.com/" target="blank"> <div class='entypo-linkedin'></div></a>
                            <span>LinkedIn</span>
                        </li>
                    </ul>
                </section>

            </div>




            <!-- Footer div open-->
            <div class="row footer" style="padding-top: 3%;margin-top: -30px;text-align: center;">
                <span style="color: white;font-size: 20px;">Developed by : Vivek Singh , #Mobile : +919140729954<br>Email : vivekmmmut16@gmail.com</span>
            </div>
            <!-- Footer div close-->
        </div>

    </body>
</html>
