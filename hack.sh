#!/usr/bin/env bash

sed -i 's/--timeout=120/--timeout=300/' hack/make-rules/test.sh
sed -i 's/export KUBE_RACE/#export KUBE_RACE/' ./hack/jenkins/test-dockerized.sh
sed -i 's/WORKSPACE/PWD/' ./hack/jenkins/test-dockerized.sh
sed -i '/install-etcd/d' ./hack/jenkins/test-dockerized.sh
sed -i "s|k8s.gcr.io/serve_hostname|gcr.io/kubernetes-e2e-test-images/serve-hostname-s390x:1.2|" test/fixtures/doc-yaml/admin/limitrange/valid-pod.yaml
sed -i 's/exceeded/or context cancellation/' test/cmd/request-timeout.sh
sed -i "54s/--version/--version | grep Version/" hack/lib/etcd.sh
