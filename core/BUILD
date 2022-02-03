load("@rules_jvm_external//:defs.bzl", "artifact")

java_library(
    name = "core",
    srcs = glob(["src/main/**/*.java"]),
    visibility = ["//application:__pkg__"],
    runtime_deps = [
        artifact("org.javamoney:moneta"),
    ],
    deps = [
        artifact("javax.money:money-api"),
    ],
)

load("@contrib_rules_jvm//java:defs.bzl", "java_test_suite")
load("@contrib_rules_jvm//java:defs.bzl", "JUNIT5_DEPS")

java_test_suite(
    name = "core-test",
    size = "small",
    srcs = glob(["src/test/java/**/*.java"]),
    runner = "junit5",
    runtime_deps = JUNIT5_DEPS,
    deps = [
        ":core",
        artifact("org.junit.jupiter:junit-jupiter-api"),
        artifact("org.assertj:assertj-core"),
    ],
)
