.PHONY: setup
setup:
	dart pub global activate fvm

.PHONY: dependencies
dependencies:
	fvm install
	fvm flutter pub get

.PHONY: generate
generate:
	fvm flutter packages pub run build_runner build

.PHONY: analyze
analyze:
	fvm flutter analyze

.PHONY: format 
format:
	fvm flutter format lib/

