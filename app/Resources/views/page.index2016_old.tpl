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
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/public2016/css/app.css?2017033005" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/public2016/css/_slider.css?2017033001" media="screen">
    <!--[if lt IE 9]>
    {*<script type="text/javascript" src="{$theme_ref}/ie/html5shiv.js"></script>*}
    <script type="text/javascript" src="{$theme_ref}/ie/respond.min.js"></script>
    <![endif]-->
</head>
<body>
        <div class="container">
            <div class="header">
                <div class="logo pull-left">
                    <img class="logo-lg" src="{$theme_ref}/public2016/img/logo_xs.png">
                    <img class="logo-lg" src="{$theme_ref}/public2016/img/logo_sm.png">
                    <img class="logo-lg" src="{$theme_ref}/public2016/img/logo_md.png">
                </div>
                {include file="menu/headermenu.tpl"}
            </div>
        </div>
        <div class="golden-bg">
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
                                <li><a href="{if $menuitem.url}{$menuitem.url}{else}#{$menuitem.name}{/if}">{$menuitem.title}</a></li>
                            {/if}
                        {/foreach}
                    </ul>
                </div>
            </div>
        <div class="container">
            <div class="award-announce">
                {raMethod path="Fuga:Public:Common:block" args="['name':'partner_link']"}
                <img class="pull-left" src="{$theme_ref}/public2016/img/goldglobe.png">
                <div>{raMethod path="Fuga:Public:Common:block" args="['name':'tiser']"}</div>
            </div>
        </div>
        {raMethod path="Fuga:Public:Slide:index"}
        <div class="container">
            <div class="content content-about">
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
            <div class="content content-report">
                <h2><a name="reports"></a>Отчеты и результаты</h2>
                {raMethod path="Fuga:Public:Report:index"}
                {raMethod path="Fuga:Public:Common:page" args="['name':'reports']"}
            </div>
        </div>
        <div class="gray-bg">
            <div class="container">
                <div class="content content-news">
                    {raMethod path="Fuga:Public:News:feed"}
                </div>
            </div>
        </div>
        <div class="container">
            <div class="content content-winner">
                <h2><a name="winners"></a>Победители</h2>
                {raMethod path="Fuga:Public:Winner:main"}
                {raMethod path="Fuga:Public:Winner:other"}
                {raMethod path="Fuga:Public:Winner:extra"}
            </div>
        </div>
        <div class="gray-bg">
            <div class="container">
                <div class="content content-media">
                    {raMethod path="Fuga:Public:Common:page" args="['name':'media']"}
                </div>
            </div>
        </div>
        <div class="container">
            <div class="content content-partners">
                <h2><a name="partners"></a>Информационные партнеры</h2>
                {raMethod path="Fuga:Public:Partner:index"}
            </div>
        </div>
        <div class="golden-bg footer">
            <div class="container ">{raMethod path="Fuga:Public:Common:block" args="['name':'footer']"}</div>
        </div>
        {include file="menu/mobilemenu.tpl"}
        <div class="modal fade" id="modal-pryanishnikov" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    {*<div class="modal-header">*}

                        {*<h4 class="modal-title" id="myModalLabel">Modal title</h4>*}
                    {*</div>*}
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4>Николай Прянишников</h4>
                        <img class="modal-img" src="/bundles/public2016/img/pryanishnikov.jpg">
                        <p>На пост генерального директора РФГ (сеть спортивных клубов World Class) заступил 3 сентября 2015 г. В задачи Николая Прянишникова входит развитие бизнеса РФГ в России и за рубежом.</p>

                        <p>Николай Прянишников имеет три высших образования: в 1994 г. он окончил Московский автомобильно-дорожный институт (МАДИ), в 1996 г. – Всероссийский заочный финансово-экономический институт по специальности «Финансы и кредит», в 1998 г. Высшую коммерческую школу Министерства внешних экономических связей и торговли РФ и Международный университет управления (Париж) по программе MBA. Защитил ученую степень кандидата экономических наук в Высшей школе приватизации и предпринимательства.</p>

                        <p><strong>World Class</strong></p>

                        <p>Сеть фитнес-клубов World Class — лидер индустрии в сегментах «люкс» и «премиум» и входит в список 25 лучших клубов мира по рейтингу IHRSA, Международной ассоциации оздоровительных и спортивных клубов. World Class — выбор лучших: среди членов сети — олимпийские чемпионы, звёзды спорта и шоу-бизнеса, известные политики и успешные бизнесмены.</p>

                        <p>На сегодняшний день World Class является крупнейшей фитнес-корпорацией в России, которая оперирует 36 собственными и 36 франчайзинговыми клубами в 23 городах России и Казахстана. Сеть World Class является лидером по оказанию фитнес-услуг в сегментах «люкс» и «премиум».</p>
                    </div>
                    {*<div class="modal-footer">*}
                        {*<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>*}
                        {*<button type="button" class="btn btn-primary">Save changes</button>*}
                    {*</div>*}
                </div>
            </div>
        </div>

        <div class="modal fade" id="modal-broek" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    {*<div class="modal-header">*}

                    {*<h4 class="modal-title" id="myModalLabel">Modal title</h4>*}
                    {*</div>*}
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4>Жак ван ден Брок</h4>
                        <img class="modal-img" src="/bundles/public2016/img/broek.jpg">
                        <p>В марте 2014 года получил пост главы Randstad Holding nv и председателя Совета директоров. На посту главы Randstad отвечает за операционную деятельность компаний в Германии, Австралии, Новой Зеландии, Китае, Гонконге, Сингапуре и Малайзии, а также за развитие бизнеса, управление персоналом, маркетинг, коммуникации и связи с общественностью в масштабе всей корпорации.</p>

                        <p>В Randstad пришел в 1988 году на позицию руководителя филиала. С тех пор занимал разные управленческие позиции в холдинге, в том числе побывал региональным директором Randstad в Нидерландах и директором по маркетингу в Европе. В январе 2004 Жак ван ден Брок вошел в Совет директоров Randstad Holding nv.</p>
                    </div>
                    {*<div class="modal-footer">*}
                    {*<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>*}
                    {*<button type="button" class="btn btn-primary">Save changes</button>*}
                    {*</div>*}
                </div>
            </div>
        </div>

        {*<a href="#" class="top" title="Перейти в начало страницы"><span class="glyphicon glyphicon-arrow-up"></span></a>*}
    <script src="{$theme_ref}/jquery/jquery.js"></script>
    <script src="{$theme_ref}/bootstrap3/js/bootstrap.min.js"></script>
        <script src="{$theme_ref}/scrollto/jquery.scrollTo.js"></script>
    <script src="{$theme_ref}/slick/slick.min.js"></script>
    <script src="{$theme_ref}/public2016/js/app.js?2016041001"></script>
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