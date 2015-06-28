   
   <script type="text/javascript" src="<?= base_url() ?>theme/jssor-slider/jssor.js"></script>
    <script type="text/javascript" src="<?= base_url() ?>theme/jssor-slider/jssor.slider.js"></script>
    <script type="text/javascript" src="<?= base_url() ?>theme/jssor-slider/config.js"></script>
<style>
     .captionOrange, .captionBlack
        {
            color: #fff;
            font-size: 20px;
            line-height: 30px;
            text-align: center;
            border-radius: 4px;
        }

         .captionOrange
        {
            background: #c0c0c0;
            background-color: rgba(242, 242, 242, 0.6);
            width:200px;
            height: 200px;
        }
        .captionOrange h4 {
            color:blue;
        }
</style>
   <!-- Jssor Slider Begin -->
    <!-- To move inline styles to css file/block, please specify a class name for each element. -->  
    <div id="slider1_container" style="position: relative; width: 100%px;
        height: 380px; overflow: hidden;">
 
        <!-- Loading Screen --> 
        <div u="loading" style="position: absolute; top: 0px; left: 0px;">
            <div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;

                background-color: #000; top: 0px; left: 0px;width: 100%; height:100%;"> 
            </div> 
            <div style="position: absolute; display: block; background: url(<?= base_url() ?>theme/jssor-slider/img/loading.gif) no-repeat center center;

                top: 0px; left: 0px;width: 100%;height:100%;">
            </div> 
        </div> 
 
        <!-- Slides Container --> 
        <div u="slides" style="cursor: move; position: absolute; left: 0px; top: 0px; width: 980px; height: 380px;
            overflow: hidden;">
            <div>
                <img u="image" src="<?= base_url() ?>theme/jssor-slider/img/01.jpg" />
                  <div u=caption t="CLIP|LR" du="1500" class="captionOrange"  style="position:absolute; left:20px; top: 30px; width:200px; height:200px;"> 
                <h4>Manfaat Kecubung</h4>
                Touch swipe and responsive<br> javascript image slider
                </div>
            </div>
            <div> 
                <img u="image" src="<?= base_url() ?>theme/jssor-slider/img/02.jpg" />
                <div u=caption t="CLIP|LR" du="1500" class="captionOrange"  style="position:absolute; left:20px; top: 30px; width:200px; height:200px;"> 
                <h4>Manfaat Kecubung</h4>
                Touch swipe and responsive<br> javascript image slider
                </div>
            </div>
           

          
        </div> 
 
        <!--#region Bullet Navigator Skin Begin -->
        <!-- Help: http://www.jssor.com/development/slider-with-bullet-navigator-jquery.html -->
        <style>
            /* jssor slider bullet navigator skin 03 css */
            /*
            .jssorb03 div           (normal)
            .jssorb03 div:hover     (normal mouseover)
            .jssorb03 .av           (active)
            .jssorb03 .av:hover     (active mouseover)
            .jssorb03 .dn           (mousedown)
            */
            .jssorb03 {
                position: absolute;
            }
            .jssorb03 div, .jssorb03 div:hover, .jssorb03 .av {
                position: absolute;
                /* size of bullet elment */
                width: 21px;
                height: 21px;
                text-align: center;
                line-height: 21px;
                color: white;
                font-size: 12px;
                background: url(<?= base_url() ?>theme/jssor-slider/img/b03.png) no-repeat;
                overflow: hidden;
                cursor: pointer;
            }
            .jssorb03 div { background-position: -5px -4px; }
            .jssorb03 div:hover, .jssorb03 .av:hover { background-position: -35px -4px; }
            .jssorb03 .av { background-position: -65px -4px; }
            .jssorb03 .dn, .jssorb03 .dn:hover { background-position: -95px -4px; }
        </style>
        <!-- bullet navigator container -->
        <div u="navigator" class="jssorb03" style="bottom: 16px; right: 6px;">
            <!-- bullet navigator item prototype -->
            <div u="prototype"><div u="numbertemplate"></div></div>
        </div>
        <!--#endregion Bullet Navigator Skin End -->
        
        <!--#region Arrow Navigator Skin Begin -->
        <!-- Help: http://www.jssor.com/development/slider-with-arrow-navigator-jquery.html -->
        <style>
            /* jssor slider arrow navigator skin 20 css */
            /*
            .jssora20l                  (normal)
            .jssora20r                  (normal)
            .jssora20l:hover            (normal mouseover)
            .jssora20r:hover            (normal mouseover)
            .jssora20l.jssora20ldn      (mousedown)
            .jssora20r.jssora20rdn      (mousedown)
            */
            .jssora20l, .jssora20r {
                display: block;
                position: absolute;
                /* size of arrow element */
                width: 55px;
                height: 55px;
                cursor: pointer;
                background: url(<?= base_url() ?>theme/jssor-slider/img/a20.png) no-repeat;
                overflow: hidden;
            }
            .jssora20l { background-position: -3px -33px; }
            .jssora20r { background-position: -63px -33px; }
            .jssora20l:hover { background-position: -123px -33px; }
            .jssora20r:hover { background-position: -183px -33px; }
            .jssora20l.jssora20ldn { background-position: -243px -33px; }
            .jssora20r.jssora20rdn { background-position: -303px -33px; }
        </style>
        <!-- Arrow Left -->
        <span u="arrowleft" class="jssora20l" style="top: 123px; left: 8px;">
        </span>
        <!-- Arrow Right -->
        <span u="arrowright" class="jssora20r" style="top: 123px; right: 8px;">
        </span>
        <!--#endregion Arrow Navigator Skin End -->
        <a style="display: none" href="http://www.jssor.com">Image Slider</a>
    </div> 
    <!-- Jssor Slider End -->