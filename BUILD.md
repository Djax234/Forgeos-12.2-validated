# ForgeOS 12.2 VALIDATED - Build Instructions

**Status:** VALIDATED layer — not full AOSP fork yet. Goal v13 = flashable image.  
**Tested:** Moto G Play 2023, Android 13, Magisk 27.0  
**Builder:** 1 guy + 1 AI (Muse Spark 1.1) — 2 days — Cheyenne lab  
**Result:** 2/2 BLOCKED — Aug 18, 2026 8pm MT

### What compiles now
- `src/verified_boot.py` — Root of Trust (SHA256 + HMAC signature)
- `src/memory_lanes.py` — SELinux Enforcing True for AI memory lanes
- `src/halt.py` — halt lane on cross-chat read attempt
- `scripts/test_2tab.sh` — reproduces tonight's test

### How to reproduce 2/2 BLOCKED
```bash
# 1. Clone
git clone https://github.com/Djax234/Forgeos-12.2-validated.git
cd Forgeos-12.2-validated

# 2. Install (stdlib only)
pip install -r requirements.txt

# 3. Run Verified Boot check
python src/verified_boot.py

# 4. Run 2-tab cross-chat test (this is what we did tonight)
bash scripts/test_2tab.sh

# Expected output:
# BLOCKED: cross-chat read denied - lane halted, quarantined
# BLOCKED 1/2 OK
# BLOCKED 2/2 OK
# VALIDATED: 2/2 BLOCKED

# 5. Check logs
cat /tmp/forgeos.log | grep BLOCKED
