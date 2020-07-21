default: build

.PHONY: build
build:
	./gradlew assemble
	cp app/build/outputs/apk/normal/release/app-normal-release-unsigned.apk .
	java -jar uber-apk-signer-1.1.0.jar -a app-normal-release-unsigned.apk

.PHONY: install
install:
	adb install app-normal-release-aligned-debugSigned.apk
