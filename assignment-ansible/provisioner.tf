resource "null_resource" "ansible_provisioner" {
  provisioner "local-exec" {
    command = "ansible-playbook -i /Users/N01650374/automation/ansible/hosts /Users/N01650374/automation/ansible/n01650374-playbook.yml"
  }

  depends_on = [
    module.rgroup-n01650374,
    module.datadisk-n01650374,
    module.vmlinux-n01650374
  ]
}

