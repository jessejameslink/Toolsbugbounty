# Toolsbugbounty
Repositorio com ferramentas para Bugbounty

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
