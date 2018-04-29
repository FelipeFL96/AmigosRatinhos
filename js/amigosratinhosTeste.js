$(document).ready( function(){
	carregaInicio();
	$('title').html("Versão de Teste! Sem BD")
});

function carregaInicio(){
	if(document.documentElement.clientWidth >= 700){
		$('.conteudo').css('width', '98%');
		$('.conteudo-texto').css('float', 'none');
	}
	$('.conteudo-video').hide();
	$('.conteudo-descricao').hide();
	$('.lista').empty();
	obterTexto('amigosratinhos');
	$('.conteudo-titulo').show();
	$('.conteudo-texto').show();
}

function ajustaTelaTexto(){
	if(document.documentElement.clientWidth >= 700){
		$('.conteudo').css('width', '70%');
		$('.conteudo-texto').css('float', 'right');
	}
	$('.botoes').hide();
	$('.conteudo-video').hide();
	$('.conteudo-descricao').hide();
	$('.conteudo-titulo').show();
	$('.conteudo-texto').show();
}

function obterTexto(categoria){
	var texto_cat = textos.filter(function (item){return item.categoria == categoria})[0];
	$('.conteudo-titulo').html(texto_cat.titulo);
	$('.conteudo-texto').html(texto_cat.texto);		
}

function carregaVideo(url){
	$('.conteudo-video').attr('src', 'https://www.youtube.com/embed/'+url);
}

function carregaViradas() {
	
	ajustaTelaTexto();
	obterTexto('viradas');
	
	var listaStr = '<ul>';
	listaStr += '<li class="lista-titulo"><a>Viradas</a></li>';
	$.each(viradas, function(indice, virada){
		listaStr += '<li class="lista-item"><a href="#" onclick="selecionaVirada('+virada.id+')">'+virada.nome+'</a></li>';					
	});
	listaStr += '<li class="lista-base"></li>';
	listaStr += '</ul>';

	$('.lista').html(listaStr);
	
}

function selecionaVirada(idVirada){	
	$('.conteudo-titulo').hide();
	$('.conteudo-texto').hide();
	
	
	var virada = viradas.filter(function(item){ return item.id == idVirada })[0];
	
	$('#descricao-nome').html(virada.nome);
	
	var descricaoStr = '<tr>';
	descricaoStr += '		<td><span class="descricao-item">Autoria: </span>'+formataStringEnumeracao(virada.autoria)+'</td>'		
	descricaoStr += '	</tr>'
	descricaoStr += '	<tr>'
	descricaoStr += '		<td><span class="descricao-item">Ano de criação: </span>'+virada.ano+'</td>'
	descricaoStr += '	</tr>'
	descricaoStr += '	<tr>'
	descricaoStr += '		<td><span class="descricao-item">Foi utilizado em: </span>'+formataStringEnumeracao(virada.utilizadoEm)+'</td>'
	descricaoStr += '	</tr>'		
	$('#descricao-informacoes').html(descricaoStr);
	
	$('.botoes-item.bateria').attr('onclick', 'carregaVideo(\''+virada.url+'\')');
	$('.botoes-item.caixa').attr('onclick', 'carregaVideo(\''+virada.urlCaixa+'\')');
	$('.botoes-item.repinique').attr('onclick', 'carregaVideo(\''+virada.urlRepinique+'\')');
	$('.botoes-item.surdo').attr('onclick', 'carregaVideo(\''+virada.urlSurdo+'\')');
	$('.botoes-item.agogo').attr('onclick', 'carregaVideo(\''+virada.urlAgogo+'\')');
	$('.botoes-item.tamborim').attr('onclick', 'carregaVideo(\''+virada.urlTamborim+'\')');
	$('.botoes-item.ganza').attr('onclick', 'carregaVideo(\''+virada.urlGanza+'\')');
		
	carregaVideo(virada.url);
		
	$('.botoes').show();	
	$('.conteudo-video').show();
	$('.conteudo-descricao').show();
	

}

