#!/bin/sh
INITIAL_AUTHORIZED_KEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDSBy5nQoq3oiA/T/31x9H/zWX5VplKkutGbxAdZKdIZ1ZzCemTBq1VAe0YH1qr9XMNvy2IVnv/tT6zq3gEkei/AfkQIUsHnev4P37pQxP793YXykk5sl8692yso2cwmi0FbBK5ireLwYH8UR7pdpl4SgZiGMVkMHx5fH0klgEr7fddFoOmuuPOJ2V601eqAsqDKE2EBT7NvlmoBUQQm9tUuW3/smZiuovlJLa0cFKTQvHB1HKpDdrffnhpW7sSEKQPJMEWW2Gej8RE8zyVfOuKAPYwu47WrOYIUDCrM84B1Px8APJ7wCfboLDFf2IKpa30H9hkSTWIIc+8sqYOh53ytdhpBTO/KTuKBdeQvY6ISSnsEFOdSne2O/qZ04YNz3dXljOEdh3W1mo6Oy7JrceVdi85Tsl8Una0Z5mf8zMJugs6mbKtuty4pVrKtaDy5hJMRxc732BEMgfaTrqaRPId44glGr9X0H5gVjRTaO/P/wY/OQ6Y1glo2fn/zkjSXOyx3AHc33mZ7tQDs4cczOVkk+CdKbGG9AlfNwq1mfLjSG/GoppsNoaPtdsq385f5iCC5VRcIo/j8NZNAOOoTDaO1Nx3Qzt3inuP+Z8iJoY+dhBYdDYw7MDklhmMwj9mGIyIGLuDL19hEZ8AsuC7ZovdqBY3EarcuOYnQALLo9Lq5w== Clé pour le custom cloud"

apt-get install sudo

echo 'Defaults env_reset' | tee -a /etc/sudoers
echo 'Defaults secure_path="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"' | tee -a /etc/sudoers

adduser ansible --shell /bin/bash --disabled-password --gecos ""
mkdir -p /home/ansible/.ssh/
chown ansible .ssh/
echo $INITIAL_AUTHORIZED_KEY >> /home/ansible/.ssh/authorized_keys
echo 'ansible ALL=(ALL) NOPASSWD:ALL' | tee -a /etc/sudoers