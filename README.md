# Config Note

Deixa um notebook com Kubuntu do jeito do dono: tema, painéis, conexões e programas.

Num terminal (Ctrl+Alt+T):

```sh
wget kaykecms.github.io/confignote
```

Ele baixa o arquivo `confignote` pra pasta pessoal. É só dar dois cliques nele: o KDE reconhece que é um AppImage
e libera a execução sozinho.

No navegador, use `kaykecms.github.io/confignote/ConfigNote.AppImage` (o link curto, aberto no navegador, mostra o
arquivo como texto em vez de baixar).

Pra baixar em `~/Aplicativos` e já abrir: `curl -L kaykecms.github.io/confignote/baixar.sh | sh`. Depois de aberto uma
vez, ele aparece no menu como **Config Note**.

O `index.html` é o próprio AppImage: é o que o link curto entrega. O código fica em outro repositório, privado.
