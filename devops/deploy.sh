ssh -o StrictHostKeyChecking=no -i $SSH_PRV_KEY $HOST_USER@$HOST_IP 'mkdir -p static'
scp -o StrictHostKeyChecking=no -i $SSH_PRV_KEY build/logo.png $HOST_USER@$HOST_IP:/home/user/static/logo.png
scp -o StrictHostKeyChecking=no -i $SSH_PRV_KEY static/index.html $HOST_USER@$HOST_IP:/home/user/static/index.html
scp -o StrictHostKeyChecking=no -i $SSH_PRV_KEY nginx/nginx.conf $HOST_USER@$HOST_IP:/home/user/nginx.conf
ssh -o StrictHostKeyChecking=no -i $SSH_PRV_KEY $HOST_USER@$HOST_IP "echo $HOST_PASS| sudo -S cp /home/user/nginx.conf /etc/nginx/nginx.conf && 
    echo $HOST_PASS| sudo -S nginx -s reload"
