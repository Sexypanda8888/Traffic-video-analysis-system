<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <title>首页 - 炫酷的科技公司静态html模板 - xxx</title>
    <link rel="stylesheet" type="text/css" href="./css/style.css" />
    <link rel="stylesheet" type="text/css" href="./css/common.css">
    <link rel="stylesheet" href="http://www.5imoban.net/download/swiper/swiper-4.4.2.min.css" />
    <link rel="stylesheet" type="text/css" href="./css/animate.min.css">
</head>

<body>
<div class="index-header clearfix">
    <div class="index- fl">
        <a href=""></a>
    </div>
    <ul class="index-nav fl">
        <li><a href="index.jsp">首页</a></li>
        <li><a href="../datatable/index.jsp">关于我们</a></li>
        <li><a href="../videoWeb/html/index.jsp">业务范围</a></li>
        <li><a href="../todo-list/index.jsp">产品中心</a></li>
        <li><a href="../Statistics/index.jsp">应用案例</a></li>
        <li><a href="news.jsp">新闻资讯</a></li>
        <li><a href="jobs.jsp">人才招聘</a></li>
        <li><a href="service.jsp">服务支持</a></li>
        <li><a href="contact.jsp">联系我们</a></li>
    </ul>
    <div class="index-header-right fr">
        <a href="" class="search-btn">搜索</a>
    </div>
    <div class="clear"></div>
</div>

<div class="search_sec">
    <a href="#" title="" class="close-search"><i class=" la-close"><img src="./images/icon5.png"></i></a>
    <div class="search_field">
        <div class="container">
            <form>
                <input type="text" name="search" placeholder="Search for...">
                <button type="submit"><img src="./images/search2.png" alt=""></button>
            </form>
        </div>
    </div>
</div>
<!--search_sec end-->

