# GUIA DE PUBLICAÇÃO — Landing Page AC Estética e Podologia

Tudo o que você precisa para colocar a página no ar, trocar as imagens pelas suas reais e começar a receber clientes pelo WhatsApp.

---

## ⚡ PASSO 0 — CONFIGURAR AS IMAGENS (OBRIGATÓRIO ANTES DE TUDO)

1. Abra a pasta `landing page`
2. **Dê duplo clique em `setup-imagens.bat`**
3. Uma janelinha preta vai abrir e fechar automaticamente
4. Pronto! A pasta `images/` foi criada com todas as fotos do seu consultório

> **O que esse script faz:** copia automaticamente o logo, as fotos de antes/depois e a imagem de serviço da sua pasta `IMAGENS` para dentro da `landing page/images/`. É necessário para que as imagens apareçam na página.

> **Quer colocar sua foto pessoal na seção "Sobre a Ana Carla"?** Salve sua foto como `landing page/images/ana-carla.jpg` — ela vai aparecer automaticamente. Se não tiver, a página usa a imagem de atendimento como fallback.

---

## 1. O QUE JÁ ESTÁ PRONTO NO ARQUIVO `index.html`

✅ Estrutura completa com 11 seções estratégicas
✅ Headline emocional baseada na linguagem real das clientes
✅ Prova social com 6 depoimentos reais do Google + 5,0 ★ destacadas
✅ 4 cards de serviços (Podologia, Estética, Reconstrução, Família)
✅ Galeria de antes/depois (placeholders prontos para suas fotos)
✅ FAQ respondendo as objeções reais ("vai doer?", "quanto custa?")
✅ Mapa do Google integrado com seu endereço
✅ Botão flutuante de WhatsApp em todas as telas
✅ 6 CTAs estratégicos espalhados pela página (todos linkam pro seu WhatsApp)
✅ SEO local otimizado (Schema.org + meta tags)
✅ 100% responsiva (mobile-first — onde estão 80% dos seus clientes)
✅ Paleta da marca real: rosê dourado, blush, creme, verde-água

---

## 2. TROCAR OS PLACEHOLDERS PELAS IMAGENS REAIS

A página foi construída com placeholders elegantes — agora é só substituir pelas suas fotos do Instagram. Você tem duas opções:

### OPÇÃO RÁPIDA (recomendada para começar hoje)

1. Salve as fotos do seu Instagram no celular ou computador (use o WhatsApp Web pra puxar):
   - **Foto da Ana Carla** → do post https://www.instagram.com/p/DHq9tdFObNk/
   - **Antes/depois — micose** → do post https://www.instagram.com/p/CvZ9MVxOapf/
   - **Antes/depois — unha encravada** → do post https://www.instagram.com/p/DQKstrGCk4Y/
   - **Antes/depois — calosidade** → do post https://www.instagram.com/p/DHpGft1uojD/
   - **Antes/depois — reconstrução** → do post https://www.instagram.com/p/DOegk_Skef3/

2. Renomeie os arquivos para nomes simples sem espaços:
   - `ana-carla.jpg`
   - `antes-depois-1.jpg`
   - `antes-depois-2.jpg`
   - `antes-depois-3.jpg`
   - `antes-depois-4.jpg`

3. Coloque essas imagens na mesma pasta do `index.html`.

4. Abra o `index.html` em qualquer editor de texto (Bloco de Notas serve) e:
   - Procure por `📸 Substituir por foto da Ana Carla` e substitua o `div` da foto por:
     ```html
     <img src="ana-carla.jpg" alt="Ana Carla, podóloga em Avaré" style="width:100%;height:100%;object-fit:cover;border-radius:24px">
     ```
   - Nos cards de antes/depois, substitua cada par de `<div class="result-half before">` e `<div class="result-half after">` por:
     ```html
     <img src="antes-depois-1.jpg" alt="Antes e depois do tratamento" style="width:100%;aspect-ratio:2/1;object-fit:cover">
     ```
     (e mude o número conforme o card)

### OPÇÃO PRO (com ajuda do Claude)

