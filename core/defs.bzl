load("@rules_jvm_external//:defs.bzl", "maven_install")
load("@rules_jvm_external//:specs.bzl", "maven")

def money_deps():
    return [
        "javax.money:money-api:1.1",
        "org.javamoney:moneta:1.4.2",
    ]

def test_deps():
    junit_platform_version = "1.8.2"
    return [
        maven.artifact(
            "org.junit.platform",
            "junit-platform-reporting",
            junit_platform_version,
            testonly = True,
        ),
        maven.artifact(
            "org.junit.platform",
            "junit-platform-launcher",
            junit_platform_version,
            testonly = True,
        ),
        maven.artifact(
            "org.junit.jupiter",
            "junit-jupiter-engine",
            "5.8.2",
            testonly = True,
        ),
        maven.artifact(
            "org.assertj",
            "assertj-core",
            "3.22.0",
            testonly = True,
        ),
    ]

CORE_DEPS = money_deps() + test_deps()
