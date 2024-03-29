scp -o StrictHostKeyChecking=no -i $SSH_PRV_KEY nginx/nginx.conf $HOST_USER@$HOST_IP:/home/user/nginx.conf
ssh -o StrictHostKeyChecking=no -i $SSH_PRV_KEY $HOST_USER@$HOST_IP "echo $HOST_PASS| sudo -S nginx -t -c /home/user/nginx.conf"
