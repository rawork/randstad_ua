<!DOCTYPE html>
<html>
	<head>
		<title>{$title}</title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		{$meta}
		<link rel="stylesheet" href="{$theme_ref}/
		bootstrap2/css/bootstrap.css" type="text/css" media="screen">
		<link rel="stylesheet" href="{$theme_ref}/public/css/default.css" type="text/css" media="screen">
		<!--[if lt IE 9]>
		{*<script type="text/javascript" src="{$theme_ref}/ie/html5shiv.js"></script>*}
		<script type="text/javascript" src="{$theme_ref}/ie/respond.min.js"></script>
		<![endif]-->
		<script type="text/javascript">
		var prj_ref = '{$prj_ref}';
		</script>
	</head>
	<body>
		<div class="container">
			<div><a href="{raURL node="/"}"><img class="logo" src="{$theme_ref}/public/img/header.jpg"></a></div>
			<div class="navbar navbar-static">
				<div class="navbar-inner">
					<div class="container">
						<ul class="nav" role="navigation">
							{foreach from=$links item=link}
							<li class="dropdown">
								{if $link.children}
								<a id="drop{$link.id}" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">{$link.title} <b class="caret"></b></a>
								<ul class="dropdown-menu" role="menu" aria-labelledby="drop{$link.id}">
									{foreach from=$link.children item=children}
									<li role="presentation"><a role="menuitem" tabindex="-1" href="{$children.ref}">{$children.title}</a></li>
									{/foreach}
								</ul>
								{else}
								<a href="{$link.ref}" class="dropdown-toggle">{$link.title}</a>
								{/if}
							</li>
							<li class="divider-vertical"></li>
							{/foreach}
						 </ul>
						<ul class="nav pull-right" role="navigation">
							<li class="noborder">
								<a class="dropdown-toggle" href="http://www.randstad.com/award/welcome-to-the-randstad-award-2014" target="_blank"> сайт Randstad</a> &nbsp;|&nbsp; <a class="dropdown-toggle" href="http://www.ancor.ru" target="_blank">сайт АНКОР</a>
							</li>
						</ul>
					</div>
				</div>
            </div>
			<div class="line white"></div>
			<div class="line grey"></div>
			<div class="row-fluid grey">
				<div class="span8">
					<div class="title gold"><h1>{$h1}</h1></div>
					<div class="relative-container">
						<div class="logos"><img src="{$theme_ref}/public/img/logos.png" /></div>
					</div>
					<div class="content-container">
						<div class="content-{if $curnode.name == '/'}goblet{else}inner{/if}">
							<div class="content">{$maincontent}</div>
						</div>
					</div>
					
				</div>
				<div class="span4">
					<div class="title gold"><h2>Новости</h2></div>
					<div class="news">{raMethod path="Fuga:Public:News:newsline"}</div>
					<div class="title gold"><h2>Хотите увидеть?</h2></div>
						<div class="video">
							{raMethod path="Fuga:Public:Common:block" args="['name':'video']"}
						</div>
				</div>
			</div>
			<div class="line grey"></div>
			<div class="row-fluid grey">
				<div class="span12">
					<div class="title-small deepgray">
						<div class="pad75">Страны-участницы Randstad Award</div>
					</div>
					<div class="country"><img src="{$theme_ref}/public/img/countries.png" /></div>
				</div>
			</div>
		</div>
		
		<script type="text/javascript" src="{$theme_ref}/jquery/jquery.js"></script>
		<script type="text/javascript" src="{$theme_ref}/bootstrap2/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="{$theme_ref}/public/js/public.js"></script>
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
