output "ansible_inventory" {
  value = templatefile("${path.module}/inventory.tftpl", {
    devops = hcloud_server.server_devops, k8s_servers = [hcloud_server.server_k8s_test]
  })
  depends_on = [hcloud_server.server_k8s_test, hcloud_server.server_k8s_test]
}