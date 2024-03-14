create or replace function Fverificartexto(P_texto varchar(80)
	P_car varchar(1)) returns int as 
$$
declare indice numeric(2);
		total numeric(2);
begin
	total:=0; 
	for indice in 1..length(P_texto)
	loop
		if(substring(P_texto, indice,1)=P_car) then
		total:=total+1;
	end if;
	end loop;
	return total;
end;
$$ language plpgsql;

					   
