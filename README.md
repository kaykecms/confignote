# Config Note

Deixa um notebook com Kubuntu do jeito do dono: tema, painéis, conexões e programas.

Num terminal (Ctrl+Alt+T):

```sh
wget kaykecms.github.io/cn/ConfigNote.AppImage
```

Ele baixa pra pasta pessoal; é só dar dois cliques no `ConfigNote.AppImage` (o KDE libera a execução sozinho).
O mesmo link funciona no navegador.

Ou, pra baixar em `~/Aplicativos` e já abrir: `curl -L kaykecms.github.io/cn | sh`. Depois de aberto uma vez, ele
aparece no menu como **Config Note**.
Na primeira vez num notebook recém-formatado, ele pede a senha pra instalar o que falta pra abrir.

Aqui fica só o app pronto. O código é de outro repositório, privado.

O `index.html` é uma cópia do `baixar.sh`: é ele que o link curto entrega.
