# Sierra ILS Statistics - Turnaround Midwest Automated Report
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![Python](https://img.shields.io/badge/python-%233670A0.svg?style=for-the-badge&logo=python&logoColor=ffdd54)

## Summary
This automated report captures performance metrics for the vendor Midwest, specifically tracking fulfillment turnaround times from order placement to delivery for the previous quarter. 

## Features and Deliverables

**Automated Email:**

<img width="991" height="593" alt="Quarterly Midwest Turnaround" src="https://github.com/user-attachments/assets/60098021-d035-44ac-aabd-1c08110e15a3" />

**Attached Excel Report:**

<img width="672" height="287" alt="Turnaround-Midwest" src="https://github.com/user-attachments/assets/1a92ace2-a3cb-46e7-817a-87b831b9eb7d" />

**Vendor Turnaround Tracker:**

<img width="1650" height="522" alt="Turnaround-Tracker-Midwest" src="https://github.com/user-attachments/assets/a573f582-e275-410c-bc93-efb87614e8d9" />


## Data Pipeline Architecture
This repository features an automated data pipeline that generates, formats, and distributes Excel reports via email. The system integrates Windows Task Scheduler, a Batch script, SQL, and Python to handle the end-to-end workflow without manual intervention. The automated process is fully productionized within a Windows environment.

**Workflow Overview:**

[Windows Task Scheduler] ──> [orchestrator.bat] ──> [main.py] ──> [Sub-modules & SQL] ──> [Report delivered to Email Inbox]

**Repository Contents & Security Note:**

To comply with data security policies, the core Python automation scripts have been omitted from this public repository. Instead, this repository provides:
- The SQL Data-Extraction Script: The exact logic used to pull and aggregate Sierra ILS production data.
- Manual Alternative: If you do not have an automated environment, you can run the provided SQL script manually in pgAdmin and export the results directly to a spreadsheet.

## Acknowledgments
The automated pipeline is built off the brilliant work of Gem Stone-Logan. For more information on implementing the automated system, please see her IUG presentations, [Automating Reports with Python.](https://www.gemstonelogan.com/presentations.html)
