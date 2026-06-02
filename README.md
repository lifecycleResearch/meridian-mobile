# Meridian Mobile — PWA

Single-file mobile PWA built with the `mobile-slide-module` design system. Splash → Home → Detail screens with CSS slide transitions.

## Run locally

```bash
cd meridian-mobile
python3 -m http.server 8090
# Open http://localhost:8090
```

## Files

- `index.html` — full app, single file, no build
- `manifest.webmanifest` — PWA manifest
- `sw.js` — service worker (offline shell)
- `icon.svg` — brand mark

## Deploy

Drop into any static host. Already deployed at: **https://meridian-mobile.fly.dev**

## Design system

Saved as a Hermes skill: `mobile-slide-module` (in `~/.hermes/skills/creative/`)

Key tokens:
- Navy `#0f1729` → blue `#1e6fb8` gradient background
- White phone frame, soft shadow
- Inter (UI) + Playfair Display italic (wordmark)
- 18px card radius, 999px pill chips
- 4-icon bottom tab bar

## What works

- 3 screens: Splash → Home → Detail (slide transition)
- Filter chips, search input
- 5 mock moments + 2 recommended
- Bookmark with heart-fill animation
- "Get Started" CTA on detail screen
- Tab bar stubs (Home active, others show toast)
- PWA install to home screen

## What's not wired (yet)

- Real auth (no login)
- Real lead capture (the splash is mockup, no backend)
- Real Stripe (no checkout — CTA just shows a toast)

The PWA is a **design prototype** matching the travel-app mockup you sent. To make it a real product, wire it to a backend (Supabase or a Node/Express API) and add Stripe checkout.
