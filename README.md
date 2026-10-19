# SPADEL 🎾

> **„Strava potkává Playtomic s integrovaným AI trenérem."**

SPADEL je mobilní aplikace pro **iPhone a Apple Watch** pro amatérské i pokročilé hráče padelu. Body se zadávají přímo na kurtu z hodinek jedním klepnutím, AI z průběhu zápasu udělá rozbor a aplikace sama vede Head-to-Head bilance a klubové žebříčky. Místo WhatsApp skupin a Excelu.

Školní technický projekt 2026 · autor: Zdeněk Vacek

---

## Tři pilíře

| Pilíř | Co dělá |
|---|---|
| **Score** | Rychlé offline zadávání bodů na Apple Watch, plná podpora padelových pravidel (gemy, sety, Golden Point, tiebreak, undo). |
| **Smart** | AI rozbor zápasu (příběh zápasu, zlomové momenty, trenérská zpětná vazba), dashboardy a historie výkonu. |
| **Social** | Přátelé, Head-to-Head bilance, klubové žebříčky (Elo) a komunitní feed. |

## Technologie

- **Platforma:** iOS + watchOS, Swift, SwiftUI, architektura MVVM
- **Hodinky:** SwiftData (offline), HealthKit workout session, Always-On
- **Synchronizace:** WatchConnectivity (hodinky → iPhone)
- **Backend:** Supabase (PostgreSQL, Sign in with Apple, RLS, Realtime, Edge Functions)
- **AI:** LLM API (Claude / OpenAI) volané přes Supabase Edge Function
- **Grafy:** Swift Charts
- **Monetizace:** Freemium (Basic zdarma, SPADEL Pro předplatné přes StoreKit 2)

## Struktura repozitáře

```
App/                  Xcode projekt (iOS + watchOS target)
supabase/
  migrations/         SQL migrace (tabulky, RLS politiky)
  functions/          Edge Functions (AI trenér)
docs/
  harmonogram.md      Časový plán 2. 11. 2026 – 28. 2. 2027
  lean-canvas.md      Lean Canvas (text)
  lean-canvas.xlsx    Lean Canvas (originál)
.github/              Šablony issues a pull requestů
CLAUDE.md             Pokyny pro Claude při práci v repozitáři
```

## Jak s repozitářem pracujeme

1. **Úkoly = Issues.** Každý úkol z harmonogramu má issue se štítkem pilíře (`score`, `smart`, `social`, `backend`, …) a milníkem M1–M6.
2. **Větve:** `main` je vždy funkční. Na každou práci nová větev, např. `feature/padel-engine`, `fix/golden-point`.
3. **Pull requesty:** změny jdou do `main` přes PR podle šablony. Commity píšeme krátce a srozumitelně (např. `Score: přidán tiebreak do PadelEngine`).
4. **Tajné klíče** (Supabase, LLM API) nikdy do gitu. Patří do `Secrets.xcconfig` nebo `.env`, které jsou v `.gitignore`.

## Milníky

| | Milník | Termín |
|---|---|---|
| M1 | Návrh hotový (wireframy, ER diagram) | 15. 11. 2026 |
| M2 | watchOS aplikace funguje na kurtu | 20. 12. 2026 |
| M3 | Data v cloudu (sync přes iPhone do Supabase) | 10. 1. 2027 |
| M4 | AI rozbor zápasu | 24. 1. 2027 |
| M5 | Feature freeze | 7. 2. 2027 |
| M6 | První verze 1.0 | 28. 2. 2027 |

Podrobně v [docs/harmonogram.md](docs/harmonogram.md).
