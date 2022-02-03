load("//:common.bzl", "to_maven_testonly")

def money_deps():
    return [
        "javax.money:money-api:1.1",
        "org.javamoney:moneta:1.4.2",
    ]

def test_deps():
    junit_platform_version = "1.8.2"
    deps = [
        "org.junit.platform:junit-platform-reporting:{}".format(junit_platform_version),
        "org.junit.platform:junit-platform-launcher:{}".format(junit_platform_version),
        "org.junit.jupiter:junit-jupiter-engine:5.8.2",
        "org.assertj:assertj-core:3.22.0",
    ]
    return to_maven_testonly(deps)

CORE_DEPS = money_deps() + test_deps()
