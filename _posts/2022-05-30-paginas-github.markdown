---
layout: post
title:  Páginas dos alunos no GitHub
date:   2022-05-25 18:00:00 -0300
---

<ul>
{% for page in site.data.paginas %}
    <li>
    Matrícula {{page.matricula}}: <a href='{{page.pagina}}'>{{page.nome}}</a>
    </li>
{% endfor %}
</ul>

