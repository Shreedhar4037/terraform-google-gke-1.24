resource "helm_release" "sysdig-agent" {
  name             = "sysdig-release"
  namespace        = "sysdig"
  create_namespace = true
  repository       = "https://harbor.onedev.neustar.biz/chartrepo/onedev-common"
  chart            = "sysdig-deploy"
  version          = "1.15.6"

  set {
    name  = "global.nodeAnalyzer.enabled"
    value = true
  }
  set {
    name  = "global.kspm.deploy"
    value = true
  }
  set {
    name  = "global.agent.enabled"
    value = true
  }
  set {
    name  = "nodeAnalyzer.nodeAnalyzer.hostScanner.deploy"
    value = true
  }
  set {
    name  = "agent.ebpf.enabled"
    value = true
  }

  set {
    name  = "admissionController.enabled"
    value = true
  }
  set {
    name  = "nodeAnalyzer.nodeAnalyzer.runtimeScanner.deploy"
    value = true
  }
  set {
    name  = "global.sysdig.accessKey"
    value = var.sysdig_agent_access_key
  }

  set {
    name  = "global.sysdig.secureAPIToken"
    value = var.sysdig_secure_api_token
  }

  set {
    name  = "global.sysdig.region"
    value = var.sysdig_region
  }

  set {
    name  = "global.clusterConfig.name"
    value = var.name
  }
}