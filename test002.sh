#!bin/bash

#shell Env
SHELL_MAME=test002.sh"
SHELL_DIR=“/Users/admin/Documents/shell_learn"
SHELL_LOG="${SHELL_DIR/$SHELL_MAME}.log"

#code Env
CODE_DIR="/Users/admin/Documents/deploy"
CONFIG_DIR="/Users/admin/Documents/config"
TMP_DIR="/Users/admin/Documents/tmp"
TAR_DIR="/Users/admin/Documents/tar"

usage(){
    echo $"usage: $0 [ deploy | rollback ]"
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

cluseter_node_remove(){
    echo cluseter_node_remove
}

code_deploy(){
    echo code_deploy
}
config_diff(){
    echo conig_diff
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
    case $1 in 
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
    esca

}
main $1
