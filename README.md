- The Kibana module isn't working right. Once the VMs are started and provisioned, ssh into the kibana box and modify /opt/kibana/config.js line 33 to point to http://10.211.55.33:9200 and then restartapache.
