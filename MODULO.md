# Módulo 12 — Deploy: Colocando no Ar

## O que foi construído

- Site Drupagram deployado em servidor real (DigitalOcean Droplet / Ubuntu 22.04)
- LAMP stack configurado: Nginx, PHP 8.3, MariaDB
- Arquivos sincronizados via rsync, banco importado via `drush sql-dump`
- SSL configurado com Let's Encrypt (Certbot)
- Config importada em produção (`drush cim -y`)
- Checklist de produção completo: error logging off, caching on

## Conceitos Drupal introduzidos

- Production vs. development settings
- Trusted host patterns
- File system permissions

## Exercício

Deploy do seu Drupagram em uma URL pública — compartilhe no grupo do curso.

## Próximo módulo

```bash
git checkout modulo-bonus
```

👉 [Acessar Drupagram no Hotmart](https://hotmart.com/product/drupagram)
