COMMIT := d1e519f04207860d1e9ebfd600f9818e6ef39def
LICENSE_URL := https://github.com/apple/swift-package-manager/raw/$(COMMIT)/LICENSE.txt
SOURCE_URL := https://github.com/apple/swift-package-manager/raw/$(COMMIT)/TSC/Sources/TSCBasic/OrderedSet.swift
TEST_URL := https://github.com/apple/swift-package-manager/raw/$(COMMIT)/TSC/Tests/TSCBasicTests/OrderedSetTests.swift

SOURCES := \
	LICENSE.txt \
	Sources/OrderedSet/OrderedSet.swift \
	Tests/OrderedSetTests/OrderedSetTests.swift

all: $(SOURCES)
clean:
	rm $(SOURCES)

LICENSE.txt:
	@echo $@
	@curl -Lo $@ $(LICENSE_URL)

Sources/OrderedSet/OrderedSet.swift:
	@echo $@
	@echo "// From $(SOURCE_URL)" > $@
	@curl -L $(SOURCE_URL) | sed 's/private/internal/g' >> $@

Tests/OrderedSetTests/OrderedSetTests.swift:
	@echo $@
	@echo "// From $(TEST_URL)" > $@
	@curl -L $(TEST_URL) | sed 's/TSCBasic/OrderedSet/g' | sed '/^typealias/ d'  >> $@
