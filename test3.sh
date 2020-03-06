#!/bin/bash
 
#Shell Env
SHELL_NAME="deploy.sh"
SHELL_DIR="/home/www"
SHELL_LOG="${SHELL_DIR}/${SHELL_NAME}.log"
 
#Code Env
CODE_DIR="/deploy/code/deploy"
CONFIG_DIR="/deploy/config"
TMP_DIR="/deploy/tmp"
TAR_DIR="/deploy/tar"
 
usage(){
    echo  $"Usage: $0 [ deploy | rollback ]"
}
 
code_get(){
    echo code_get
}
 
code_build(){
    echo code_build
}
 
code_config(){
    echo code_config
}
 
code_tar(){
    echo code_tar
}
 
code_scp(){
    echo code_scp
}
 
cluster_node_remove(){
    echo cluster_node_remove
}
 
code_deploy(){
    echo code_deploy
}
 
config_diff(){
    echo config_diff
}
 
code_test(){
    echo code_test
}
 
cluster_node_in(){
    echo cluster_node_in
}
 
rollback(){
    echo rollback
}
 
main(){
    DEPLOY_METHOD=$1
    case $DEPLOY_METHOD in
    deploy)
            code_get;
            code_build;
            code_config;
            code_tar;
            code_scp;
            cluster_node_remove;
            code_deploy;
            config_diff;
            code_test;
            cluster_node_in;
            ;;
    rollback)
            rollback;
            ;;
    *)
            usage;
    esac
 
}
main $1