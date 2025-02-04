<%--
  Created by IntelliJ IDEA.
  User: 12550
  Date: 2021/11/26
  Time: 20:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>山西省交通大数据分析平台</title>
    <!--设置是否为缩放模式 -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 新 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet" type="text/css" href="https://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="js/jquery.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="js/bootstrap.min.js"></script>
    <!--echarts JS-->
    <script src="js/echarts.min.js"></script>
    <!-- 轮播swiper文件 -->
    <link rel="stylesheet" type="text/css" href="css/swiper.min.css">
    <script src="js/swiper.min.js"></script>
    <!--界面样式-->
    <script src="js/visual.js"></script>
    <script src="js/china.js"></script>
    <script src="js/chartMap.js"></script>
    <link rel="stylesheet" type="text/css" href="css/visual.css">

</head>
<body class="ksh">
<div id="load">
    <div class="load_img"><!-- 加载动画 -->
        <img class="jzxz1" src="images/jzxz1.png">
        <img class="jzxz2" src="images/jzxz2.png">
    </div>
</div>
<div class="head_top">
    <img class="img-responsive" src="images/jcdsj_logo.gif">

</div>
<div class="visual">
    <div class="visual_left">
        <div class="visual_box">
            <div class="visual_title">
                <span>交通流量</span>
                <img src="images/ksh33.png">
            </div>
            <div class="visual_chart" id="main1">

            </div>
        </div>
        <div class="visual_box">
            <div class="visual_title">
                <span>交通工具流量</span>
                <img src="images/ksh33.png">
            </div>
            <div class="visual_chart" id="main2">

            </div>
        </div>
        <div class="visual_box">
            <div class="visual_title">
                <span>收费站车流量</span>
                <img src="images/ksh33.png">
            </div>
            <div class="visual_chart sfzcll">
                <a>运输方式</a>
                <a>客运量</a>
                <a>货运量</a>
                <div class="sfzcll_pos_box">
                    <div class="sfzcll_box">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <label><img src="images/ksh35.png">公路运输</label>
                        <div class="sfzcll_smallBk">
                            <div class="ygl">
                                <span>4347.2万</span>人
                            </div>
                        </div>
                        <div class="sfzcll_smallBk">
                            <div class="ygh">
                                <span>4347.2万</span>人
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="sfzcll_box">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <label><img src="images/ksh35.png">公路运输</label>
                        <div class="sfzcll_smallBk">
                            <div class="ygl">
                                <span>4347.2万</span>人
                            </div>
                        </div>
                        <div class="sfzcll_smallBk">
                            <div class="ygh">
                                <span>4347.2万</span>人
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="sfzcll_box">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <img class="sfzcll_bkJk" src="images/ksh34.png">
                        <label><img src="images/ksh35.png">公路运输</label>
                        <div class="sfzcll_smallBk">
                            <div class="ygl">
                                <span>4347.2万</span>人
                            </div>
                        </div>
                        <div class="sfzcll_smallBk">
                            <div class="ygh">
                                <span>4347.2万</span>人
                            </div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="visual_con">
        <div class="visual_conTop">
            <div class="visual_conTop_box visual_conTop1">
                <div>
                    <h3>当前警情数(起)</h3>
                    <p>67</p>
                    <div class="conTop_smil">
                        <a class="sz">日环比:<span>+3%</span><i class="fa fa-long-arrow-up"></i></a>
                        <a class="xd">周环比:<span>-2%</span><i class="fa fa-long-arrow-down"></i></a>
                    </div>
                </div>
            </div>
            <div class="visual_conTop_box visual_conTop2">
                <div>
                    <h3>区域拥堵指数</h3>
                    <p>1.4</p>
                    <div class="conTop_smil">
                        <a class="">缓行</a>
                        <a class="">平均车速<span>120</span>KM/H</i></a>
                    </div>
                </div>
            </div>
            <div class="visual_conTop_box visual_conTop1">
                <div>
                    <h3>当前警情数(起)</h3>
                    <p>99</p>
                    <div class="conTop_smil">
                        <a class="sz">日环比:<span>+3%</span><i class="fa fa-long-arrow-up"></i></a>
                        <a class="xd">周环比:<span>-2%</span><i class="fa fa-long-arrow-down"></i></a>
                    </div>
                </div>
            </div>
            <div class="visual_conTop_box visual_conTop2">
                <div>
                    <h3>当前警情数(起)</h3>
                    <p>7421</p>
                    <div class="conTop_smil">
                        <a class="null">null</a>
                        <a class="xd">月环比:<span>-2%</span><i class="fa fa-long-arrow-down"></i></a>
                    </div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <div class="visual_conBot">
            <img class="visual_conBot_l" src="images/ksh42.png">
            <img class="visual_conBot_2" src="images/ksh43.png">
            <img class="visual_conBot_3" src="images/ksh44.png">
            <img class="visual_conBot_4" src="images/ksh45.png">
            <div class="visual_chart_text">
                <h1>出行服务+大数据</h1>
                <h2>山西省交通大数据分析平台</h2>
            </div>
            <div class="visual_chart" id="main8"></div>
            <div class="visual_conBot_bot">
                <div class="visualSssf_left">
                    <h3>今日实时收费</h3>
                    <a style="display:block">全省数据</a>
                    <a>大同北</a>
                    <a>大同南</a>
                    <a>朔州</a>
                    <a>吕梁北</a>
                    <a>吕梁南</a>
                    <a>太原</a>
                    <a class="active">晋中</a>
                    <a>太旧</a>
                    <a>长治</a>
                </div>
                <div class="visualSssf_right">
                    <div class="visualSssf_right_box" id="main5"></div>
                    <div class="visualSssf_right_box" id="main6"></div>
                    <div class="visualSssf_right_box" id="main7"></div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="visual_right">
        <div class="visual_box">
            <div class="visual_title">
                <span>本月发生事件</span>
                <img src="images/ksh33.png">
            </div>
            <div class="swiper-container visual_swiper1 visual_chart">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"  id="main3"></div>
                    <div class="swiper-slide"  id="main31"></div>
                </div>
            </div>
        </div>
        <div class="visual_box visualSfzsfl">
            <div class="visual_title">
                <span>收费站收费量</span>
                <img src="images/ksh33.png">
            </div>
            <div class="visual_chart" id="main9">

            </div>
            <div class="visual_table">
                <table>
                    <tr>
                        <td>小型车</td>
                        <td>中型车</td>
                        <td>大型车</td>
                    </tr>
                    <tr>
                        <td>2486万</td>
                        <td>2486万</td>
                        <td>2486万</td>
                    </tr>
                    <tr>
                        <td>2486万</td>
                        <td>2486万</td>
                        <td>2486万</td>
                    </tr>
                    <tr>
                        <td>2486万</td>
                        <td>2486万</td>
                        <td>2486万</td>
                    </tr>
                    <tr>
                        <td>2486万</td>
                        <td>2486万</td>
                        <td>2486万</td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="visual_box">
            <div class="visual_title">
                <span>收费站收费排行</span>
                <img src="images/ksh33.png">
            </div>
            <div class="swiper-container visual_swiper2 visual_chart">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"  id="main4"></div>
                    <div class="swiper-slide"  id="main41"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</div>
