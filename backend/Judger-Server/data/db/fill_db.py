import pandas as pd
import requests

# Učitaj CSV fajl
df = pd.read_csv("metadata.csv", dtype=str).fillna("")

# Endpoint
url = "http://localhost:8080/verdicts"
headers = {"Content-Type": "application/json"}

# Helper funkcija za sečenje stringa na 255 chars
def trunc(s: str) -> str:
    return s[:255]

# Iteracija kroz redove
for _, row in df.iterrows():
    payload = {
        "id": int(row["id"]),
        "court": trunc(row["court"]),
        "verdictNumber": trunc(row["verdictNumber"]),
        "date": trunc(row["date"]),
        "judgeName": trunc(row["judgeName"]),
        "prosecutor": trunc(row["prosecutor"]),
        "defendantName": trunc(row["defendantName"]),
        "criminalOffense": trunc(row["criminalOffense"]),
        "appliedProvisions": trunc(row["appliedProvisions"]),
        "verdict": trunc(row["verdict"] or "PRISON"),
        "numDefendants": int(row.get("numDefendants", 0)),
        "previouslyConvicted": row.get("previouslyConvicted", "False").lower() == "true",
        "awareOfIllegality": row.get("awareOfIllegality", "False").lower() == "true",
        "defendantFinancialStatus": trunc(row.get("defendantFinancialStatus", "POOR")),
        "numVictimsEndangered": int(row.get("numVictimsEndangered", 0)),
        "physicalAbuseInvolved": row.get("physicalAbuseInvolved", "False").lower() == "true",
        "psychologicalAbuseInvolved": row.get("psychologicalAbuseInvolved", "False").lower() == "true",
        # Ako ima više opisa povreda, možeš parsirati niz; ovde šaljemo listu sa jednim stringom (truncirano)
        "injuryDescriptions": [trunc(row["injuryDescriptions"])] if row["injuryDescriptions"] else [],
        "actionsTakenAgainstVictim": trunc(row["actionsTakenAgainstVictim"]),
        "methodsOfRestraint": trunc(row["methodsOfRestraint"])
    }

    resp = requests.post(url, headers=headers, json=payload)
    print(f"ID={payload['id']}: HTTP {resp.status_code}")
