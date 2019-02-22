<!DOCTYPE html>
<html>
<head lang="ru">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{$title}</title>
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/bootstrap3/css/bootstrap.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/slick/slick.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/slick/slick-theme.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/public2018/css/app.css?2018040601" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/public2018/css/_slider.css?2018040202" media="screen">
    <!--[if lt IE 9]>
    {*<script type="text/javascript" src="{$theme_ref}/ie/html5shiv.js"></script>*}
    <script type="text/javascript" src="{$theme_ref}/ie/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    {*{if $smarty.now > strtotime('2018-03-17 15:00:00') && $smarty.now < strtotime('2018-04-01 12:00:00')}*}
    {*<div class="video">*}
        {*<div class="video__title"><a href="#" data-toggle="modal" data-target="#videoModal" data-theVideo="https://www.youtube.com/embed/Qd0o7_W1_mg?rel=0&showinfo=0">Видеоприглашение</a></div>*}
        {*<div class="video__content">*}
            {*<a href="#" class="close">&times;</a>*}
            {*<iframe width="560" height="315" src="https://www.youtube.com/embed/Qd0o7_W1_mg?rel=0&showinfo=0" frameborder="0" allow="autoplay; encrypted-media"  allowfullscreen></iframe>*}
        {*</div>*}
    {*</div>*}
    {*{/if}*}
    <div class="header">
        <div class="container">
                <div class="logo pull-left">
                    <img class="visible-xs-block" src="{$theme_ref}/public2018/img/logo_xs3.png" />
                    <img class="visible-sm-block" src="{$theme_ref}/public2018/img/logo_sm3.png" />
                    <img class="visible-md-block visible-lg-block" src="{$theme_ref}/public2018/img/logo_md3.png" />
                </div>
                {include file="menu/headermenu.tpl"}
        </div>
    </div>
    <div class="menu-bg">
        <div class="container mainmenu">
            <ul class="nav nav-pills">
                {foreach item=menuitem from=$links}
                    {if count($menuitem.children)}
                        <li role="presentation" class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">
                                {$menuitem.title} <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu">
                                {foreach item=child from=$menuitem.children name=foo}
                                    {if $smarty.foreach.foo.index > 0}<li role="separator" class="divider"></li>{/if}
                                    <li><a href="{$child.ref}">{$child.title}</a></li>
                                {/foreach}
                            </ul>
                        </li>
                    {else}
                        <li>
                            <a href="{if $menuitem.url}{$menuitem.url}{else}#{$menuitem.name}{/if}">{$menuitem.title}</a>
                        </li>
                    {/if}
                {/foreach}
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="award-announce row">
            <div class="col-xs-12 col-sm-7 col-md-8">
                <div class="tiser">{raMethod path="Fuga:Public:Common:block" args="['name':'tiser']"}</div>
            </div>
            <div class="col-xs-12 col-sm-5 col-md-4">
                {raMethod path="Fuga:Public:Common:block" args="['name':'partner_link']"}
                <div class="button-container"><a href="#reports" class="info-partners-teaser" >РЕЗУЛЬТАТЫ</a></div>
            </div>
        </div>
    </div>
    {raMethod path="Fuga:Public:Slide:index"}
    <div class="container">
        <div class="content content-about man-heart">
            {raMethod path="Fuga:Public:Common:page" args="['name':'about']"}
        </div>
    </div>
    <div class="gray-bg">
        <div class="container">
             <div class="content content-research">
                 {raMethod path="Fuga:Public:Common:page" args="['name':'research']" }
             </div>
        </div>
    </div>
    <div class="container">
        <div class="content content-report man-report">
            <h2><a name="reports"></a>Отчеты и результаты</h2>
            {raMethod path="Fuga:Public:Report:index"}
            {raMethod path="Fuga:Public:Common:page" args="['name':'reports']"}
        </div>
    </div>
    <div class="gray-bg">
        <div class="container">
            <div class="content content-news man-news">
                {raMethod path="Fuga:Public:News:feed"}
            </div>
        </div>
    </div>
    <div class="container">
        <div class="content content-winner">
            <h2><a name="winners"></a>Победители</h2>
            {raMethod path="Fuga:Public:Winner:main"}
            {raMethod path="Fuga:Public:Winner:other"}
            {raMethod path="Fuga:Public:Winner:spec"}
            {raMethod path="Fuga:Public:Winner:extra"}
        </div>
    </div>
    <div class="gray-bg">
        <div class="container">
            <div class="content content-media man-smi">
                {raMethod path="Fuga:Public:Common:page" args="['name':'media']"}
            </div>
        </div>
    </div>

            {raMethod path="Fuga:Public:Partner:index"}
        </div>
    </div>
    <div class="footer">
        <div class="container">{raMethod path="Fuga:Public:Common:block" args="['name':'footer']"}</div>
    </div>
    {include file="menu/mobilemenu.tpl"}
    <div class="modal fade" id="modal-pryanishnikov" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4>Николай Прянишников</h4>
                    <img class="modal-img" src="/bundles/public2018/img/pryanishnikov.jpg">
                    <p>На пост генерального директора РФГ (сеть спортивных клубов World Class) заступил 3 сентября 2015 г. В задачи Николая Прянишникова входит развитие бизнеса РФГ в России и за рубежом.</p>

                    <p>Николай Прянишников имеет три высших образования: в 1994 г. он окончил Московский автомобильно-дорожный институт (МАДИ), в 1996 г. – Всероссийский заочный финансово-экономический институт по специальности «Финансы и кредит», в 1998 г. Высшую коммерческую школу Министерства внешних экономических связей и торговли РФ и Международный университет управления (Париж) по программе MBA. Защитил ученую степень кандидата экономических наук в Высшей школе приватизации и предпринимательства.</p>

                    <p><strong>World Class</strong></p>

                    <p>Сеть фитнес-клубов World Class — лидер индустрии в сегментах «люкс» и «премиум» и входит в список 25 лучших клубов мира по рейтингу IHRSA, Международной ассоциации оздоровительных и спортивных клубов. World Class — выбор лучших: среди членов сети — олимпийские чемпионы, звёзды спорта и шоу-бизнеса, известные политики и успешные бизнесмены.</p>

                    <p>На сегодняшний день World Class является крупнейшей фитнес-корпорацией в России, которая оперирует 36 собственными и 36 франчайзинговыми клубами в 23 городах России и Казахстана. Сеть World Class является лидером по оказанию фитнес-услуг в сегментах «люкс» и «премиум».</p>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="modal-broek" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4>Жак ван ден Брок</h4>
                    <img class="modal-img" src="/bundles/public2018/img/broek.jpg">
                    <p>В марте 2014 года получил пост главы Randstad Holding nv и председателя Совета директоров. На посту главы Randstad отвечает за операционную деятельность компаний в Германии, Австралии, Новой Зеландии, Китае, Гонконге, Сингапуре и Малайзии, а также за развитие бизнеса, управление персоналом, маркетинг, коммуникации и связи с общественностью в масштабе всей корпорации.</p>

                    <p>В Randstad пришел в 1988 году на позицию руководителя филиала. С тех пор занимал разные управленческие позиции в холдинге, в том числе побывал региональным директором Randstad в Нидерландах и директором по маркетингу в Европе. В январе 2004 Жак ван ден Брок вошел в Совет директоров Randstad Holding nv.</p>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="videoModal" tabindex="-1" role="dialog" aria-labelledby="videoModal" aria-hidden="true">
        <div class="modal-dialog modal-dialog_video">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <div>
                        <iframe width="100%" src="" allow="autoplay; encrypted-media"  allowfullscreen></iframe>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="http://www.youtube.com/player_api"></script>
    <script src="{$theme_ref}/public2018/js/js.cookie.js"></script>
    <script src="{$theme_ref}/jquery/jquery.js"></script>
    <script src="{$theme_ref}/bootstrap3/js/bootstrap.min.js"></script>
    <script src="{$theme_ref}/scrollto/jquery.scrollTo.js"></script>
    <script src="{$theme_ref}/slick/slick.min.js"></script>
    <script src="{$theme_ref}/public2018/js/app.js?2018040501"></script>
    {literal}
    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

        ga('create', 'UA-71588443-1', 'auto');
        ga('send', 'pageview');

    </script>
    {/literal}
</body>
</html>