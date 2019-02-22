<p>С основной аналитикой, содержащей результаты исследования в России можно ознакомиться здесь:</p>

<ul class="reports clearfix">
    {foreach from=$items item=report}
        <li>
            <a target="_blank" href="{$report.file_value}">
                {$report.name}
                <div>{$report.description}</div>
            </a>
        </li>
    {/foreach}
</ul>