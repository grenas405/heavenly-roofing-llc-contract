# Changelog

All notable changes to the Heavenly Roofing LLC Independent Contractor Agreement project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2026-02-28

### Added - Initial Release

#### Contract Structure
- Created comprehensive 38-page Independent Contractor Agreement
- Implemented modular LaTeX architecture with 11 separate section files
- Developed custom `contract-style.sty` package for professional legal formatting
- Established project build system with Makefile automation

#### Business Terms
- **Standard Revenue Split**: 70% Specialist / 30% Company for regular claims
- **Big Supplement Threshold**: $10,000 monetary threshold for enhanced splits
- **Big Supplement Split**: 50/50 equal split for claims ≥ $10,000
- **Trial Period**: 8 completed jobs with standard/big supplement splits
- **Post-Trial Permanent Adjustment**: Automatic conversion to 50/50 for all claims after 8 jobs
- **Knowledge Exchange**: Mutual training obligations (sales techniques and clerical operations)
- **Compensation Summary Table**: Visual table clarifying split structure across trial periods

#### Legal Provisions

**Section 1: Parties to the Agreement** (`sections/parties.tex`)
- Heavenly Roofing LLC party definition with full address (3313 Elmo Way, Moore, OK 73160)
- Specialist party definition with red placeholder fields for customization
- Legal entity type specifications

**Section 2: Recitals** (`sections/recitals.tex`)
- WHEREAS clauses establishing business context
- Background and purpose statements
- NOW, THEREFORE language

**Section 3: Term and Scope of Services** (inline in `contract.tex`)
- Engagement commencement and duration
- Detailed list of specialist services (6 enumerated items)
- Independent contractor relationship clarification

**Section 4: Compensation Structure** (`sections/compensation.tex`)
- Standard revenue split definition (70/30)
- Big Supplement definition and split (50/50 at $10,000 threshold)
- Payment timing (15 business days from receipt)
- Payment method options (check, ACH, wire transfer)
- Payment documentation requirements
- Gross Amount definition with exclusions
- Compensation summary comparison table

**Section 5: Trial Period and Progressive Partnership** (`sections/trial-period.tex`)
- Trial period definition (8 completed jobs)
- Completed job criteria (4-part test)
- Trial period compensation structure
- Post-trial permanent adjustment to 50/50
- Effective date calculation for adjustment
- Job count tracking and notification requirements
- Performance expectations for both parties
- Special 7-day termination right during trial

**Section 6: Knowledge Exchange and Training** (`sections/knowledge-exchange.tex`)
- Specialist training obligations (sales and insurance supplement expertise)
- Company training obligations (clerical and administrative operations)
- Training format and schedule requirements
- Minimum time commitments (8 hours/month during trial)
- Confidentiality of training materials
- No guarantee of results disclaimer

**Section 7: Termination** (`sections/termination.tex`)
- 30-day notice termination for convenience
- Termination for cause with 15-day cure period
- 6 enumerated grounds for cause termination
- Immediate termination for uncurable breaches
- Payment of earned compensation upon termination
- Return of property and materials (10-day deadline)
- Survival of specific provisions post-termination
- Jobs in progress handling (12-month tail coverage)

**Section 8: Confidentiality and Non-Disclosure** (`sections/confidentiality.tex`)
- Comprehensive definition of Confidential Information (7 categories)
- Exclusions from confidentiality (5 exceptions)
- Non-disclosure obligations and prohibited uses
- 5-year confidentiality duration (indefinite for trade secrets)
- Return or destruction of confidential materials
- Customer and business relationship protections
- 12-month non-solicitation provision
- Equitable relief remedies for breaches

**Section 9: Liability and Indemnification** (`sections/liability.tex`)
- Independent contractor status clarification
- Tax and regulatory obligation allocation
- No employee benefits acknowledgment
- Specialist indemnification (7 enumerated scenarios)
- Company indemnification (6 enumerated scenarios)
- Defense of claims procedures
- Limitation of liability with cap on damages
- Exclusion of consequential damages
- Insurance recommendations (not required)

**Section 10: Dispute Resolution** (`sections/dispute-resolution.tex`)
- 30-day good faith negotiation requirement
- Mediation through AAA or similar organization
- Oklahoma County, Oklahoma venue
- Equal cost sharing for mediation
- Litigation in Oklahoma state/federal courts
- Governing law (State of Oklahoma)
- Jury trial waiver (mutual)
- Equitable relief preservation
- Prevailing party attorneys' fees provision
- Continuation of performance during disputes

**Section 11: General Provisions** (`sections/general-provisions.tex`)
- Entire agreement clause
- Written amendment requirement
- Oklahoma governing law
- Severability provisions
- No waiver by conduct
- Assignment restrictions with exceptions
- Notice requirements and addresses
- Counterparts and electronic signatures
- Force majeure provisions
- Headings and interpretation rules
- Survival of key provisions
- Further assurances
- Relationship of parties clarification
- Publicity restrictions

**Signature Blocks and Notarization** (`sections/signatures.tex`)
- Professional signature blocks for both parties
- Date fields and title/capacity fields
- Full address blocks
- Dual Oklahoma Notary Public acknowledgment sections
- Notary seal placeholder boxes
- Commission expiration date fields
- Proper "IN WITNESS WHEREOF" language

#### Document Features
- Professional typography with 12pt font and 1.5 line spacing
- 1-inch margins on all sides (US Letter paper)
- Legal-style section numbering (1, 1.1, 1.2, etc.)
- Headers with document title and company name
- Footers with "Page X of Y" pagination
- Red-colored placeholder fields for easy identification
- Custom LaTeX commands for consistency:
  - `\placeholder{}` - Red text for fill-in fields
  - `\moneythreshold{}` - Formatted monetary amounts
  - `\percentage{}` - Formatted percentages
  - `\signatureline` - Professional signature lines
  - `\defterm{}` - Legal defined terms formatting
