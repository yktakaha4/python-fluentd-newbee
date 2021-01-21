# python-fluentd-newbie

こちらを参考に

https://docs.fluentd.org/container-deployment/docker-compose
https://docs.fluentd.org/output/s3

```shell
# 起動
$ docker-compose up

# サービスへリクエスト
$ curl "http://localhost:80/?query="[1-100]

# S3のログを確認
$ ./show_s3_logs.sh
```
