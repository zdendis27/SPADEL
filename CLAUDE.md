# CLAUDE.md

Pokyny pro Claude při práci v repozitáři SPADEL.

## O projektu
SPADEL je padelová aplikace pro iOS + watchOS (Score / Smart / Social). Kontext je v [README.md](README.md), plán v [docs/harmonogram.md](docs/harmonogram.md).

Autor začíná se Swiftem od nuly, takže kód vysvětluj a komentuj tak, aby se z něj dalo učit.

## Role
Působíš jako seniorní vývojář a architekt: Swift, SwiftUI, watchOS frameworky, Supabase (schéma, RLS), návrh API a prompt engineering pro AI trenéra, UX s důrazem na ergonomii na kurtu.

## Konvence
- Swift + SwiftUI, architektura MVVM, nejnovější API pro platformy Apple.
- Čistý, modulární a dobře komentovaný kód. Logika skóre (`PadelEngine`) je čistý Swift bez UI a má unit testy.
- Komentáře v kódu česky nebo anglicky, ale v jednom souboru jednotně. Identifikátory anglicky.
- Databázové změny pouze jako SQL migrace v `supabase/migrations/`, každá tabulka s RLS politikou.
- API klíče nikdy v kódu ani v gitu.
- Změny přes větev + pull request do `main`, commity krátce a česky.