- PDF metadata (title, author, subject, keywords)
- Hyperref configuration for professional PDF output

#### Build System
- Makefile with 8 targets:
  - `make` or `make all` - Build contract PDF
  - `make clean` - Remove build artifacts
  - `make view` - Build and open PDF
  - `make watch` - Continuous compilation (requires latexmk)
  - `make sample` - Build sample filled contract
  - `make check` - Verify LaTeX installation
  - `make help` - Display help information
- Two-pass pdflatex compilation for cross-references
- Automatic build directory creation
- Error handling and user-friendly output

#### Documentation
- Comprehensive README.md with:
  - Project overview and features
  - Prerequisites and installation instructions (Linux/Mac/Windows)
  - Build instructions (3 methods)
  - Placeholder filling guide (3 options)
  - Project structure documentation
  - Customization instructions
  - Troubleshooting guide
  - Legal disclaimer
  - Notarization guidance
  - Support and resources section
- `.gitignore` file for LaTeX build artifacts
- Inline code comments throughout LaTeX files
- Section headers explaining purpose of each file

#### Example Files
- `examples/sample-filled-contract.tex` - Complete example with:
  - Realistic fictional data (John Michael Smith, sample addresses)
  - Filled effective date (March 1, 2026)
  - Completed contact information
  - Demonstrates proper placeholder replacement
  - Simplified signature section for sample purposes

#### Custom Style Package (`styles/contract-style.sty`)
- Required package management (geometry, setspace, fancyhdr, etc.)
- Color definitions (PlaceholderRed, HeadingBlue, FooterGray)
- Professional page layout with headers and footers
- Legal document section formatting (3 levels)
- List formatting (enumerate with (a), (b), (c) style)
- 16 custom commands for contract elements
- Table column types for enhanced formatting
- Reusable legal language snippets
- Spacing helpers for consistent layout

### Technical Specifications
- **LaTeX Distribution**: Compatible with TeXLive 2023, MiKTeX, and Overleaf
- **Required Packages**: 11 packages (geometry, setspace, fancyhdr, tabularx, enumitem, xcolor, microtype, lastpage, titlesec, hyperref, array)
- **Document Class**: article (12pt, letterpaper)
- **Output Format**: PDF (202KB, 38 pages)
- **Total Lines of Code**: 1,862 lines of LaTeX
- **Compilation Time**: ~2-3 seconds (two-pass)
- **Cross-References**: Automatic section reference resolution

### File Structure
```
16 files created:
├── contract.tex (main document)
├── README.md (documentation)
├── CHANGES.md (this file)
├── Makefile (build automation)
├── .gitignore (version control)
├── styles/contract-style.sty (formatting)
├── sections/ (11 modular sections)
│   ├── parties.tex
│   ├── recitals.tex
│   ├── compensation.tex
│   ├── trial-period.tex
│   ├── knowledge-exchange.tex
│   ├── termination.tex
│   ├── confidentiality.tex
│   ├── liability.tex
│   ├── dispute-resolution.tex
│   ├── general-provisions.tex
│   └── signatures.tex
└── examples/sample-filled-contract.tex
```

### Design Decisions
- **Modular Architecture**: Each major contract section in separate file for maintainability
- **Placeholder Strategy**: Red-colored text with [FILL IN] markers for visibility
- **Professional Formatting**: Traditional legal document style appropriate for notarization
- **Oklahoma Compliance**: Notary acknowledgment language compliant with Oklahoma law
- **Build System**: Makefile for UNIX/Mac, with manual pdflatex instructions for Windows
- **Font Selection**: Computer Modern (LaTeX default) for professional appearance
- **Compilation Method**: pdflatex for maximum compatibility
- **Documentation**: Extensive README for non-LaTeX users
- **Legal Disclaimer**: Prominent "not legal advice" disclaimer throughout documentation

### Quality Assurance
- ✓ PDF builds successfully without errors
- ✓ All cross-references resolve correctly
- ✓ Page numbering displays "Page X of Y" on all pages
- ✓ Placeholder fields clearly visible in red
- ✓ All 11 sections properly formatted and numbered
- ✓ Table formatting displays correctly
- ✓ Signature blocks and notary sections have adequate space
- ✓ PDF metadata correctly populated
- ✓ Build system tested and functional
- ✓ Sample contract compiles successfully

### Known Issues
- None identified in initial release

### Future Enhancements Roadmap
- [ ] Version 1.1: Python script to fill placeholders from JSON configuration
- [ ] Version 1.2: Interactive PDF form fields for digital completion
- [ ] Version 2.0: Web interface for contract generation
- [ ] Additional contract templates (amendments, extensions, etc.)
- [ ] Multi-state notarization sections (beyond Oklahoma)

### Credits
- **Created for**: Heavenly Roofing LLC (3313 Elmo Way, Moore, Oklahoma 73160)
- **Initial Release**: February 28, 2026
- **LaTeX Framework**: Based on standard legal document patterns
- **License**: Provided as-is for Heavenly Roofing LLC business use

### Legal Notice
This contract template is provided for informational purposes only and does not constitute legal advice. Both parties should consult with qualified legal counsel before executing this agreement. The authors assume no liability for the legal enforceability or appropriateness of this agreement.

---

## Version History Summary

| Version | Date       | Changes                           | Pages | Files |
|---------|------------|-----------------------------------|-------|-------|
| 1.0.0   | 2026-02-28 | Initial release - Full contract   | 38    | 16    |

---

**Note**: For detailed usage instructions, see [README.md](README.md)
