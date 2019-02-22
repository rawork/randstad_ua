{foreach from=$items item=news name=news}
	<div class="news-item"><span class="date">{$news.created|format_date:'d.m.Y'}</span> {$news.name}</div>
{/foreach}