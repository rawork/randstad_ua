<!DOCTYPE html>
<html>
<head lang="ru">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Randstad Award Russia - {$title}</title>
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/bootstrap3/css/bootstrap.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/slick/slick.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/slick/slick-theme.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/fotorama/fotorama.css" media="screen">
    <link type="text/css" rel="stylesheet" href="{$theme_ref}/public2018/css/app.css" media="screen">
    {*<link type="text/css" rel="stylesheet" href="{$theme_ref}/public2018/css/_slider.css" media="screen">*}
    <!--[if lt IE 9]>
    {*<script type="text/javascript" src="{$theme_ref}/ie/html5shiv.js"></script>*}
    <script type="text/javascript" src="{$theme_ref}/ie/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <div class="header">
        <div class="container">
            <div class="logo pull-left">
                <a href="/">
                    <img class="visible-xs-block" src="{$theme_ref}/public2018/img/logo_xs3.png" />
                    <img class="visible-sm-block" src="{$theme_ref}/public2018/img/logo_sm3.png" />
                    <img class="visible-md-block visible-lg-block" src="{$theme_ref}/public2018/img/logo_md3.png" />
                </a>
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
                                {foreach item=child from=$menuitem.children}
                                    {if pos > 0}<li role="separator" class="divider"></li>{/if}
                                    <li><a href="{$child.ref}">{$child.title}</a></li>
                                {/foreach}
                            </ul>
                        </li>
                    {else}
                        <li><a href="{if $menuitem.url}{$menuitem.url}{else}/#{$menuitem.name}{/if}">{$menuitem.title}</a></li>
                    {/if}
                {/foreach}
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="award-announce">
            <div class="tiser">{raMethod path="Fuga:Public:Common:block" args="['name':'tiser']"}</div>
        </div>
    </div>
    {if $curnode.name == 'guests' && $action =='index'}
    <div class="attention-bg">
        <div class="container">
            <div class="">
                <div class="attention attention_rus" id="attention-rus">
                    В случае успешной регистрации Вы получите подтверждение от представителя холдинга АНКОР на указанный адрес электронной почты или номер телефона.<br>
                    На церемонию вручения премии Randstad Award приглашаются представители топ-менеджмента и руководители HR-служб и подразделений крупных компаний-работодателей России, а также представители средств массовой информации. Если Вы регистрируетесь на церемонию, не имея официального приглашения от холдинга АНКОР, и не относитесь ни к одной из вышеперечисленных групп гостей, АНКОР может отклонить вашу регистрацию, о чем обязательно уведомит вас письмом на указанный адрес электронной почты.
                    <br><a href="#attention-eng">English</a></div>

                <div class="attention" id="attention-eng">In case of positive registration you'll get confirmation from the ANCOR representative via e-mail or by phone.<br>
                    We are happy to meet at the Randstad Award Ceremony top-management and HR management of the companies-employers in Russia as well as mass media professionals. Whether you register for the ceremony without the invitation from ANCOR holding and you're supposed not to present any of the above-mentioned guests, ANCOR may refuse your registration, sending notification to the pointed e-mail.
                    <br><a href="#attention-rus">Русский</a>
                </div>
            </div>
        </div>
    </div>
    {/if}
    <div class="container">
        <div class="content content-about">
            <h1>{$h1}</h1>
            {$maincontent}

        </div>
    </div>
    {include file="menu/mobilemenu.tpl"}
    <div class="golden-bg footer">
        <div class="container ">{raMethod path="Fuga:Public:Common:block" args="['name':'footer']"}</div>
    </div>
    <script src="{$theme_ref}/jquery/jquery.js"></script>
    <script src="{$theme_ref}/bootstrap3/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="{$theme_ref}/fotorama/fotorama.js"></script>
    <script type="text/javascript">
        var fotorama = $('.fotorama')
            // Initialize first:
                .fotorama()
            // ...and return the API object:
                .data('fotorama');
        $('.fotorama')
                .on('fotorama:show', function (e, fotorama) {
                    var itemId = fotorama.index + 1;
                    $('a#download' + itemId).attr('href', fotorama.activeFrame.full);
                });
    </script>

    <script src="{$theme_ref}/slick/slick.min.js"></script>
    <script src="{$theme_ref}/public2018/js/app.js"></script>
        <script src="{$theme_ref}/public/js/public.js"></script>
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