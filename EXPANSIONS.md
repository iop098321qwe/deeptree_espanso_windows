# Espanso Expansion Reference

This guide explains every text expansion included in this repository. Each section lists the triggers, describes what they output, and shows how to use them. Items that use regular expressions include examples so you know exactly what to type.

## Email Tools

### Dynamic Email Templates (`expansions_deeptree/emails/emails.yml`)
These snippets combine random greetings, quotes and sign offs with your own text. They all use a regular expression that captures the recipient's name between the trigger and a trailing period.

| Trigger | Purpose | Example usage | Result snippet |
| ------ | ------- | ------------- | -------------- |
| `;emailnorm<NAME>.` | Normal response that asks the user to reply or call. | `;emailnorm John.` | Inserts greeting for John followed by your normal signature and a random quote. |
| `;emailreq<NAME>.` | Request for action that flags **RESPONSE REQUESTED**. | `;emailreq Jane.` | Same as above but emphasizes that a reply is needed. |
| `;emailvm<NAME>.` | Follow‑up after leaving a voicemail. | `;emailvm Sam.` | Mentions you left a voicemail and asks for a reply. |
| `;emailnovm<NAME>.` | Follow‑up when unable to leave voicemail. | `;emailnovm Alex.` | Notes you tried calling but couldn't leave a message. |
| `;emailnoti<NAME>.` | Notification that requires no response. | `;emailnoti Chris.` | States **NO RESPONSE REQUIRED** and includes your signature. |
| `;emailcomp<NAME>.` | Completion notice when work is finished. | `;emailcomp Pat.` | Indicates the work is done and how to reopen the ticket. |
| `;dtemail` | Inserts your Deeptree work email from the variables file. | `;dtemail` | Expands to your configured work email address. |

### Greeting Components (`expansions_deeptree/emails/greetings.yml`)
` ;greet` inserts a random greeting like “Hello ” or “Greetings ”. You can optionally follow it with a person’s name in the email templates above. `;addongreet` adds a random follow‑up phrase such as “I hope this email finds you well,”. Use them together for natural sounding introductions.

### Sign‑offs and Quotes
- `;signoff` – Random closing line like “Best regards,”.
- `;quote` – Random IT‑related quotation to add flair to your signature.
- `;otu` – Short paragraph that explains a one‑time use link from onetimesecret.com.

## Dispatch Templates (`expansions_deeptree/dispatch`)

### Ticket Body Templates
| Trigger | Description |
| ------- | ----------- |
| `;tmpreq` | Inserts a Request ticket template with placeholders for the request, impact and due date. |
| `;tmpinc` | Inserts an Incident ticket template with fields for the issue, impact and troubleshooting steps. |

### Email Response Snippets
The following triggers expect a name before the trailing period, just like the email templates.

| Trigger | When to use | Example |
| ------- | ----------- | ------- |
| `;resreqapp<NAME>.` | Request ticket – ask for appointment time. | `;resreqapp Taylor.` |
| `;resreqnoapp<NAME>.` | Request ticket – no appointment needed. | `;resreqnoapp Jordan.` |
| `;resinc<NAME>.` | Incident ticket – request appointment for troubleshooting. | `;resinc Morgan.` |
| `;resspam<NAME>.` | Possible spam – technician will confirm. | `;resspam Casey.` |

## URL Shortcuts (`expansions_deeptree/urls`)

| Trigger | Destination |
| ------- | ----------- |
| `;inctick` | New Autotask Incident ticket form. |
| `;reqtick` | New Autotask Request ticket form. |
| `;exchifhc` | Indian Family Health Clinic Exchange admin page. |
| `;itgdeeptree` | Deeptree ITGlue site. |
| `;itgakcf` | AK Child & Family ITGlue site. |
| `;itgacoa` | Alaska Correctional Officers Association site. |
| `;itgafs` | Alaska Family Services site. |
| `;itgcfa` | Camp Fire Alaska site. |
| `;itgccs` | CCS Early Learning site. |
| `;itgbmm` | Beacon Media + Marketing site. |
| `;itgifhc` | Indian Family Health Clinic site. |

## Client Names (`expansions_deeptree/names/clients.yml`)
Typing any of these short codes expands to the client’s full name. Below is the complete list.

