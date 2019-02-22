{foreach from=$items item=winner}
<div class="winner-main clearfix">
    <div class="goblet"><img src="{$theme_ref}/public2016/img/goblet.png"></div>
    <div class="winner">
        <div class="title"><strong>{$winner.name}</strong><span>{$winner.nomination}</span></div>
        <ul class="photo clearfix">
            <li class="certificate">
                <div class="goblet-xs"><img src="{$theme_ref}/public2016/img/goblet.png"></div>
                <img class="ramka" src="{$winner.certificate_value.value}">
            </li>
            <li><img class="ramka" src="{$winner.photo_value.value}"></li>
        </ul>
    </div>
</div>
{/foreach}