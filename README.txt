Para rodar o projeto, siga as instruções.
1) Baixe todas as dependencias do aplicativo.
2) Baixe todas as dependências da API em php, através do composer;
3) Roda a API localmente, preferencialmente utilizando XAMPP;
*Configuração do Aplicativo*
Antes de executar o app, faça as seguintes mudanças:
em 'lib->models->product.dart' substitua a linha onde está definido a URL da API:

	Troque:
		var url = Uri.http('dieiverson.ddns.net','/ecommerce/Produtos');
	Por:
		var url = Uri.http({IP},'/ecommerce/Produtos');