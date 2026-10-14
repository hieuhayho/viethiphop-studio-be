#!/bin/bash
cd /home/viethiph/studio.viethiphop.vn/backend || exit 1
export NODE_ENV=production
export PORT=3000
export CL_VIRTUAL_ENV=/home/viethiph/nodevenv/studio.viethiphop.vn/backend/20
export NODE_PATH=/home/viethiph/nodevenv/studio.viethiphop.vn/backend/20/lib/node_modules:/opt/alt/alt-nodejs20/root/lib/node_modules:/opt/alt/alt-nodejs20/root/lib64/node_modules
export PATH=/home/viethiph/nodevenv/studio.viethiphop.vn/backend/20/bin:/opt/alt/alt-nodejs20/root/usr/bin:$PATH
nohup /opt/alt/alt-nodejs20/root/usr/bin/node -e 'require("./app.js")' >> /home/viethiph/studio.viethiphop.vn/backend/backend.log 2>&1 &