function carregaRitmos() {
	
	ajustaTelaTexto();
	obterTexto('ritmos');
	
	var listaStr = '<ul>';
	listaStr += '<li class="lista-titulo"><a>Ritmos</a></li>';
	
	$.each(ritmos, function(indice, ritmo){
		listaStr += '<li class="lista-item"><a href="#" onclick="selecionaRitmo('+ritmo.id+')">'+ritmo.nome+'</a></li>';
	});
	listaStr += '<li class="lista-base"></li>';
	listaStr += '</ul>';
	
	$('.lista').html(listaStr);

}

function selecionaRitmo(idRitmo){	
	$('.conteudo-titulo').hide();
	$('.conteudo-texto').hide();
	
	var ritmo = ritmos.filter(function(item){ return item.id == idRitmo })[0];
		
	$('#descricao-nome').html(ritmo.nome);
	
	var descricaoStr = '<tr>';
	descricaoStr += '		<td class="descricao-item">Autoria:</td>'
	descricaoStr += '		<td id="descricao-autoria">'+formataStringEnumeracao(ritmo.autoria)+'</td>'
	descricaoStr += '	</tr>'
	descricaoStr += '	<tr>'
	descricaoStr += '		<td class="descricao-item">Ano de criação: </td>'
	descricaoStr += '		<td id="descricao-ano">'+ritmo.ano+'</td>'
	descricaoStr += '	</tr>'
	descricaoStr += '	<tr>'
	descricaoStr += '		<td class="descricao-item">Foi utilizado em: </td>'
	descricaoStr += '		<td id="descricao-utilizado-em">'+formataStringEnumeracao(ritmo.utilizadoEm)+'</td>'
	descricaoStr += '	</tr>'
	$('#descricao-informacoes').html(descricaoStr);
	
	$('.botao-item.bateria').attr('onclick', 'carregaVideo(\''+ritmo.url+'\')');
	$('.botao-item.caixa').attr('onclick', 'carregaVideo(\''+ritmo.urlCaixa+'\')');
	$('.botao-item.repinique').attr('onclick', 'carregaVideo(\''+ritmo.urlRepinique+'\')');
	$('.botao-item.surdo').attr('onclick', 'carregaVideo(\''+ritmo.urlSurdo+'\')');
	$('.botao-item.agogo').attr('onclick', 'carregaVideo(\''+ritmo.urlAgogo+'\')');
	$('.botao-item.tamborim').attr('onclick', 'carregaVideo(\''+ritmo.urlTamborim+'\')');
	$('.botao-item.ganza').attr('onclick', 'carregaVideo(\''+ritmo.urlGanza+'\')');
	
	carregaVideo(ritmo.url);
	
	$('.botoes').show();
	$('.conteudo-video').show();
	$('.conteudo-descricao').show();
}

function carregaMusicas() {

	ajustaTelaTexto();
	obterTexto('musicas');	
	
	var listaStr = '<ul>';
	listaStr += '<li class="lista-titulo"><a>Músicas</a></li>';
	$.each(musicas, function(i, musica){
		listaStr += '<li class="lista-item"><a href="#" onclick="selecionaMusica('+musica.id+')">'+musica.nome+'</a></li>';
	});
	listaStr += '<li class="lista-base"></li>';
	listaStr += '</ul>';
	
	$('.lista').html(listaStr);
}

function selecionaMusica(idMusica){	
	$('.conteudo-titulo').hide();
	$('.conteudo-texto').hide();
	
	var musica = musicas.filter(function(item){ return item.id == idMusica })[0];
	$('#descricao-nome').html(musica.nome);
	
	var descricaoStr = '<tr>';
	descricaoStr += '		<td><span class="descricao-item">Autoria : </span>'+musica.origemArranjo+'</td>'	
	descricaoStr += '	</tr>'
	descricaoStr += '	<tr>'
	descricaoStr += '		<td><span class="descricao-item">Ano de criação: </span>'+musica.ano+'</td>'
	descricaoStr += '	</tr>'
	descricaoStr += '	<tr>'
	descricaoStr += '		<td><span class="descricao-item">Apresentação do vídeo: </span>'+musica.apresentacao+'</td>'	
	descricaoStr += '	</tr>'
	$('#descricao-informacoes').html(descricaoStr);
	
	$('.conteudo-video').attr('src', 'https://www.youtube.com/embed/'+musica.url);
	
	$('.conteudo-video').show();
	$('.conteudo-descricao').show();
}