<div id="bloc">
    <article id="index">
        <div class="banner-position">
            <div class="index-banner swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="./images/banner1.jpg">
                    </div>
                    <div class="swiper-slide">
                        <img src="./images/banner1.jpg">
                    </div>
                    <div class="swiper-slide">
                        <img src="./images/banner1.jpg">
                    </div>
                </div>
                <!-- Add Navigation -->
                <div class="swiper-button-prev swiper-button-white"></div>
                <div class="swiper-button-next swiper-button-white"></div>
            </div>
            <div class="banner-wave">
                <svg viewBox="0 0 120 28">

                    <defs>

                        <filter id="goo">

                            <feGaussianBlur in="SourceGraphic" stdDeviation="1" result="blur" />

                            <feColorMatrix in="blur" mode="matrix" values="

							   1 0 0 0 0

							   0 1 0 0 0

							   0 0 1 0 0

							   0 0 0 13 -9" result="goo" />

                            <xfeBlend in="SourceGraphic" in2="goo" />

                        </filter>

                        <path id="wave" d="M 0,10 C 30,10 30,15 60,15 90,15 90,10 120,10 150,10 150,15 180,15 210,15 210,10 240,10 v 28 h -240 z" />

                    </defs>

                    <use id="wave3" class="wave" xlink:href="#wave" x="0" y="-2"></use>

                    <use id="wave2" class="wave" xlink:href="#wave" x="0" y="0"></use>

                    <g class="gooeff" filter="url(#goo)">

                        <circle class="drop drop1" cx="20" cy="2" r="8.8" />

                        <circle class="drop drop2" cx="25" cy="2.5" r="7.5" />

                        <circle class="drop drop3" cx="16" cy="2.8" r="9.2" />

                        <circle class="drop drop4" cx="18" cy="2" r="8.8" />

                        <circle class="drop drop5" cx="22" cy="2.5" r="7.5" />

                        <circle class="drop drop6" cx="26" cy="2.8" r="9.2" />

                        <circle class="drop drop1" cx="5" cy="4.4" r="8.8" />

                        <circle class="drop drop2" cx="5" cy="4.1" r="7.5" />

                        <circle class="drop drop3" cx="8" cy="3.8" r="9.2" />

                        <circle class="drop drop4" cx="3" cy="4.4" r="8.8" />

                        <circle class="drop drop5" cx="7" cy="4.1" r="7.5" />

                        <circle class="drop drop6" cx="10" cy="4.3" r="9.2" />

                        <circle class="drop drop1" cx="1.2" cy="5.4" r="8.8" />

                        <circle class="drop drop2" cx="5.2" cy="5.1" r="7.5" />

                        <circle class="drop drop3" cx="10.2" cy="5.3" r="9.2" />

                        <circle class="drop drop4" cx="3.2" cy="5.4" r="8.8" />

                        <circle class="drop drop5" cx="14.2" cy="5.1" r="7.5" />

                        <circle class="drop drop6" cx="17.2" cy="4.8" r="9.2" />

                        <use id="wave1" class="wave" xlink:href="#wave" x="0" y="1" />

                    </g>
                </svg>
            </div>
        </div>
        <div class="clear"></div>
        <!--about-->
        <div class="index-about">
            <div class="index-con clearfix">
                <div class="index-about-text fl">
                    <div class="index-title">
                        <h3 class="scroll-animate" data-effect="fadeInUpSmall">bailuozhineng</h3>
                        <h2 class="scroll-animate" data-delay="0.2" data-effect="fadeInUpSmall">about us</h2>
                        <span></span>
                    </div>
                    <p  class="scroll-animate" data-delay="0.6" data-effect="fadeInUpSmall">XXX智能立足于智慧社区领域，以人脸识别系统为核心，以社区需求为导向，率先在智慧社区、大数据领域布局并取得重大突破。<br />
                        XXX专注于智慧社区系统方案及配套产品的研发，通过云计算、大数据、人工智能等技术连接物业、居民、政府、媒体和社区服务提供方，形成“物联网+社区”一站式解决方案，目前已经获得国内专利及软件著作权40多项。</p>
                    <div class="index-more">
                        <a href="">view more +</a>
                    </div>
                </div>
                <div class="index-about-pic fr">
                    <a href="" >
                        <img src="./images/pic2.jpg" class="scroll-animate classGo" data-Tclass="go">
                    </a>
                </div>
            </div>
            <div class="wave_box1">
                <img src="./images/wavs.gif">
            </div>
        </div>
        <div class="clear"></div>

        <!--业务范围-->
        <div class="index-yewu">
            <div class="index-con clearfix">
                <div class="index-title">
                    <h3>bailuozhineng</h3>
                    <h2>why we</h2>
                </div>

                <div class="index-yewu-info clearfix">
                    <div class="index-yewu-pic fl">
                        <a href="" >
                            <img src="./images/pic3.jpg" class="scroll-animate classGo" data-Tclass="go">
                        </a>
                    </div>
                    <ul class="index-yewu-list clearfix fr">
                        <li>
                            <a href="">
                                <em><img src="./images/ico1.png"></em>
                                <div class="text">
                                    <h2>智慧城市</h2>
                                    <span>Smart city</span>
                                    <p>互联网为依托，对商家的线上服务、客户的线下体验以及与现代物流进行深度融合</p>
                                </div>
                                <div class="button bz-buttonAnimat clockwise both">
                                    <div class="inner"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <em><img src="./images/ico2.png"></em>
                                <div class="text">
                                    <h2>智慧社区</h2>
                                    <span>Smart city</span>
                                    <p>互联网为依托，对商家的线上服务、客户的线下体验以及与现代物流进行深度融合</p>
                                </div>
                                <div class="button bz-buttonAnimat clockwise both">
                                    <div class="inner"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <em><img src="./images/ico3.png"></em>
                                <div class="text">
                                    <h2>智慧校园</h2>
                                    <span>Smart city</span>
                                    <p>互联网为依托，对商家的线上服务、客户的线下体验以及与现代物流进行深度融合</p>
                                </div>
                                <div class="button bz-buttonAnimat clockwise both">
                                    <div class="inner"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <em><img src="./images/ico4.png"></em>
                                <div class="text">
                                    <h2>智慧安防</h2>
                                    <span>Smart city</span>
                                    <p>互联网为依托，对商家的线上服务、客户的线下体验以及与现代物流进行深度融合</p>
                                </div>
                                <div class="button bz-buttonAnimat clockwise both">
                                    <div class="inner"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <em><img src="./images/ico5.png"></em>
                                <div class="text">
                                    <h2>人脸识别</h2>
                                    <span>Face recognition</span>
                                    <p>互联网为依托，对商家的线上服务、客户的线下体验以及与现代物流进行深度融合</p>
                                </div>
                                <div class="button bz-buttonAnimat clockwise both">
                                    <div class="inner"></div>
                                </div>
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <em><img src="./images/ico6.png"></em>
                                <div class="text">
                                    <h2>行为分析</h2>
                                    <span>behavior analysis</span>
                                    <p>互联网为依托，对商家的线上服务、客户的线下体验以及与现代物流进行深度融合</p>
                                </div>
                                <div class="button bz-buttonAnimat clockwise both">
                                    <div class="inner"></div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="clear"></div>

        <div class="position-yuan clearfix">
            <div class="bg scr-el" data-v="1" data-speed-x="12" data-offset="150 "></div>
        </div>
        <div class="clear"></div>
        <!--产品-->
        <div class="index-product clearfix">
            <div class="index-con clearfix">
                <div class="index-title">
                    <h3>bailuozhineng</h3>
                    <h2>Product</h2>
                </div>
                <ul class="clearfix index-product-list clearfix">
                    <li>
                        <a href="">
                            <em><img src="./images/pic4.jpg"></em>
                            <div class="text">
                                <h2>智能人脸识别系统 </h2>
                                <p>Intelligent Face Recognition System</p>
                                <span><img src="./images/jt.png"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <em><img src="./images/pic5.jpg"></em>
                            <div class="text">
                                <h2>智能交通应用系统 </h2>
                                <p>Intelligent Transportation Application System</p>
                                <span><img src="./images/jt.png"></span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <em><img src="./images/pic6.jpg"></em>
                            <div class="text">
                                <h2>社区媒体服务 </h2>
                                <p>Community Media Services</p>
                                <span><img src="./images/jt.png"></span>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="clear"></div>

        <!--news-->
        <div class="index-news">
            <div class="index-con clearfix">
                <div class="index-title">
                    <h3>bailuozhineng</h3>
                    <h2>news</h2>
                </div>
                <ul class="index-news-list clearfix">
                    <li class="trs02 an_up">
                        <a href="">
                            <em><img src="./images/pic7.jpg"></em>
                            <div class="text">
                                <span></span>
                                <p>AI人脸识别，助力智慧社区建设升级慧社区建！</p>
                                <i>2019.09.25</i>
                            </div>
                        </a>
                    </li>
                    <li class="trs03 an_up">
                        <a href="">
                            <em><img src="./images/pic7.jpg"></em>
                            <div class="text">
                                <span></span>
                                <p>AI人脸识别，助力智慧社区建设升级慧社区建！</p>
                                <i>2019.09.25</i>
                            </div>
                        </a>
                    </li>
                    <li class="trs04 an_up">
                        <a href="">
                            <em><img src="./images/pic7.jpg"></em>
                            <div class="text">
                                <span></span>
                                <p>AI人脸识别，助力智慧社区建设升级慧社区建！</p>
                                <i>2019.09.25</i>
                            </div>
                        </a>
                    </li>
                    <li class="trs05 an_up">
                        <a href="">
                            <em><img src="./images/pic7.jpg"></em>
                            <div class="text">
                                <span></span>
                                <p>AI人脸识别，助力智慧社区建设升级慧社区建！</p>
                                <i>2019.09.25</i>
                            </div>
                        </a>
                    </li>
                </ul>
                <div class="clear"></div>
            </div>
        </div>

        <!--footer-->
        <div class="index-footer">
            <div class="clearfix index-footer-info index-con">
                <div class=" fl">

                </div>
                <div class="lianxi fl">
                    <h2>联系方式</h2>
                    <p>前台电话： xxx </p>
                    <p>报修电话：xxx</p>
                    <P>地址：xxx省xxx市XX区XX1201号XXXXXX</P>
                    <p>商务产业园x期x号楼东xxx室</p>
                </div>
                <div class="phone fl">
                    xxx
                </div>
                <div class="erweima fr">
                    <img src="./images/pic1.jpg">
                    <p>二维码</p>
                </div>
            </div>

            <div class="index-footer-bottom">
                <div class="index-con clearfix">
                    <p class="fl">版权所有 © 2020 xxxx科技有限公司  皖ICP备xxxxxxxx号 x公网安备xxxxxxxxxxxxxxxxxx号</p>
                    <a href="http://www.5imoban.net" target="_blank" class="fr">技术支持：静态网页模板</a>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </article>
</div>

<script type="text/javascript" src="http://www.5imoban.net/download/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src='./js/modernizr.custom.js'></script>
<script src="./js/more.js"></script>
<script src="http://www.5imoban.net/download/swiper/swiper-4.4.2.min.js"></script>
<script type="text/javascript" src="./js/main.js"></script>
<script type='text/javascript' src='./js/base.js'></script>
<script type="text/javascript" src='./js/app.js'></script>
<script>
    var swiper = new Swiper('.index-banner.swiper-container', {
        speed: 600,
        parallax: true,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });
    scrolly.init({
        wrapper: '#bloc',
        targets: '.scr-el',
        bgParallax: true,
        wrapperSpeed: 0.08
    });
</script>
</body>
</html>
