# Market Comparative Research Tool - Research Plan

**Related Idea:** [market-comparative-research-tool.md](2026-07-04-market-comparative-research-tool.md)  
**Date:** 2026-07-04  
**Status:** Research Phase

---

## Research Objectives

Validate feasibility, legality, and differentiation before building. Answer critical questions that will shape whether/how to proceed.

---

## Research Areas

### 1. Legal & Ethical Feasibility

**Questions:**
- [ ] What do ToS say about scraping for Amazon.in, Flipkart, Booking.com, Airbnb, CarDekho?
- [ ] Which platforms offer official APIs for product data?
- [ ] What are the rate limits and costs of available APIs?
- [ ] Legal precedents for price comparison sites in India?
- [ ] Affiliate program requirements and commission structures?
- [ ] GDPR/data privacy implications if expanding beyond India?

**Actions:**
- Review ToS documentation for top 5 platforms per category
- Search for "Amazon Product Advertising API India"
- Research Indian legal cases around web scraping (hiQ vs LinkedIn precedent)
- Document affiliate program signup requirements

**Deliverable:** Legal feasibility matrix (Platform | Scraping Allowed? | API Available? | Affiliate Program? | Notes)

---

### 2. Technical Feasibility

**Questions:**
- [ ] How frequently do prices change? (Real-time needed or daily batch OK?)
- [ ] What anti-scraping measures are in place? (Cloudflare, rate limits, CAPTCHAs)
- [ ] How consistent are spec formats across platforms?
- [ ] Sample data extraction - can we reliably get: name, price, specs, reviews, availability?
- [ ] What's the infrastructure cost for scraping at scale?

**Actions:**
- Build proof-of-concept scraper for 1 product across 3 platforms
- Document spec format differences (RAM: "8GB" vs "8 GB" vs "8GB RAM")
- Test scraping reliability over 7 days
- Estimate AWS/cloud costs for daily scraping of 1000 products

**Deliverable:** Technical feasibility report with POC code and cost estimates

---

### 3. Competitive Analysis

**Questions:**
- [ ] What do existing tools do well?
- [ ] What are their gaps/weaknesses?
- [ ] How do they monetize?
- [ ] What's their data freshness?
- [ ] Can we differentiate meaningfully?

**Competitors to analyze:**
- **General:** Google Shopping, PriceHistory.in
- **Electronics:** PriceBaba, MySmartPrice, CompareRaja, 91mobiles
- **Hotels:** Trivago, Kayak, Google Hotels
- **Cars:** CarDekho comparison tool, CarWale

**Actions:**
- Use each tool for same product research (e.g., iPhone 15 in Hyderabad)
- Document: platforms covered, feature comparison depth, UX quality, data freshness, ads/monetization
- List what's missing or frustrating

**Deliverable:** Competitive analysis table with differentiation opportunities highlighted

---

### 4. Market Validation

**Questions:**
- [ ] Do people actually have this pain point strongly enough to use a new tool?
- [ ] What's the current behavior? (Manual comparison, existing tools, impulse buying?)
- [ ] Which categories have highest demand?
- [ ] Is location-specificity a real differentiator or just nice-to-have?

**Actions:**
- Survey 10-15 people: "How do you research before buying [mobiles/laptops/booking hotels]?"
- Post on Reddit/Twitter: "How do you compare prices across platforms in India?"
- Check search volume: "compare mobile prices india", "best laptop deals hyderabad"
- Interview 3 people who recently made big purchases

**Deliverable:** Demand validation summary with user quotes and search volume data

---

### 5. MVP Scope Refinement

**Questions:**
- [ ] Which single category has best ROI for MVP? (demand + feasibility + monetization)
- [ ] Which 2-3 platforms are must-haves?
- [ ] Is Hyderabad-specific valuable or should we go India-wide immediately?
- [ ] What's the minimum comparison feature set?

**Actions:**
- Score categories on: demand (high/med/low), technical difficulty (easy/med/hard), monetization potential (high/med/low)
- Create feature priority list (must-have, should-have, nice-to-have)
- Sketch wireframes for MVP comparison page

**Deliverable:** Prioritized MVP scope document

---

## Research Timeline

**Week 1:**
- Legal/ToS review (2 days)
- Technical POC scraping (2 days)
- Competitive analysis (1 day)

**Week 2:**
- Market validation interviews/surveys (3 days)
- Analyze results and refine scope (2 days)

**Total:** ~10 days of focused research before synthesis/build decision

---

## Success Criteria

This research phase succeeds when we can confidently answer:

1. **Is it legal?** Clear understanding of what's allowed/forbidden
2. **Is it technically feasible?** POC proves we can extract reliable data
3. **Is there demand?** At least 10 people confirm this solves a real pain point
4. **Can we differentiate?** At least 2-3 clear advantages over existing tools
5. **What should we build?** Specific MVP scope with prioritized features

**Decision point:** Go/No-Go based on research findings

---

## Resources Needed

- API credits for testing (Amazon PA API ~$0, Flipkart API if exists)
- ScraperAPI trial or similar ($30-50 for testing)
- Time: ~10-15 hours total
- Survey respondents: 10-15 people

---

## Risk Flags

**Red flags that would kill this project:**
- ❌ All major platforms explicitly forbid scraping + no APIs available
- ❌ Anti-scraping measures make data extraction unreliable (>20% failure rate)
- ❌ No meaningful differentiation from existing tools
- ❌ Weak demand signals (people satisfied with current solutions)

**Yellow flags that would pivot approach:**
- ⚠️ Some platforms forbid scraping → Focus on API-available platforms only
- ⚠️ High infrastructure costs → Start with manual data entry + crowdsourcing
- ⚠️ Weak demand in electronics → Pivot to hotels or cars
- ⚠️ Too complex to go wide → Go deep in one niche (e.g., gaming laptops only)

---

## Next Steps After Research

**If GO:**
- Synthesize findings into implementation plan
- Move to "Ready to Start" in tracker
- Build MVP based on refined scope

**If NO-GO:**
- Document learnings for future reference
- Archive this idea
- Potentially pivot to related but different approach
