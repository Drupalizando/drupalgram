# Módulo 9 — Tematização: O Visual do Instagram

## O que foi construído

- Tema `drupalgram` criado do zero com:
  - `drupalgram.info.yml`, `drupalgram.libraries.yml`
  - Regiões: `header`, `main`, `sidebar`, `footer`
  - `page.html.twig` — layout geral
  - `node--photo-post--teaser.html.twig` — card do feed
  - `node--photo-post.html.twig` — página do post
  - `user.html.twig` — página de perfil
- CSS Grid 3 colunas (desktop) / 1 coluna (mobile)
- Navbar com logo, barra de busca (placeholder), ícones
- Paleta inspirada no Instagram (branco, preto, gradiente)

## Conceitos Drupal introduzidos

- Twig variables: `{{ content }}`, `{{ node }}`, `{{ user }}`
- Libraries e asset attachment
- Theme hooks e suggestions
- `hook_theme_suggestions_alter()`

## Exercício

Estilize o teaser do Photo Post para corresponder ao screenshot fornecido no curso.

## Próximo módulo

```bash
git checkout modulo-10
```

👉 [Acessar Drupalgram no Hotmart](https://hotmart.com/product/drupalgram)