Volte aqui, me envie as fotos como anexo e eu já te entrego o `index.html` com tudo encaixado. É só dizer: "Ana Carla, aqui estão as fotos — encaixa pra mim".

---

## 3. COLOCAR A PÁGINA NO AR (GRÁTIS, em 5 minutos)

### Opção A — VERCEL (mais simples, recomendada)

1. Acesse https://vercel.com e clique em **Sign Up** com sua conta do Google.
2. Clique em **Add New → Project → Continue with empty project**.
3. Arraste a pasta com seu `index.html` (e as imagens) para a área indicada.
4. Em segundos, você recebe um link tipo `acestetica.vercel.app` — já no ar.
5. Para link mais bonito, vá em **Domains** e troque o subdomínio (ex: `ana-podologa-avare.vercel.app`).

### Opção B — NETLIFY DROP (mais rápido ainda, sem cadastro)

1. Acesse https://app.netlify.com/drop
2. Arraste a pasta com `index.html` para a tela.
3. Pronto. Você recebe um link tipo `clever-cuddle-12345.netlify.app`.
4. Pode mudar o nome do subdomínio na seção **Site settings**.

### Opção C — DOMÍNIO PRÓPRIO (`acesteticaepodologia.com.br`)

Quando quiser um endereço com a sua cara:
1. Registre o domínio no **Registro.br** (R$ 40/ano).
2. Na Vercel ou Netlify, vá em **Domains → Add Custom Domain**.
3. Cole o domínio que você comprou e siga as instruções de DNS (são 2 cliques).

---

## 4. CONECTAR A LANDING PAGE AOS SEUS PERFIS

Depois que a página estiver no ar com um link próprio, faça isso aqui:

### No Instagram (@ac.estetica.podologa)
- Vá em **Editar perfil → Site** e cole o link da nova landing page no lugar do link do WhatsApp atual.
- A landing page já leva pro WhatsApp em todos os botões — então você não perde nada e ainda ganha tudo o que ela traz (prova social, autoridade, agendamento mais inteligente).

### No Google Meus Negócios
- Acesse https://business.google.com
- Vá em **Editar perfil → Site** e cole o link da sua landing page (hoje aponta pro Instagram, vai apontar pro seu site).
- Isso melhora absurdamente seu SEO local — você vai aparecer melhor quando alguém buscar "podóloga Avaré".

### No Facebook
- Edite a página A C Estética & Podóloga e cole o link no campo de **Site**.

---

## 5. COMO MEDIR SE ESTÁ FUNCIONANDO

A landing page já tem o botão de WhatsApp configurado com uma **mensagem pré-pronta**:
> "Olá Ana Carla! Vi o site e quero agendar um horário."

Sempre que alguém te mandar essa mensagem (ou variações sobre serviços específicos), você sabe que veio da landing page.

**Dica de ouro:** Crie uma planilha simples para anotar:
- Quantas mensagens chegaram via "Vi o site"
- Quantas viraram agendamento
- Qual o serviço mais pedido

Em 30 dias você tem dados reais pra entender se a página está convertendo.

---

## 6. PRÓXIMOS PASSOS RECOMENDADOS

Depois que a página estiver no ar, esses são os movimentos que multiplicam o resultado:

1. **Pedir review novo no Google** depois de cada atendimento (você está em 111 — chegar em 150 com 5,0 é diferencial absurdo).
2. **Anunciar no Instagram** que agora você tem site — post no feed + story com call to action.
3. **Imprimir QR code** do site para distribuir em parceiros (farmácias, clínicas de fisioterapia, sapatarias).
4. **Investimento pequeno em Google Ads local** (R$ 5-10/dia) buscando "podóloga Avaré" — vai trazer cliente quente.

---

## 7. PRECISA DE AJUDA?

Volte aqui e me chame para:
- Encaixar as fotos no código
- Criar variações da landing page (versão black friday, versão dia das mães, etc.)
- Montar campanhas no Instagram que apontem pra landing
- Escrever mensagens prontas pro WhatsApp de pré-atendimento e pós-atendimento
- Gerar QR code do site para divulgação física

Estou aqui pra fazer essa landing page virar máquina de agendamento real.
