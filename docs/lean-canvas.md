# SPADEL – Lean Canvas

Textový přepis z [lean-canvas.xlsx](lean-canvas.xlsx).

## 1/ Problém

• Chybějící přehled o stavu zápasu: Hráči na kurtu ztrácejí přehled o bodech a gemech; odbíhání k telefonu zdržuje hru.
• Nedostatek analytických dat: Chybí nástroj pro sledování úspěšnosti podání, breakbolů a dlouhodobého růstu výkonu.
• Slabá komunitní rivalita: Absence centrální platformy pro sledování vzájemné bilance (Head-to-Head) a žebříčků s přáteli.

## 4/ Řešení

• watchOS App: Offline nahrávání bodů na kurtu
• iOS App: Bezšvová synchronizace přes WatchConnectivity, grafické dashboardy a historie.
• AI Engine: Automatické generování příběhu zápasu a statistik pomocí LLM API (OpenAI/Claude).

## 3/ Unikátní hodnota

• Smart: Osobní AI trenér, který z dat zápasu vygeneruje textový rozbor výkonu a klíčových momentů.
• Score: Bleskové nahrávání bodů z Apple Watch 1 klepnutím s plnou podporou padelových pravidel (Golden Point).
• Social: Propojení komunity skrze Head-to-Head bilance, klubové žebříčky a sdílený feed.

## 5/ Neférová výhoda

• Úzká specializace na padelový sport a jeho komunitní specifika (čtyřhry, Golden Point).
• Špičková ergonomie v nativním Apple ekosystému (iOS + watchOS).
• Urcčeno převážně pro CZ oblast.

## 2/ Zákazníci

1. Aktivní amatérští padeloví hráči: Hrají 1–3x týdně, používají Apple Watch/iPhone, chtějí sledovat pokrok.
2. Technologičtí nadšenci: Sportovci, kteří vyžadují podrobná data, měření výkonu a AI zpětnou vazbu.
3. Padelové kluby & Komunity: Hledají nástroj pro organizaci amatérských žebříčků a lig.

## 8/ KPI

• Aktivita uživatelů: Počet týdně zaznamenaných zápasů na Apple Watch (DAU/MAU).
• Retention Rate: Podíl hráčů, kteří aplikaci používají opakovaně (min. 2x týdně).
• AI Engagement: Počet vygenerovaných a sdílených AI rozborů v komunitním feedu.
• Konverze do Pro: Procento platících uživatelů prémiového předplatného.

## 9/ Distribuční cesty

• Organický App Store (ASO): Vyhledávání klíčových slov "Padel", "Padel Score", "Padel Watch".
• B2B2C Partnerství s kluby: Plakáty s QR kódy na recepčních pultech a kurtech.
• Komunitní viralita: Sdílení AI výsledků a zápasových příběhů na sociální sítě a Stravu.
• Ambasadoři: Zapojení lokálních padelových trenérů a známých hráčů.

## Existující alternativy

• Pamatování skóre v hlavě nebo papírový zápis na kurtu.
• Univerzální sportovní aplikace (Apple Workouts, Garmin) – chybí padelová pravidla a AI analýza.
• WhatsApp / Excel skupiny pro organizaci a zápis výsledků.

## Srozumitelný opis

"Strava + AI trenér pro padel" — Bleskové nahrávání skóre na Apple Watch s automatickým AI rozborem a komunitním žebříčkem.

## První vlaštovky

• Členové lokálních českých padelových klubů (Praha, Brno) a přátelé ze sportovní komunity s Apple Watch.

## 7/ Struktura nákladů

• Vývoj & Licenciování: Apple Developer Program (99 $/rok).
• Backend Cloud: Supabase (Postgres DB, Authentication & Realtime data) – freemium / pay-as-you-grow.
• AI API Provoz: Variabilní náklady za volání OpenAI/Claude API podle počtu nahráných zápasů.
• Marketing: Plakáty a QR kódy v padelových klubech, pořádání amatérských turnajů.

## 6/ Cenový model

• Freemium Model:
  - Basic (Zdarma): Nahrávání zápasů na Apple Watch, základní historie a komunitní feed.
  - SPADEL Pro (Předplatné): Pokročilé AI rozbory zápasů, podrobné Head-to-Head statistiky, klubové žebříčky a exporty.
