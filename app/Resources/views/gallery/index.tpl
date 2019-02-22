{if (count($items) > 0)}
<p>&nbsp;</p>
<p>Если вы хотите получить фото, которое вам понравилось, в высоком разрешении, пришлите название файла на электронный адрес <a href="award@ancor.ru">award@ancor.ru</a>.</p>
{foreach from=$items item=item}
<br/><br/>
<h4>{$item.name}</h4>
     {if $item.description}<p>{$item.description}</p>{/if}
<div class="fotorama"
     data-auto="true"
     id="slideshow{$item.id}"
     data-width="100%"
     data-ratio="900/600"
     data-nav="thumbs"
     data-thumbwidth="100"
     data-thumbheight="75"
     data-allowfullscreen="true"
     data-autoplaybutton="true"
     data-stopautoplayontouch="false"
     data-keyboard="true"
     data-transition="crossfade"
{if $is_iphone} data-arrows="false"{/if}
data-click="true"
data-swipe="true"
data-trackpad="true"
data-loop="true"
data-fit="contain"
>
{foreach from=$item.fotos item=foto}
<a href="{$foto.foto_medium}" data-full="{$foto.foto_big}" data-caption="{$foto.name}" data-thumb="{$foto.foto_small}"></a>
{/foreach}
</div>
<a href="{$item.fotos[0].foto_big}" id="download{$item.id}" target="_blank">Скачать текущее фото</a>
{/foreach}
{/if}