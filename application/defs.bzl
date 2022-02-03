load("@rules_jvm_external//:defs.bzl", "maven_install")

def application_deps():
    maven_install(
        artifacts = [
            "org.springframework.boot:spring-boot-starter-web:2.6.3",
        ],
        fail_if_repin_required = True,
        fetch_sources = True,
        maven_install_json = "//maven_install.json",
        repositories = ["https://repo1.maven.org/maven2"],
    )
