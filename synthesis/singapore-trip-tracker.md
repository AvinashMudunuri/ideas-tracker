# Singapore Trip Tracker

**Original Ideas:** [2026-07-04-singapore-trip-planning-system.md](../ideas/2026-07-04-singapore-trip-planning-system.md)  
**Date Synthesized:** 2026-07-04  
**Status:** Backlog

---

## Problem Statement

Planning a multi-family trip to Singapore with diverse age groups (4 adults, teen 12, baby 4) requires coordinating prerequisites, packing, expenses, and cost splits. Without a centralized system, critical items get missed, expenses become messy, and settling costs between families is manual and error-prone.

---

## Proposed Solution

Build a structured trip tracker with four core modules:

1. **Prerequisites Module** - Checklist with deadlines for passports, visas, bookings, insurance
2. **Packing & Mandatory Items** - Age-specific checklists (baby essentials, teen needs, adult docs)
3. **Expense Tracker** - Categorized spending with budget alerts
4. **Split Calculator** - Real-time cost splitting between two families with settlement tracking

**Architecture:** Start with a structured Notion workspace or Airtable base for rapid deployment, with option to build custom web app if complexity warrants it.

---

## Scope

**In Scope:**
- Prerequisites tracking (visas, vaccinations, bookings, insurance)
- Age-specific packing checklists (baby gear, teen entertainment, adult essentials)
- Expense logging by category (flights, hotels, food, activities, transport, shopping)
- Split-wise calculation between two families
- Document storage/links (digital copies of passports, bookings, etc.)
- Deadline reminders for time-sensitive tasks
- Budget vs actual tracking per category
- Mobile-friendly access

**Out of Scope (v1):**
- Detailed itinerary planning with maps/routes (can add later)
- Real-time location sharing
- Flight/hotel price monitoring
- Automated currency conversion (manual entry acceptable)
- Photo gallery/memory book (separate tool)
- Weather integration
- Restaurant reservation system

---

## Key Decisions

| Decision | Options | Choice | Rationale |
|----------|---------|--------|-----------|
| Platform | Custom app, Notion, Airtable, Spreadsheet | **Notion** | Fast setup, mobile app, collaborative, templates available, can migrate later if needed |
| Expense granularity | Per-item, per-meal, daily summary | **Per-transaction** | Need accuracy for splits, but can summarize in views |
| Split method | Equal, per-person, custom ratio | **Per-person with adult/child rates** | Fair split considering ages (baby costs less than adults) |
| Currency tracking | SGD only, USD only, both | **Both (spent in SGD, budgeted in home currency)** | Need to track actual spend vs budget |
| Access model | Single owner + viewers, full collaborative | **Full collaborative** | Both families need to add expenses in real-time |

---

## Dependencies / Blockers

**Pre-work needed:**
- [ ] Confirm travel dates
- [ ] Decide on accommodation (affects budget)
- [ ] Research Singapore entry requirements for current year
- [ ] Get consensus from brother's family on tracking method

**No technical blockers** - Notion/Airtable available immediately

---

## Success Criteria

- [ ] All prerequisites completed 2 weeks before departure (nothing missed)
- [ ] Packing list 100% checked off before leaving
- [ ] Every expense logged same-day during trip
- [ ] Final split calculation completed within 24 hours of return
- [ ] Zero "forgotten items" or "missed bookings" incidents
- [ ] Settlement between families is agreed-upon and clear (no disputes)

---

## Context for Execution

### Technical Context

**Notion Structure:**
```
📁 Singapore Trip 2026
├── 📋 Prerequisites Dashboard
│   ├── Passports (expiry check)
│   ├── Visas/Entry requirements
│   ├── Vaccinations
│   ├── Travel insurance
│   ├── Flight bookings
│   └── Hotel reservations
│
├── 📦 Packing Checklists
│   ├── Documents (originals + copies)
│   ├── Baby essentials (4-year-old)
│   ├── Teen needs (12-year-old)
│   └── Adults (per person)
│
├── 💰 Expense Tracker
│   ├── Database view with filters
│   ├── Category: Flight, Hotel, Food, Activities, Transport, Shopping, Other
│   ├── Fields: Date, Amount (SGD), Amount (Home), Category, Paid By, Split Type
│   └── Running totals by category
│
├── 🧮 Split Calculator
│   ├── Per-person breakdown
│   ├── Total paid by each family
│   └── Settlement amount
│
└── 📎 Documents
    └── Links to digital copies (passports, insurance, bookings)
```

**Alternative: Airtable Base** with same structure but more powerful filtering/formulas

### Product Context

**User Flow:**
1. **Planning phase (now → 2 weeks before):** Fill prerequisites, book flights/hotels, complete packing lists
2. **Pre-departure (2 weeks → departure):** Final checklist review, document copies, currency exchange
3. **During trip:** Log expenses same-day, check packing list for returns, update plans
4. **Post-trip:** Finalize expenses, calculate splits, settle payments

**Key user personas:**
- **You (primary organizer):** Needs overview of everything, deadline tracking
- **Brother's family:** Needs to add expenses, view budgets
- **On-the-go access:** Mobile-friendly during trip for quick expense logging

### Why This Matters

**Risk mitigation:**
- Forgotten passports/visas = trip canceled
- Missing baby essentials = stressful trip
- Poor expense tracking = family disputes

**Peace of mind:**
- Everything in one place
- No mental load of remembering
- Clear, fair cost splits

**Reusability:**
- This template works for future family trips
- Learning what works/doesn't for next time

---

## Open Questions

- **Budget:** What's the total budget? Need this to set category limits
- **Split ratios:** Should baby/teen count as full person for splits or fractional?
- **Booking responsibility:** Who books flights/hotels? Both families separately or one person?
- **Emergency contacts:** Should this include local embassy, hotels, emergency services?
- **Itinerary level:** Do you want hour-by-hour or just daily highlights?
- **Post-trip:** Archive this or keep it as ongoing travel tracker for all trips?

---

## Related

- **Ideas:** [2026-07-04-singapore-trip-planning-system.md](../ideas/2026-07-04-singapore-trip-planning-system.md)
- **Could connect to:** Personal knowledge graph idea (if tracking all family travel over time)
