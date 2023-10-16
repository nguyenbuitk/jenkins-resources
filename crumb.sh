crumb=$(curl -u "jenkins:1234" -s 'http://poc-lead.ovng.dev.myovcloud.com:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)')
# curl -u "jenkins:1234" -H "$crumb" -X POST http://jenkins.local:8080/job/ENV/build?delay=0sec
curl -u "jenkins:1234" -H "$crumb" -X POST  http://poc-lead.ovng.dev.myovcloud.com:8080/job/push-backup-to-s3/buildWithParameters?DB_HOST=db&DB_NAME=testdb&AWS_BUCKET_NAME=bnnguyen-jenkins-mysql-backup
