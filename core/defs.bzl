load("@rules_jvm_external//:defs.bzl", "maven_install")

CORE_DEPS = [
    "javax.money:money-api:1.1",
    "org.javamoney:moneta:1.4.2",
]
