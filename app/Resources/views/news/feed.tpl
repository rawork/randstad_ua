<h2><a name="news"></a>Новости</h2>
<dl class="news clearfix">
    {foreach from=$items item=news name=news}
        <dt{if $smarty.foreach.news.index>2} class="archive"{/if}>{$news.date|format_date}<span>|</span></dt>
        <dd{if $smarty.foreach.news.index>2} class="archive"{/if}><a href="#">{$news.name}</a>
            <div class="text">
                {$news.content}

                <span><a href="" ></a></span></div>
        </dd>
    {/foreach}
</dl>
<button class="btn-archive">Архив</button>