<script type="text/javascript">
    $(function(){
        var a=$('.visualSssf_left a')
        for(var i=0;i<a.length;i++){
            a[i].index=i;
            a[i].onclick=function(){
                for(var i=0;i<a.length;i++){
                    a[i].className=''
                }
                this.className='active'
            }
        }

        var sfzcllH=$('.sfzcll_box').height()
        var sfzcllHtwo=sfzcllH-2
        $('.sfzcll_box').css('line-height',sfzcllH+'px')
        $('.sfzcll_smallBk>div').css('line-height',sfzcllHtwo+'px')

        //删除加载动画
        $('#load').fadeOut(1000)
        setTimeout(function(){
                $('#load').remove()
            }
            ,1100);
    })

    //交通流量
    var myChart1 = echarts.init(document.getElementById('main1'));
    myChart1.setOption(option1);
    //交通工具流量
    var myChart2 = echarts.init(document.getElementById('main2'));
    myChart2.setOption(option2);
    //本月发生事件
    var myChart3 = echarts.init(document.getElementById('main3'));
    myChart3.setOption(option3);
    var myChart31 = echarts.init(document.getElementById('main31'));
    myChart31.setOption(option31);
    var mySwiper1 = new Swiper('.visual_swiper1', {
        autoplay: true,//可选选项，自动滑动
        speed:800,//可选选项，滑动速度
        autoplay: {
            delay: 5000,//1秒切换一次
        },
    })
    //收费站收费排行
    var myChart4 = echarts.init(document.getElementById('main4'));
    myChart4.setOption(option4);
    var myChart41 = echarts.init(document.getElementById('main41'));
    myChart41.setOption(option41);
    var mySwiper2 = new Swiper('.visual_swiper2', {
        autoplay: true,//可选选项，自动滑动
        direction : 'vertical',//可选选项，滑动方向
        speed:2000,//可选选项，滑动速度
    })
    //今日实时收费
    var myChart5 = echarts.init(document.getElementById('main5'));
    myChart5.setOption(option5);
    var myChart6 = echarts.init(document.getElementById('main6'));
    myChart6.setOption(option6);
    var myChart7 = echarts.init(document.getElementById('main7'));
    myChart7.setOption(option7);
    //中间地图
    var myChart8 = echarts.init(document.getElementById('main8'));
    myChart8.setOption(option8);
    //收费站收费量
    var myChart9 = echarts.init(document.getElementById('main9'));
    myChart9.setOption(option9);
</script>
</body>
</html>
