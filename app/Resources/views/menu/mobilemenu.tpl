<div id="mobile-menu">
    <div class="links">
        <a href="mailto:award@ancor.ru" class="btn-contact" title="Связаться с нами"><span class="icon-envelope"></span></a>
        {*<a target="_blank" href="/guests" class="btn-register" title="Станьте гостем церемонии"><span class="icon-register"></span></a>*}
    </div>
    <ul class="mobile-partners">
        <li><a target="_blank" href="https://ancor.ru">Холдинг АНКОР</a></li>
        <li><a target="_blank" href="http://www.randstad.com/">Холдинг Randstad</a></li>
        <li><a target="_blank" href="http://www.randstad.com/randstad-award/">Randstad Award worldwide</a></li>
    </ul>
    <ul class="mobile-mainmenu">
        {foreach item=menuitem from=$links}
            {if count($menuitem.children)}
                <li>
                    <a href="#">
                        {$menuitem.title} <span class="caret"></span>
                    </a>
                    <ul>
                        {foreach item=child from=$menuitem.children}
                            <li><a target="_blank" href="{$child.ref}">{$child.title}</a></li>
                        {/foreach}
                    </ul>
                </li>
            {else}
                <li><a href="{if $menuitem.url}{$menuitem.url}{else}/#{$menuitem.name}{/if}">{$menuitem.title}</a></li>
            {/if}
        {/foreach}
    </ul>
</div>