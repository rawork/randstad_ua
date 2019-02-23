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
    <div class="attention-bg">
        <div class="container">
            <div class="">
                <div class="attention attention_rus" id="attention-rus">
                    У разі успішної реєстрації Ви отримаєте підтвердження від представника АНКОРу в Україні за вказаною електронною адресою або номером телефону.<br>
                    На церемонію вручення премії Randstad запрошуються представники топ-менеджменту і керівники HR-служб і підрозділів великих компаній-роботодавців України, а також представники засобів масової інформації. Якщо Ви реєструєтеся на церемонію, не отримавши офіційного запрошення від АНКОРу в Україні, та не маєте відношення до жодної з наведених вище груп гостей, АНКОР має право відхилити Вашу реєстрацію, про що обов’язково повідомить Вам листом за вказаною електронною адресою.
                    <br><a href="#attention-eng">English</a></div>

                <div class="attention" id="attention-eng">In case of positive registration you'll get confirmation from the ANCOR representative via e-mail or by phone.<br>
                    We are happy to meet at the Randstad Award Ceremony top-management and HR management of the companies-employers in Ukraine as well as mass media professionals. Whether you register for the ceremony without the invitation from ANCOR holding and you're supposed not to present any of the above-mentioned guests, ANCOR may refuse your registration, sending notification to the pointed e-mail.
                    <br><a href="#attention-rus">Український</a>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="content content-about">
            <h1>{$h1}</h1>
            {$maincontent}
        </div>
    </div>
    <div class="footer">
        <div class="container">{raMethod path="Fuga:Public:Common:block" args="['name':'footer']"}</div>
    </div>
    {include file="menu/mobilemenu.tpl"}
    <script src="{$theme_ref}/public2018/js/js.cookie.js"></script>
    <script src="{$theme_ref}/jquery/jquery.js"></script>
    <script src="{$theme_ref}/bootstrap3/js/bootstrap.min.js"></script>
    <script src="{$theme_ref}/public2018/js/app.js?2019022301"></script>
    <script src="{$theme_ref}/public/js/public.js"></script>
</body>
</html>