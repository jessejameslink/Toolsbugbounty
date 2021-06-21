# Toolsbugbounty
Repositorio com ferramentas para Bugbounty

# Apimapssearch

Agradecimentos
https://github.com/ozguralp/gmapsapiscanner


Apimapssearch é uma tool para procurar api do google maps usando subdominios.
A ferramenta funciona da seguinte forma ela verifica os subdominios depois as urls dele e ve se tem a api na pagina usando regex depois manda para outra tool que valida se a api é paga ou free.
*Pode ocorrer falsos positivos.
# Uso:
De permissão de execução no arquivo Apimapssearch usando chmod +x Apimapssearch
Depois é so usar dessa forma:

É necessario que a wordlist esteja no mesmo diretorio do script.

Exemplo de uso:

Apimapssearch dominio

Com isso ele ira verificar os dominios e se tem na pagina a api.

Obs: Pode haver falsos positivos.

# Mirrorxss
Mirrorxss é uma tool para procurar XSS usando uma wordlist.
A ferramenta funciona da seguinte forma ela verifica se a payload refletiu na url e se refletiu ela diz que é vulneravel ou não e no final cria dois arquivos um contendo as urls que deram positivo para payload refletida e outra as que não deram.
*Pode ocorrer falsos positivos.
# Uso:
De permissão de execução no arquivo Mirrorsxss.sh usando chmod +x Mirrorxss.sh.
Depois é so usar dessa forma:

É necessario que a wordlist esteja no mesmo diretorio do script.

Exemplo de uso:

Mirrorxss.sh https://url/?parametro= wordkauexss

Com isso vai ser injetado em cada requisição uma payload ao final da execução a saida tera dois arquivos um com as urls vulneraveis e outra com as que não refletiram as payloads.

Obs: Pode haver falsos positivos.
