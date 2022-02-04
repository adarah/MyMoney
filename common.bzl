load("@rules_jvm_external//:specs.bzl", "maven")

def _to_maven_attr(deps, **kwargs):
    split_deps = [d.split(":") for d in deps]
    return [maven.artifact(*dep, **kwargs) for dep in split_deps]

def to_maven_neverlink(deps):
    return _to_maven_attr(deps, neverlink = True)

def to_maven_testonly(deps):
    return _to_maven_attr(deps, testonly = True)
