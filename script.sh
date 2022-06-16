cat data | while read x 
do 
    seq 10 | while read n
    do
        echo $n $x
        curl -X POST \
             -H "Host: api.aicloud.sbercloud.ru" \
             -H "Origin: https://russiannlp.github.io" \
             -H "Content-Type: application/json" \
             -H "Accept-Language: ru-RU,ru;q=0.8,en-US;q=0.5,en;q=0.3" \
             -H "Accept-Encoding: gzip, deflate, br"  \
             -A "Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:100.0) Gecko/20100101 Firefox/100.0" \
             -d "{\"text\":\"$x\"}" \
             -e https://russiannlp.github.io/ \
             https://api.aicloud.sbercloud.ru/public/v1/public_inference/gpt3/predict \
             > "$n $x.json"
        sleep 5
    done
done
-H "Content-Length: 19" \
