BEGIN{
	tcp_count=0;
	udp_count=0;
}
{
	if($1=="d"&& $5=="tcp")
	       tcp_count++;
	if($1=="d"&&$5=="cdr")
	       udp_count++

}
END{
printf("Number of packet dropped in TCP %d\n",tcp_count);
printf("Number of packet dropped in UDP %d\n",udp_count);


}
