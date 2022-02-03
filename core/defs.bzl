load("@rules_jvm_external//:defs.bzl", "maven_install")

def core_deps():
    maven_install(
        fail_if_repin_required = True,
        fetch_sources = True,
        maven_install_json = "maven_install.json",
        repositories = ["https://repo1.maven.org/maven2"],
    )
