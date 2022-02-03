java_library(
    name = "mymoneyapplication",
    srcs = glob(["src/main/**/*.java"]),
    deps = [
        "//core",
        "@maven//:org_springframework_boot_spring_boot",
        "@maven//:org_springframework_boot_spring_boot_autoconfigure",
        "@maven//:org_springframework_boot_spring_boot_starter_web",
    ],
)

load("@rules_spring//springboot:springboot.bzl", "springboot")

springboot(
    name = "application",
    bazelrun_jvm_flags = "-Dspring.profiles.active=dev",
    boot_app_class = "MyMoneyApplication",
    java_library = ":mymoneyapplication",
)
