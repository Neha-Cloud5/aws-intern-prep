myfunction(){
sum=$(( $1 + $2 ))
echo $sum
}
result=$(myfunction 5 7)
echo "Result is $result"

