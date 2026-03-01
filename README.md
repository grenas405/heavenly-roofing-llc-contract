# Heavenly Roofing LLC - Independent Contractor Agreement

Professional LaTeX contract template for insurance supplement specialist services.

## Overview

This project generates a professional, notarization-ready legal contract between Heavenly Roofing LLC and an insurance supplement specialist. The contract establishes revenue-sharing terms, training obligations, and comprehensive legal protections.

## Contract Features

### Core Business Terms
- **Trial Period Split** (Jobs 1-8): Specialist receives 70%, Heavenly Roofing receives 30% of initial insurance claim amounts
- **Post-Trial Split** (Job 9+): Equal 50/50 split of initial insurance claim amounts
- **Supplement Revenue**: Heavenly Roofing handles supplements and retains 100% of supplement revenue
- **Trial Period**: 8 completed jobs marks transition from 70/30 to 50/50 split
- **Roles**: Specialist handles overall insurance claims (adjuster meetings, materials); Company handles supplements
- **Knowledge Exchange**: Mutual training (insurance sales techniques and clerical insurance operations)

### Legal Protections
- Termination provisions (30-day notice and for cause)
- Confidentiality and non-disclosure agreements
- Liability and indemnification clauses
- Dispute resolution process (mediation and litigation)
- Oklahoma governing law and notarization section

## Prerequisites

You need a LaTeX distribution installed on your system:

### Linux (Ubuntu/Debian)
```bash
sudo apt update
sudo apt install texlive-latex-base texlive-latex-extra
```

### macOS
```bash
brew install --cask mactex
```

Or download from: https://www.tug.org/mactex/

### Windows
Download and install MiKTeX: https://miktex.org/download

### Alternative: Online (No Installation)
Use Overleaf: https://www.overleaf.com/
- Upload all project files to a new Overleaf project
- Set `contract.tex` as the main document
- Compile to generate PDF

## Building the Contract

### Method 1: Using Make (Recommended for Linux/Mac)
```bash
# Build the contract
make

# Build and open the PDF
make view

# Clean build artifacts
make clean

# Verify LaTeX installation
make check
```

### Method 2: Direct pdflatex (All platforms)
```bash
# Create build directory
mkdir -p build

# Compile the contract (run twice for references)
pdflatex -output-directory=build contract.tex
pdflatex -output-directory=build contract.tex

# The PDF will be at: build/contract.pdf
```

### Method 3: Continuous Compilation (Optional)
```bash
# Requires latexmk
make watch

# The PDF will automatically rebuild when you save changes
```

## Filling in the Contract

The contract includes red-colored placeholder fields that need to be filled in:

### Specialist Information (Required)
Search for these placeholders in the generated PDF or source files:
- `[FILL IN SPECIALIST NAME]`
- `[FILL IN SPECIALIST ADDRESS LINE 1]`
- `[FILL IN SPECIALIST ADDRESS LINE 2]`
- `[FILL IN SPECIALIST CITY, STATE ZIP]`

### How to Fill Placeholders

**Option 1: Edit the LaTeX Source**
1. Open `sections/parties.tex`
2. Replace the red `{\color{red}[FILL IN ...]}` text with actual information
3. Rebuild the contract: `make`

**Option 2: Fill by Hand**
1. Print the contract
2. Write in the information by hand where indicated in red
3. Both parties sign and have notarized

**Option 3: PDF Editor**
1. Open `build/contract.pdf` in a PDF editor (Adobe Acrobat, etc.)
2. Use the text tool to fill in placeholders
3. Save the completed contract

## Project Structure

```
heavenly-roofing-llc-contract/
├── README.md                      # This file
├── .gitignore                     # Git ignore patterns
├── Makefile                       # Build automation
├── contract.tex                   # Main LaTeX document
├── styles/
│   └── contract-style.sty        # Custom formatting
├── sections/
│   ├── parties.tex               # Party definitions
│   ├── recitals.tex              # Background clauses
│   ├── compensation.tex          # Payment terms and splits
│   ├── trial-period.tex          # 8-job trial period
│   ├── knowledge-exchange.tex    # Training obligations
│   ├── termination.tex           # Termination provisions
│   ├── confidentiality.tex       # NDA clauses
│   ├── liability.tex             # Indemnification
│   ├── dispute-resolution.tex    # Mediation and litigation
│   ├── general-provisions.tex    # Standard legal terms
│   └── signatures.tex            # Signature blocks and notary
├── build/
│   └── contract.pdf              # Generated contract
└── examples/
    └── sample-filled-contract.tex # Sample with filled data
```

## Customization

### Changing Contract Terms

To modify the contract terms, edit the relevant section file:

