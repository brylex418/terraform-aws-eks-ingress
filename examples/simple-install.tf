#MODULE


module "ingress-controller" {
    source = "../../terraform-aws-eks-ingress"
    clusterName = var.clusterName
}