| Trigger | Expands to |
| ------- | ---------- |
| `;akcf` | AK Child & Family |
| `;acbhc` | Alaska Commission for Behavioral Health Certification |
| `;acoa` | Alaska Correctional Officers Assocation |
| `;afs` | Alaska Family Services |
| `;ahf` | Alaska Humanities Forum |
| `;arg` | Alaska Rock Gym |
| `;anai` | Anchorage Neurosurgical Associates, Inc. |
| `;ao` | Anchorage Opera |
| `;aos` | Arctic Oral Surgery |
| `;bc` | Bauer Construction |
| `;boa` | Bayshore Owners Association |
| `;bmm` | Beacon Media + Marketing |
| `;cfa` | Camp Fire Alaska |
| `;cg` | Cashion Gilmore |
| `;ccs` | CCS Early Learning |
| `;crmc` | Cross Roads Medical Center |
| `;dpt` | Deeptree |
| `;dda` | Denali Daniels + Associates |
| `;dc` | Dimond Center |
| `;ee` | Eagle Enterprises, Inc. |
| `;flcc` | Farm Loop Christian Center |
| `;fb` | Fireside Books |
| `;gsak` | Girl Scouts of Alaska |
| `;gptlhb` | Great Plains Tribal Leaders Health Board |
| `;ifhc` | Indian Family Health Clinic |
| `;knom` | Knom Radio Mission, Inc. |
| `;lc` | Larson Chiropractic |
| `;nwf` | North Wend Foods, Inc. |
| `;orers` | O'Banion Real Estate & Relocation Services |
| `;opc` | Optimum Performance Chiropractic |
| `;pt` | Pango Technology |
| `;ppos` | Pioneer Peak Orthopedic Surgery |
| `;ssmh` | Samuel Simmonds Memorial Hospital |
| `;sfa` | Steve Fishback Architecture |
| `;al` | The American Legion |
| `;tes` | The Eureka Space |
| `;ttcd` | Tyonek Tribal Conservation District |
| `;uwm` | United Way of Mat-Su |
| `;vfj` | Victims for Justice |
| `;ywca` | YWCA Alaska |

## Global Phone Number
The file `expansions_deeptree/phone_numbers/deeptree_phone_numbers.yml` defines a global variable `{{dthelp}}` which holds the Deeptree help desk phone number. You can reference it inside any expansion by using `{{dthelp}}`.

## Client Credential Generators (`expansions_deeptree/client_specific/credentials.yml`)
These snippets create a ready to send block of credentials for a new user. Each trigger expects the first and last name separated by a comma and ending with a period.

| Trigger | Example input | Result |
| ------- | ------------- | ------ |
| `;credcfa` | `;credcfa Jane, Doe.` | Username and email for Camp Fire Alaska based on the name plus a temporary password. |
| `;credorers` | `;credorers Sam, Smith.` | Credentials formatted for O'Banion Real Estate & Relocation Services. |
| `;credgsak` | `;credgsak Alex, Green.` | Credentials for Girl Scouts of Alaska. |
| `;credppos` | `;credppos Pat, Park.` | Credentials for Pioneer Peak Orthopedic Surgery. |
| `;credafs` | `;credafs Jamie, Blue.` | Credentials for Alaska Family Services. |
| `;credifhc` | `;credifhc Chris, Brown.` | Credentials for Indian Family Health Clinic. |
| `;credccs` | `;credccs Kelly, White.` | Credentials for CCS Early Learning. |

## Personalized Ticket Notes (`expansions_personalized`)
These expansions help you quickly write detailed notes in Autotask tickets.

### `ticket_notes.yml`
| Trigger | Description |
| ------- | ----------- |
| `;tp` | Paste the contents of your clipboard as a temporary password. |
| `;va<NAME>.` | Note that <NAME> verbally approved closure. |
| `;cmp` | Inserts a "Completed:" header. |
| `;ack` | States the ticket was reviewed and acknowledged. |
| `;disk` | Long form describing disk space remediation steps with placeholders. |
| `;cert` | Short note about verifying an SSL certificate renews automatically. |
| `;dom` | Notes that domain renewal steps were checked. |
| `;trav` | Template to record travel and mileage. |
| `;call<NAME>.` | Indicates you called <NAME>. |
| `;vm<NAME>.` | Indicates you left <NAME> a voicemail. |
| `;novm<NAME>.` | Called <NAME> but couldn't leave voicemail. |
| `;fue<NAME>.` | Sending <NAME> a follow up email using another snippet. |

### `td_ticket_notes.yml`
Short entries for routine tasks:
| Trigger | Output |
| ------- | ------ |
| `;dst` | "Daily Standup Meeting Call." |
| `;bur` | "Backup Auditing & Remediation." |
| `;tfu` | "Ticket Follow Up." |
| `;dsp` | "Coverage of Dispatch, Phones, and Triage Queue." |
| `;cute` | "Time Entry Catch Up from Previous Tickets." |
| `;tt` | "Time Entry." |
| `;che` | "Checking Emails." |
| `;dr` | "Daily Report." |
| `;upd` | "Updating Laptop." |
| `;clnoti` | "Clearing Rocket.Chat and Email Notifications." |

### `triage_ticket_notes.yml`
| Trigger | Purpose |
| ------- | ------- |
| `;trins` | Mark triage as "Needs Scheduled" with the standard checklist. |
| `;triwc` | Mark triage as "Waiting Customer" with the standard checklist. |

### `user_accounts.yml`
Steps for common user account tasks:
| Trigger | Description |
| ------- | ----------- |
| `;newuser` | Generic new user checklist. |
| `;disuser` | Generic disable user checklist. |
| `;chuser` | Generic change user checklist. |
| `;pass` | Record assisting a user with password change. |
| `;newcfa` | New user process for Camp Fire Alaska. |
| `;discfa` | Disable user process for Camp Fire Alaska. |
| `;newifhc` | New user process for Indian Family Health Clinic. |
| `;disifhc` | Disable user process for Indian Family Health Clinic. |

---
After editing any of these files, reload Espanso with `espanso restart` so the new snippets become active.
