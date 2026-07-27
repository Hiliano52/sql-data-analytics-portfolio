# Enterprise Account Prioritization & Triage Playbook

## Overview
When managing enterprise portfolios at scale, operational friction and multiple client requests often collide. Effective Customer Success isn't reactive—it is driven by a structured triage matrix that protects revenue, minimizes security exposure, and optimizes engineering/support bandwidth.

---

## The Enterprise Triage Matrix

When multiple clients require immediate attention, requests are prioritized using a weighted framework based on three core dimensions:

1. **Volume of Users Affected:** 
   - *High Impact:* Issues blocking thousands of active users or entire departments from running simulations/training (exposing the "Human Firewall").
   - *Low Impact:* Single-user configuration or minor UI questions.
2. **Client Tier & Contract Level:** 
   - *Strategic/Enterprise:* High-ARR accounts with strict SLA requirements and upcoming renewal cycles take commercial precedence.
   - *SMB/Standard Tier:* Standardized support queues and automated onboarding flows.
3. **Technical Severity & Risk:** 
   - *Critical Blockers:* Active integration failures (e.g., broken SSO, failed AD/SCIM sync) or sudden telemetry drop-offs indicating churn risk.
   - *Enhancement Requests:* Feature requests or non-urgent optimization inquiries.

---

## Operational Execution Cadence

* **Immediate Firefighting (P0):** Address critical blockers affecting high-tier user volume first. Pull immediate telemetry or run diagnostic queries to isolate root causes.
* **Proactive Revenue Protection:** Balance daily triage by dedicating protected time-blocks to accounts signaling drops in login frequency or engagement before they become churn risks.
* **Cross-Functional Escalation:** Seamlessly partner with Account Management and Technical Support, bringing raw data, zero excuses, and transparent remediation plans to the table.