- **Payment splits**: Edit `sections/compensation.tex`
- **Trial period length**: Edit `sections/trial-period.tex`
- **Notice period**: Edit `sections/termination.tex`
- **Company address**: Edit `sections/parties.tex`
- **Supplement revenue split**: Edit `sections/compensation.tex`

After editing, rebuild: `make`

### Changing Formatting

To modify the visual appearance:
- **Margins, spacing, fonts**: Edit `styles/contract-style.sty`
- **Colors**: Edit the `\definecolor` commands in `contract-style.sty`
- **Section numbering**: Edit `\titleformat` commands in `contract-style.sty`

## Troubleshooting

### "pdflatex: command not found"
LaTeX is not installed. See Prerequisites section above.

### Missing Package Errors
```bash
# TeXLive (Linux/Mac)
sudo tlmgr install <package-name>

# MiKTeX (Windows)
# Packages will auto-install on first compile
# Or use MiKTeX Package Manager
```

### Build Errors
```bash
# Clean and rebuild
make clean
make

# Check for syntax errors in .tex files
# Look for unmatched braces {}, missing \end{}, etc.
```

### PDF Won't Open
```bash
# Check that build completed successfully
ls -lh build/contract.pdf

# Try opening manually
xdg-open build/contract.pdf  # Linux
open build/contract.pdf       # macOS
start build/contract.pdf      # Windows
```

## Sample Contract

A sample filled contract is included for reference:

```bash
# Build the sample
make sample

# Output: build/sample-filled-contract.pdf
```

This demonstrates what the final contract looks like with all placeholders filled.

## Legal Disclaimer

**IMPORTANT**: This contract template is provided for informational purposes only and does not constitute legal advice. The template is intended as a starting point for discussion between parties.

Both Heavenly Roofing LLC and the Specialist should:
- Review the contract thoroughly
- Consult with qualified legal counsel before executing
- Ensure all terms accurately reflect the business arrangement
- Have the contract reviewed for compliance with Oklahoma law

The authors and contributors to this template assume no liability for the legal enforceability or appropriateness of this agreement for any particular purpose.

## Notarization

This contract includes a notarization section compliant with Oklahoma notary public requirements. To execute:

1. Fill in all placeholder information
2. Both parties review and agree to terms
3. Schedule notarization appointment with a licensed Oklahoma notary public
4. Both parties sign in the presence of the notary
5. Notary completes the acknowledgment section and applies seal
6. Retain copies for both parties' records

## Support

### Common Questions

**Q: Can I use this contract in states other than Oklahoma?**
A: The contract is drafted for Oklahoma law. Consult local legal counsel for use in other states, as contract law varies.

**Q: What if I need more than 8 jobs for the trial period?**
A: Edit `sections/trial-period.tex` and change "8" to your desired number.

**Q: Can I change the profit split percentages?**
A: Yes, edit `sections/compensation.tex` and rebuild the PDF.

**Q: Do I need a lawyer?**
A: Yes, both parties should consult legal counsel before executing any contract.

### LaTeX Resources

- LaTeX Documentation: https://www.latex-project.org/help/documentation/
- Overleaf Tutorials: https://www.overleaf.com/learn
- TeX Stack Exchange: https://tex.stackexchange.com/

### Oklahoma Insurance Claims Research

The contract structure is informed by research on Oklahoma roofing insurance claims and supplements:

- [Oklahoma Policyholders Seeing Changes in Insurance Coverage for Roof Claims](https://www.vosslawfirm.com/blog/changes-for-oklahoma-roof-insurance-claims.cfm)
- [Ultimate Guide to Roof Insurance Claims in Oklahoma City](https://www.arrowheadroofingokc.com/ultimate-guide-roof-insurance-claims-oklahoma-city/)
- [Roofing Insurance Supplements Explained: What Every Contractor Needs to Know](https://useproline.com/roofing-insurance-supplements-for-roofers/)
- [Should Your Roofer Meet With Your Insurance Adjuster?](https://triplediamondok.com/roofer-meet-with-your-insurance-adjuster/)
- [Oklahoma Roof Insurance Claims: What Homeowners Need to Know](https://www.tier-oneroofing.com/blog/2025/august/oklahoma-roof-insurance-claims-what-adjusters-do/)

These sources clarify the distinction between:
- **Insurance Claims:** Initial damage reporting, adjuster meetings, and claim approval
- **Insurance Supplements:** Additional claims when initial estimates miss damage

## License

This contract template is provided as-is. Modify freely for your business needs. No warranty or guarantee of fitness for any purpose is provided.

## Version

- **Version**: 2.0
- **Last Updated**: 2026-03-01
- **Author**: Created for Heavenly Roofing LLC
