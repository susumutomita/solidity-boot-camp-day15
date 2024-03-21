.PHONY: install
install:
	solc-select install 0.8.24
	solc-select use 0.8.24

.PHONY: format
format:
	forge fmt

.PHONY: start_local_node
start_local_node:
	anvil

.PHONY: format_check
format_check:
	forge fmt --check

.PHONY: test
test:
	forge test --gas-report

.PHONY: test_watch
test_watch:
	forge test --gas-report --watch

.PHONY: test_debug
test_debug:
	forge test --gas-report -vvvvv --watch

.PHONY: examine_storage_Compare
examine_storage_Compare:
	sol2uml storage -c Compare src

.PHONY: examine_storage_CompareMinus
examine_storage_CompareMinus:
	sol2uml storage -c CompareMinus src

.PHONY: examine_storage_CompareAssembly
examine_storage_CompareAssembly:
	sol2uml storage -c CompareAssembly src

.PHONY: examine_storage_CompareUncheck
examine_storage_CompareUncheck:
	sol2uml storage -c CompareUncheck src

.PHONY: examine_class
examine_class:
	sol2uml src

.PHONY: open_class
open_class:
	open -a Google\ Chrome ./classDiagram.svg

.PHONY: opcodes_Compare
opcodes_Compare:
	solc --bin --opcodes --asm src/Compare.sol

.PHONY: opcodes_CompareMinus
opcodes_CompareMinus:
	solc --bin --opcodes --asm src/CompareMinus.sol

.PHONY: opcodes_CompareAssembly
opcodes_CompareAssembly:
	solc --bin --opcodes --asm src/CompareAssembly.sol

.PHONY: opcodes_CompareUncheck
opcodes_CompareUncheck:
	solc --bin --opcodes --asm src/CompareUncheck.sol

.PHONY: open_storage_Compare
open_storage_Compare:
	open -a Google\ Chrome ./Compare.svg

.PHONY: open_storage_CompareMinus
open_storage_CompareMinus:
	open -a Google\ Chrome ./CompareMinus.svg

.PHONY: open_storage_CompareAssembly
open_storage_CompareAssembly:
	open -a Google\ Chrome ./CompareAssembly.svg

.PHONY: open_storage_CompareUncheck
open_storage_CompareUncheck:
	open -a Google\ Chrome ./CompareUncheck.svg

.PHONY: examine_storage
examine_storage: examine_storage_Compare examine_storage_CompareMinus examine_storage_CompareAssembly examine_storage_CompareUncheck

.PHONY: before_commit
before_commit: format test examine_storage examine_class
