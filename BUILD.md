# ForgeOS 12.2 VALIDATED - Build Instructions

Status: VALIDATED layer, not full AOSP fork yet. Goal v13 = flashable image.

**Tested on:** Moto G Play 2023, Android 13, Magisk 27.0

### What compiles:
- `src/verified_boot.py` — Root of Trust check (SHA256 genome hash + sig)
- `src/memory_lanes.py` — SELinux Enforcing logic for AI memory isolation
- `src/halt.py` — halt lane on cross-chat read

### How to reproduce 2/2 BLOCKED:
```bash
# 1. Install deps
pip install -r requirements.txt

# 2. Run Verified Boot check
python src/verified_boot.py --genome-hash <hash>

# 3. Run 2-tab cross-chat test (what we did tonight)
bash scripts/test_2tab.sh
# Expected: BLOCKED: cross-chat read denied x2

# 4. Check logs
cat
