#!/bin/bash
# nc -e $PWD/servidor_web_bash.sh -p 8080 -l

LINE='1'
while [ "$LINE" != "$(echo -e '\r\n')" ];do
	read LINE
	echo "$LINE" >&2
done

# A pagina que ele responderá está aqui:
echo 'HTTP/1.0 200 OK
Connection: close
Content-Type: text/html; charset=utf-8

<html>
    <head>
        <meta charset="utf-8" />
    </head>

    <body align="center">
        <h2>Aula de Programação!</h2>
        <br>
        <p>Criando um servidor de páginas com Bash Script.</p>
    </body>

</html>'
