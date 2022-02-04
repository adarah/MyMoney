load("//:common.bzl", "to_maven_neverlink", "to_maven_testonly")

def deps():
    return [
        "javax.money:money-api:1.1",
        "org.javamoney:moneta:1.4.2",
        "org.springframework.boot:spring-boot-starter-data-jpa:2.6.3",
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

def compile_time_deps():
    deps = [
        "org.projectlombok:lombok:1.18.22",
        "org.springframework:spring-context-indexer:5.3.15",
    ]
    return to_maven_neverlink(deps)

CORE_DEPS = deps() + compile_time_deps() + test_deps()
