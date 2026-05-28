# Instalação de Tracking — AC Estética e Podologia

**Site:** https://www.acesteticaepodologia.com.br  
**Arquivo único:** `index.html` (HTML estático, sem framework)

---

## O que foi instalado

### Google Tag Manager — GTM-MSNH2P9F ✅

Inserido diretamente no `index.html` (único arquivo do site).

| Snippet | Posição | Linhas |
|---------|---------|--------|
| Script JS | Primeira linha dentro de `<head>` | 4–10 |
| Noscript `<iframe>` | Primeira linha dentro de `<body>` | 654–657 |

O GTM está ativo e carregando em todas as visitas. Para verificar: abra o site, inspecione o código-fonte e confirme que `GTM-MSNH2P9F` aparece nas linhas 4 e 655.

---

### Classe `botao-whatsapp` — 18 links ✅

Adicionada em todos os links de WhatsApp para permitir rastreamento via GTM.  
**Nenhum link foi alterado** — apenas a classe foi adicionada. Os `href` com `wa.me` foram preservados integralmente.

| # | Linha | Classe(s) antes | Classe(s) depois | Contexto |
|---|-------|-----------------|------------------|----------|
| 1 | 669 | `nav-cta` | `nav-cta botao-whatsapp` | Botão "Agendar" no menu de navegação |
| 2 | 685 | `btn-primary` | `btn-primary botao-whatsapp` | CTA principal da hero ("Estou com dor...") |
| 3 | 689 | `btn-secondary` | `btn-secondary botao-whatsapp` | CTA secundário da hero ("Tirar uma dúvida") |
| 4 | 792 | *(sem classe)* | `botao-whatsapp` | CTA seção dores/unhas encravadas |
| 5 | 863 | `service-cta` | `service-cta botao-whatsapp` | Card Unha Encravada |
| 6 | 878 | `service-cta` | `service-cta botao-whatsapp` | Card Podologia Clínica |
| 7 | 892 | `service-cta` | `service-cta botao-whatsapp` | Card Órtese & Correção |
| 8 | 906 | `service-cta` | `service-cta botao-whatsapp` | Card Pés Diabéticos e Idosos |
| 9 | 920 | `service-cta` | `service-cta botao-whatsapp` | Card Podologia Infantil |
| 10 | 934 | `service-cta` | `service-cta botao-whatsapp` | Card Estética Saudável das Unhas |
| 11 | 993 | *(sem classe)* | `botao-whatsapp` | CTA seção Antes & Depois |
| 12 | 1192 | *(sem classe)* | `botao-whatsapp` | CTA seção FAQ ("Sua dúvida não está aqui?") |
| 13 | 1222 | *(sem classe)* | `botao-whatsapp` | Link de contato no bloco de localização |
| 14 | 1242 | `btn-primary reveal` | `btn-primary reveal botao-whatsapp` | CTA final da página |
| 15 | 1263 | *(sem classe)* | `botao-whatsapp` | Ícone SVG WhatsApp no rodapé |
| 16 | 1282 | *(sem classe)* | `botao-whatsapp` | Número "(14) 99636-3864" no rodapé |
| 17 | 1299 | `float-wa` | `float-wa botao-whatsapp` | **Botão flutuante** (canto inferior direito) |
| 18 | 1305 | *(sem classe)* | `botao-whatsapp` | Barra sticky mobile ("Chamar no WhatsApp") |

---

### Schema.org JSON-LD ✅ (já existia)

Bloco completo já presente no `<head>` (linhas 42–73). Dados confirmados:

- **Tipo:** `HealthAndBeautyBusiness`
- **Nome:** AC Estética e Podologia
- **Endereço:** R. Álvaro Lemos Tôrres, 665 — Avaré/SP, CEP 18703-060
- **Telefone:** +5514996363864
- **E-mail:** ac.estetica.podologa@gmail.com
- **Horário:** Seg–Sex 08h–18h, Sáb 08h–13h
- **Avaliação:** 5,0 (111 reviews)
- **Coordenadas:** -23.0975, -48.9268

---

## O que ainda falta fazer (dentro do GTM)

**Pixel ID: `1496068898650901`**  
**Contêiner GTM: `GTM-MSNH2P9F`** — acesse em tagmanager.google.com

---

### Passo 1 — Criar o Acionador "Clique WhatsApp"

`Acionadores → Novo`

| Campo | Valor |
|-------|-------|
| Nome | Clique WhatsApp |
| Tipo | Clique — Apenas Links |
| Ativar em | Alguns cliques de link |
| Condição | `Click Classes` **contém** `botao-whatsapp` |

---

### Passo 2 — Criar a Tag "Meta Pixel — PageView"

`Tags → Nova → HTML Personalizado`

| Campo | Valor |
|-------|-------|
| Nome | Meta Pixel — PageView |
| Acionador | All Pages |

Código a colar:
```html
<script>
!function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}
(window,document,'script','https://connect.facebook.net/en_US/fbevents.js');
fbq('init', '1496068898650901');
fbq('track', 'PageView');
</script>
<noscript>
<img height="1" width="1" style="display:none"
src="https://www.facebook.com/tr?id=1496068898650901&ev=PageView&noscript=1"/>
</noscript>
```

---

### Passo 3 — Criar a Tag "Meta Pixel — Clique WhatsApp"

`Tags → Nova → HTML Personalizado`

| Campo | Valor |
|-------|-------|
| Nome | Meta Pixel — Clique WhatsApp |
| Acionador | **Clique WhatsApp** (criado no Passo 1) |

Código a colar:
```html
<script>fbq('track', 'Contact');</script>
```

---

### Passo 4 — Publicar o contêiner

`Enviar → Publicar → Confirmar`

Dê um nome para a versão, ex: *"Pixel 1496068898650901 + rastreamento WhatsApp"*.

### 2. Publicar o contêiner

Após criar as tags e acionadores, clique em **Enviar** → **Publicar** no GTM.

---

## Como testar

1. **GTM Preview:** no GTM, clique em "Visualizar" e acesse o site — o painel mostra quais tags dispararam.
2. **Meta Pixel Helper:** extensão do Chrome que mostra se o Pixel está ativo e quais eventos dispararam.
3. **Console do navegador:** abra o DevTools → Console e digite `dataLayer` — deve retornar um array com o evento `gtm.js`.
4. **Clique rastreado:** clique em qualquer botão de WhatsApp com o GTM em modo Preview → o acionador "Clique WhatsApp" deve aparecer como disparado.

---

## Troca futura dos links (quando o ac-tracking estiver em produção)

Quando o sistema de tracking próprio (`ac-tracking`) estiver no ar, os `href` dos botões serão trocados de `wa.me/...` para os slugs rastreáveis:

| Botão | Slug sugerido |
|-------|---------------|
| Menu navegação (#1) | `/link/site-nav` |
| Hero principal (#2) | `/link/site-hero` |
| Hero secundário (#3) | `/link/site-duvida` |
| Cards de serviço (#5–#10) | `/link/site-servico` |
| Botão flutuante (#17) | `/link/site-flutuante` |
| Barra mobile (#18) | `/link/site-mobile` |

Os demais podem usar `/link/site-geral`.

---

*Última atualização: 2026-05-27*
