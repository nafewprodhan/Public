// ********** GBV ********** //

// association between Sex and receiving type of GBV services from CARE
mrtab C2_1- C2_6 if B10_1 ==1 , by( B2 ) mtest chi2 cell nofreq noname
mrtab C2_1- C2_6 if B10_1 ==1 , by( Gender ) mtest chi2 cell nofreq noname


// ********** SRH ********** //




// ********** DRR ********** //

// association between sex and participation in DRR activities as cash-for-work laborers
tab B2 E2 if B10_4 == 1, chi2 cell nofreq
mrtab Gender, by(E2) cell nofreq mtest chi2


// ********** WASH ********** //
// association between disability status and WASH facilities access
tab B3_1 F4 if B10_3 == 1 , chi2    //not significant

mrtab F1_1-F1_5 if B10_3==1 , by(Gender) cell nofreq mtest chi2 noname


mrtab C2_1- C2_6 if B10_3==1 , by(Gender) mtest chi2 noname


// association between Individuals who received CARE services and their rating
mrtab B10_1 B10_2 B10_3 B10_4, by( Q) mtest chi2 noname row nofreq sort