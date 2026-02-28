# Makefile for Heavenly Roofing LLC Contract
# Builds a professional LaTeX contract document

# Variables
LATEX = /usr/bin/pdflatex
MAIN = contract
BUILD_DIR = build
OUTPUT = $(BUILD_DIR)/$(MAIN).pdf

# LaTeX compilation flags
LATEX_FLAGS = -interaction=nonstopmode -halt-on-error -output-directory=$(BUILD_DIR)

# Default target: build the contract
.PHONY: all
all: $(OUTPUT)

# Build the contract PDF
$(OUTPUT): $(MAIN).tex styles/contract-style.sty sections/*.tex
	@echo "Building contract PDF..."
	@mkdir -p $(BUILD_DIR)
	@$(LATEX) $(LATEX_FLAGS) $(MAIN).tex
	@echo "Running second pass for references..."
	@$(LATEX) $(LATEX_FLAGS) $(MAIN).tex > /dev/null
	@echo "Contract built successfully: $(OUTPUT)"

# Clean build artifacts
.PHONY: clean
clean:
	@echo "Cleaning build artifacts..."
	@rm -rf $(BUILD_DIR)
	@echo "Clean complete."

# Build and open the PDF
.PHONY: view
view: $(OUTPUT)
	@echo "Opening PDF..."
	@if command -v xdg-open > /dev/null; then \
		xdg-open $(OUTPUT); \
	elif command -v open > /dev/null; then \
		open $(OUTPUT); \
	else \
		echo "Please open $(OUTPUT) manually"; \
	fi

# Continuous compilation (requires latexmk)
.PHONY: watch
watch:
	@echo "Starting continuous compilation (Ctrl+C to stop)..."
	@mkdir -p $(BUILD_DIR)
	@if command -v latexmk > /dev/null; then \
		latexmk -pdf -pvc -output-directory=$(BUILD_DIR) -interaction=nonstopmode $(MAIN).tex; \
	else \
		echo "Error: latexmk not found. Install with: sudo apt install latexmk"; \
		exit 1; \
	fi

# Build sample filled contract
.PHONY: sample
sample:
	@echo "Building sample filled contract..."
	@mkdir -p $(BUILD_DIR)
	@$(LATEX) $(LATEX_FLAGS) examples/sample-filled-contract.tex
	@$(LATEX) $(LATEX_FLAGS) examples/sample-filled-contract.tex > /dev/null
	@echo "Sample contract built: $(BUILD_DIR)/sample-filled-contract.pdf"

# Check LaTeX installation
.PHONY: check
check:
	@echo "Checking LaTeX installation..."
	@command -v pdflatex > /dev/null && echo "✓ pdflatex found" || echo "✗ pdflatex not found"
	@command -v latexmk > /dev/null && echo "✓ latexmk found (optional)" || echo "○ latexmk not found (optional, for watch target)"
	@echo ""
	@echo "Required LaTeX packages:"
	@echo "  - geometry, setspace, fancyhdr, tabularx, enumitem"
	@echo "  - xcolor, microtype, lastpage, titlesec, hyperref"
	@echo ""
	@echo "If packages are missing, install with:"
	@echo "  TeXLive: sudo tlmgr install <package-name>"
	@echo "  MiKTeX:  Packages will auto-install on first compile"

# Help target
.PHONY: help
help:
	@echo "Heavenly Roofing LLC Contract - Build System"
	@echo ""
	@echo "Available targets:"
	@echo "  make          - Build the contract PDF (default)"
	@echo "  make all      - Same as make"
	@echo "  make clean    - Remove all build artifacts"
	@echo "  make view     - Build and open the PDF"
	@echo "  make watch    - Continuous compilation (requires latexmk)"
	@echo "  make sample   - Build the sample filled contract"
	@echo "  make check    - Verify LaTeX installation"
	@echo "  make help     - Show this help message"
