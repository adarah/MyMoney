load("@rules_jvm_external//:specs.bzl", "maven")

def to_maven_testonly(deps):
    split_deps = [d.split(":") for d in deps]
    return [maven.artifact(testonly = True, *dep) for dep in split_deps]
