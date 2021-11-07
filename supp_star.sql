CREATE DEFINER=`root`@`localhost` PROCEDURE `supp_star`()
BEGIN
select supplier.SUPP_NAME,supplier.SUPP_id,rating.RAT_RATSTARS ,
Case
	when rating.RAT_RATSTARS> 4 then 'Genuine Supplier'
    when rating.RAT_RATSTARS >2 then 'Average Supplier'
    Else 'Supplier should not be considered'
End as verdict from rating inner join supplier on rating.SUPP_ID= supplier.SUPP_ID;
END