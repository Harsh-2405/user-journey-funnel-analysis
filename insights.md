# User Journey Funnel Analysis — Project Insights

## Project Overview
Analyzed 12,719 page-level events from 1,872 unique users across a 5-stage
e-commerce funnel to identify drop-off points and conversion bottlenecks.

**Dataset:** E-Commerce Customer Journey (Click to Conversion)  
**Tools Used:** Python (Pandas, Matplotlib, Seaborn), SQL  
**Time Period:** January 2025 – August 2025

---

## Funnel Performance

| Stage        | Unique Users | Drop-off vs Previous | Remaining from Start |
|--------------|-------------|----------------------|----------------------|
| Home         | 1,872       | —                    | 100.00%              |
| Product Page | 1,763       | -5.82%               | 94.18%               |
| Cart         | 1,084       | -38.51%              | 57.91%               |
| Checkout     | 855         | -21.13%              | 45.67%               |
| Confirmation | 792         | -7.37%               | 42.31%               |

**Overall conversion rate: 42.31%**

---

## Key Findings

### Finding 1 — Biggest drop-off: Cart to Checkout (38.51%)
Nearly 4 in 10 users who added items to their cart never proceeded to checkout.
This is the single largest drop-off in the entire funnel and the #1 priority to fix.

**Possible causes:**
- Unexpected shipping costs shown at checkout
- Forced account creation before purchase
- Too many steps in the checkout flow
- Lack of trust signals (no reviews, no security badges)

**Recommendation:**
- Introduce guest checkout option
- Show shipping costs upfront on the cart page
- Add progress indicator during checkout
- Display security badges and return policy clearly

---

### Finding 2 — Device type has negligible impact (< 0.6% variance)

| Device  | Conversion Rate |
|---------|----------------|
| Mobile  | 27.68%         |
| Tablet  | 27.53%         |
| Desktop | 27.13%         |

All three devices convert at nearly identical rates, indicating a consistent
cross-device experience. No device-specific UX fix is required.

---

### Finding 3 — Google drives the highest-intent traffic

| Referral Source | Conversion Rate |
|-----------------|----------------|
| Google          | 27.04%         |
| Direct          | 24.86%         |
| Social Media    | 24.59%         |
| Email           | 24.47%         |

Google users convert 2.57% higher than Email users, suggesting search traffic
brings users with stronger purchase intent.

**Recommendation:**
- Increase Google Ads investment for high-converting search terms
- Revisit email campaign targeting — focus on re-engagement and cart abandonment
- Test personalized landing pages for Social Media traffic

---

### Finding 4 — France leads, Germany lags in conversion by country

| Country   | Conversion Rate |
|-----------|----------------|
| France    | 26.83%         |
| USA       | 24.53%         |
| India     | 24.01%         |
| UK        | 22.38%         |
| Canada    | 22.33%         |
| Australia | 22.24%         |
| Germany   | 20.60%         |

France converts 6.23% higher than Germany — a significant gap worth investigating.

**Recommendation:**
- Audit checkout experience for German users (language, payment methods, trust signals)
- Investigate if Germany has higher cart abandonment specifically
- Consider localized promotions to boost German conversion

---

## Summary of Recommendations (Priority Order)

1. **Fix cart → checkout drop** — simplify checkout, add guest option, show costs upfront
2. **Invest more in Google traffic** — highest ROI channel at 27.04% conversion
3. **Investigate Germany** — lowest converting market, likely a localization issue
4. **Improve email campaigns** — lowest converting channel, needs better targeting

