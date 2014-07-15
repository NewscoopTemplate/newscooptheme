<div class="col-md-2 col3">
	<div class="blog">
		<table>
			<tr>
				<th>
					NUESTROS BLOGS
				</th>
			</tr>
			{{ list_articles constraints="type is enlace" }}
				{{ list_playlist_articles name="Blog" }}
					{{ if $gimme->current_list->at_end }}					
						<tr class="ultimo">
							<td>
								{{ $gimme->article->titulo }}
							</td>
						</tr>
					{{ else }}
						<tr>
							<td>
								{{ $gimme->article->titulo }}
							</td>
						</tr>
					{{ /if }}
				{{ /list_playlist_articles }}
			{{ /list_articles }}			
		</table>
	</div>
<!--
	{{ list_playlist_articles name="PortadaCol3Banner" }}
		<a href="{{ $gimme -> article -> enlace }}" target="_blank" >
		<img src="{{url options="image 1"}}" alt="{{$gimme->article->image1->description}}" />
		</a>
	{{ /list_playlist_articles }}
-->
	<div class="banner">

	</div><br>

	<div class="banner">

	</div><br>

	<div class="blog_menu">
		<table>
			<tr>
				<th>
					LA CIUDAD CERCA DE TI
				</th>
			</tr>
			{{ list_articles constraints="type is enlace" }}
				{{ list_playlist_articles name="Interes" }}
					{{ if $gimme->current_list->at_end }}					
						<tr class="ultimo">
							<td>
								{{ $gimme->article->titulo }}
							</td>
						</tr>
					{{ else }}
						<tr>
							<td>
								{{ $gimme->article->titulo }}
							</td>
						</tr>
					{{ /if }}
				{{ /list_playlist_articles }}
			{{ /list_articles }}			
		</table>
	</div>
</div>
