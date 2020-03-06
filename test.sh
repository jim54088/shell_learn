#!/bin/bash
#shell Env
SHELL_NAME="test.sh"
SHELL_DIR="home/www"
SHELL_LOG="${SHELL_DIR}/${SHELL_NAME}.log"

# COde Env
CODE_DIR="$/deploy/code/deploy"
CONFIG_DIR="/deploy/config"
TMP_DIR="deploy/tmp"
TAR_DIR="deploy/tar"
LOCK_FILE="/tmp/run/deploy.locked"

usage(){
        echo $"Usage: $0 [ deploy | rollback ]"
}

shell_lock() {
        touch ${LOCK_FILE}
}

shell_unlock() {
        rm -f ${LOCK_FILE}
}

code_get() {
     echo code_get
     sleep 60;
}

code_build() {
echo code_build
}

code_config() {
echo code_config
}

code_tar() {
echo code_tar
}

code_scp() {
echo code_scp
}

cluster_node_remove() {
echo cluster_node_remove
}

code_deploy() {
echo code_deploy
}

config_diff() {
echo config_diff
}

code_test() {
echo code_test
}

cluster_node_in() {
echo cluster_node_in
}

main() {
        if [ -f $LOCK_FILE ];then
        echo "Deploy is running" && exit;
        fi
     DEPLOY_METHOD=$1
     case $DEPLOY_METHOD in
     depend)
         shell_lock;
         code_get;
         code_build;
         code_config;
         code_tar;
         code_scp;
         cluster_node_remove;
         code_deploy;
         config_diff;
         code_test;
         cluster_node_in
         shell_unlock;
          ;;
    rollback)
             shell_lock;
        rollback;
             shell_unlock;
          ;; 
          *)
             usage;
        esac
} 
main $1
