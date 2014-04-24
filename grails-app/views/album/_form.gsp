<%@ page import="com.gTunes.domain.Album" %>



<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'songs', 'error')} ">
	<label for="songs">
		<g:message code="album.songs.label" default="Songs" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${albumInstance?.songs?}" var="s">
    <li><g:link controller="song" action="show" id="${s.id}">${s?.title}</g:link></li>
</g:each>
<li class="add">
<g:link controller="song" action="create" params="['album.id': albumInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'song.label', default: 'Song')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'store', 'error')} required">
	<label for="store">
		<g:message code="album.store.label" default="Store" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="store" name="store.id" optionValue="name" from="${com.gTunes.domain.Store.list()}" optionKey="id" required="" value="${albumInstance?.store?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: albumInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="album.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${albumInstance?.title}"/>
</div>

