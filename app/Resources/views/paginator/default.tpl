<div class="pre-pagination">Записи {$currentItems} из {$totalItems}</div>
<ul class="pagination">
	{if isset($begin_link)}<li><a href="{$begin_link}">Начало</a></li>{/if}
	{if isset($prev_link)}<li><a href="{$prev_link}">&laquo;</a></li>{/if}
	{foreach from=$pages key=k item=i}
	<li{if $page == $i.name} class="active"{/if}><a href="{$i.ref}">{$i.name}</a></li>
	{/foreach}
	{if isset($next_link)}<li><a href="{$next_link}">&raquo;</a></li>{/if}
	{if isset($end_link)}<li><a href="{$end_link}">Конец</a></li>{/if}
</ul>
