# envtpl

```
alias envtpl="docker run --rm -i --env-file env_config jsecchiero/envtpl"
echo TEST=prova > env_config
echo {{ TEST }} > template
cat template | envtpl > config
```
