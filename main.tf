# -----------------------------------------------------------------------------
# EKS Ingress Controller
# -----------------------------------------------------------------------------
resource "helm_release" "aws-load-balancer-controller" {
  name = "eks"

  repository = "https://aws.github.io/eks-charts"
  chart      = "aws-load-balancer-controller"

  // values = [
  //   "${file("${path.module}/values.yml")}"
  // ]

  set {
    name  = "clusterName"
    value = var.clusterName
  }
  set {
    name  = "serviceAccount.create"
    value = false
  }
  // set {
  //   name  = "serviceAccount.name"
  //   value = "aws-load-balancer-controller"
  // }
}
