<p>Самые привлекательные работодатели в своих отраслях:</p>
<div class="winner-other">
    {foreach from=$items item=winner}
    <div class="winner">
        <div class="title"><strong>{$winner.name}</strong>{$winner.industry}</div>
        <img class="ramka" src="{$winner.photo_value.value}">
        <div>
            <img class="prize" src="{$theme_ref}/public2018/img/prize2.png">
            <img class="certificate" src="{$winner.certificate_value.value}">
        </div>
    </div>
    {/foreach}
</div>