function carregaElementos() {

	ajustaTelaTexto();
	obterTexto('elementos');
	
	selecionaInstrumentoElemento();	
}

function selecionaInstrumentoElemento(categoria){
	var listaElem = '';
	
	if(categoria != null){
		var elementos_cat = elementos.filter(function (item){ return item.instrumento == categoria });
		if(elementos_cat != null){
			$.each(elementos_cat, function(i, elemento){
				listaElem += '<li class="lista-item"><a href="#" onclick="selecionaElemento('+elemento.id+')">'+elemento.nome+'</a></li>';
			});	
			montaListaElementos(categoria, listaElem);
		}
		
	}
	else{
		montaListaElementos(categoria, '');
	}
}

function montaListaElementos(categoria, listaElem){

	var listaStr = '<ul>';
	listaStr += '	<li class="lista-titulo"><a>Elementos</a></li>';
	listaStr += '		<li class="lista-subtitulo" onclick="selecionaInstrumentoElemento(\'caixa\')">Caixa</a></li>';
	if(categoria == 'caixa') listaStr += listaElem;
	listaStr += '		<li class="lista-subtitulo" onclick="selecionaInstrumentoElemento(\'repinique\')">Repinique</li>';
	if(categoria == 'repinique') listaStr += listaElem;
	listaStr += '		<li class="lista-subtitulo" onclick="selecionaInstrumentoElemento(\'surdo\')">Surdo</li>';
	if(categoria == 'surdo') listaStr += listaElem;
	listaStr += '		<li class="lista-subtitulo" onclick="selecionaInstrumentoElemento(\'agogo\')">Agogô</li>';
	if(categoria == 'agogo') listaStr += listaElem;
	listaStr += '		<li class="lista-subtitulo" onclick="selecionaInstrumentoElemento(\'tamborim\')">Tamborim</li>';
	if(categoria == 'tamborim') listaStr += listaElem;
	listaStr += '		<li class="lista-subtitulo" onclick="selecionaInstrumentoElemento(\'ganza\')">Ganzá</li>';
	if(categoria == 'ganza') listaStr += listaElem;
	listaStr += '	<li class="lista-base"></li>';
	listaStr += '</ul>';
	
	$('.lista').html(listaStr);
}

function selecionaElemento(idElemento){	
	$('.conteudo-titulo').hide();
	$('.conteudo-texto').hide();
	
	var elemento = elementos.filter(function (item) { return item.id == idElemento })[0];
	
	$('#descricao-nome').html(elemento.nome);
	
	var descricaoStr = '<tr>';
	descricaoStr += '		<td><span class="descricao-item">Instrumento : </span>'+elemento.instrumento+'</td>'		
	descricaoStr += '	</tr>'		
	$('#descricao-informacoes').html(descricaoStr);
	
	$('.conteudo-video').attr('src', 'https://www.youtube.com/embed/'+elemento.url);
	
	$('.conteudo-video').show();
	$('.conteudo-descricao').show();
}

function formataStringEnumeracao(texto){
	var autores = texto.split(',');
	var numAutores = autores.length;
	var autoriaStr = '';
	
	if(numAutores > 1){
		for(var i = 0; i < (numAutores - 2); i++){
			autoriaStr += autores[i] + ', ';
		}
		
		autoriaStr += autores[numAutores - 2] + ' e ';
	}
	autoriaStr += autores[numAutores - 1];
	
	return autoriaStr;
}