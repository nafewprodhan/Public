gen qYear = qofd( Time )
format qYear %tq
egen quarter_id = group( qYear )
collapse (sum) Work Men Women PWDMen PWDWomen, by( qYear)
// gen reached_GBV = round( ReachedwithGBVprevention)
tsset qYear
tsline Work Men Women PWDMen PWDWomen, tlabel(2021q1(1)2023q1)

