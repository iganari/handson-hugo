# Package hugo

## 作り方

+ 公式ドキュメント
  + https://gohugo.io/getting-started/quick-start/

## 

+ 作業のコンテナ起動
  + nginx のみが起動している状態

```
sh docker-build-run.sh 
```

+ コンテナにログインする ---> :whale:

```
docker exec -it $(cat docker-build-run.sh | grep _I_TAG | awk -F\' 'NR==1 {print $2}') /bin/ash
```
