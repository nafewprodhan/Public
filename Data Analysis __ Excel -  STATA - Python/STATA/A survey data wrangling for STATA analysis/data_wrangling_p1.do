clear all
set more off

cd "C:\Users\USER\OneDrive\Documents\495__data_cleaning"

import excel "C:\Users\USER\OneDrive\Documents\495__data_cleaning\Stata-dataset.xlsx", sheet("Stata-Dataset") firstrow

save stata_initial, replace


*** Generating variables for multiple responses with missing values


//g
gen g__mobile = .
gen g__desktop = .
gen g__tab = .
gen g__laptop = .
gen g__none = .


//i
gen i__broad_wifi = .
gen i__mob_data = .


//r
gen r__others = .
gen r__bat_of_bio = .
gen r__10_ms = .
gen r__fore_yt_cha = .
gen r__ind_teacher = .
gen r__onno_path = .
gen r__not_using_any = .
gen r__acs = .
gen r__bond_path = .
gen r__sikho = .
gen r__edg_cou = .
gen r__fah_tut = .
gen r__tec_eas_edu = .
gen r__boni_amin = .
gen r__phy_maniac = .
gen r__bio_hat = .
gen r__roots_edu = .

//s
gen s__physics = .
gen s__chemistry = .
gen s__math_higher_math = .
gen s__biology = .
gen s__english = .
gen s__ben_soc_sci_islam = .
gen s__economics = .
gen s__none = .
gen s__science = .
gen s__accounting = .
gen s__marketing = .
gen s__logic = .
gen s__fin_banking = .
gen s__ict = .

//t
gen t__off_seminer = .
gen t__soc_media = .
gen t__siblings = .
gen t__friends = .
gen t__parents = .
gen t__poster = .

//w
gen w__rec_cls = .
gen w__onl_quiz = .
gen w__lec_sht = .
gen w__anim_vid = .
gen w__none = .
gen w__short = .
gen w__live_cls = .
gen w__pause_rewind = .
gen w__int_topic = .
gen w__prob_solving = .

//x
gen x__rec_vid = .
gen x__gd_teach = .
gen x__cov_ever = .
gen x__sugg = .
gen x__sav_time = .
gen x__onl_quiz = .
gen x__not_using = .
gen x__stuck_topic = .
gen x__complement = .
gen x__no_travel = .
gen x__affordable = .
gen x__teach_shortage = .

//z
gen z__bat_bio = .
gen z__network = .
gen z__por_pabel = .
gen z__10_ms = .
gen z__udvash = .
gen z__acs = .
gen z__edge_cou = .
gen z__tech_eas_edu = .
gen z__fahad_tut = .
gen z__phy_maniac = .
gen z__boni_amin = .
gen z__bondhi_path = .
gen z__not_using_any = .
gen z__bio_haters = .
gen z__roots_edu = .
gen z__sikho = .
gen z__ind_teacher = .

//zc
gen zc__eff_exam = .
gen zc__ask_que = .
gen zc__coac_cen = .
gen zc__fac_fac = .
gen zc__socialization = .
gen zc__shadow_bett = .
gen zc__pressure = .
gen zc__not_offline = .
gen zc__parent_neg = .
gen zc__broad_persp = .
gen zc__child_habit = .

//ze
gen ze__lack_conc = .
gen ze__face_face = .
gen ze__not_appl = .
gen ze__no_internet = .
gen ze__self_assess = .
gen ze__ask_ques = .
gen ze__insuf_cont = .
gen ze__lack_focus = .
gen ze__no_interc = .
gen ze__parent_disag = .
gen ze__expensive = .




*** Defining label variables ***

label variable A "Which class are you in?"
label variable B "Gender"
label variable C "Division of School"
label variable D "Rural or Urban area"
label variable E "Which group"
label variable F "House rent"
label variable G "Currently using device"
label variable g__mobile "Mobile"
label variable g__desktop "Desktop"
label variable g__tab "Tab"
label variable g__laptop "Laptop"
label variable g__none "Not any"
label variable H "Broadband connection in your area"
label variable i__broad_wifi "Broadband/ WiFi"
label variable i__mob_data "Mobile Data"
label variable K "Grade of Mathmatics"
label variable L "Engage in regular study"
label variable M "Medium of study"
label variable N "Self effication"
label variable O "Satisfaction of with the quality of education provided by school and college"
label variable Q "Tuition fees of school"
label variable r__others "others"
label variable r__bat_of_bio "Battles of Biology"
label variable r__10_ms "10 Minute School"
label variable r__fore_yt_cha "Foreign youtube channel"
label variable r__ind_teacher "Individual teacher"
label variable r__onno_path "Onnorokom pathasala"
label variable r__not_using_any "Currently not using any E-learning platform"
label variable r__acs "ACS"
label variable r__bond_path "Bondhi pathsala"
label variable r__sikho "Sikho"
label variable r__edg_cou "Edge course"
label variable r__fah_tut "Fahad's tutorial"
label variable r__tec_eas_edu "Technique Easy Education"
label variable r__boni_amin "Boni Amin Apu medcial"
label variable r__phy_maniac "Physics Maniac"
label variable r__bio_hat "Biology Haters"
label variable r__roots_edu "Roots Edu"
label variable s__physics "Physics"
label variable s__chemistry "Chemistry"
label variable s__math_higher_math "Math/Higher Math"
label variable s__biology "Biology"
label variable s__english "English"
label variable s__ben_soc_sci_islam "Bengali/Social Science/Islam"
label variable s__economics "Economics"
label variable s__none "None"
label variable s__science "Science"
label variable s__accounting "Accounting"
label variable s__marketing "Marketing"
label variable s__logic "Logic"
label variable s__fin_banking "Finance and Banking"
label variable s__ict "ICT"
label variable t__off_seminer "Offline Seminer/Event"
label variable t__soc_media "Social Media"
label variable t__siblings "Siblings"
label variable t__friends "Friends"
label variable t__parents "Parents"
label variable t__poster "Poster"
label variable U "Uses of e-learning platform per month"
label variable V "Parents positive perception"
label variable w__rec_cls "Recorded class"
label variable w__onl_quiz "Online quiz"
label variable w__lec_sht "Lecture sheet"
label variable w__anim_vid "Animated Video"
label variable w__none "None"
label variable w__short "Short explanation(written format preferred)"
label variable w__live_cls "Live class"
label variable w__pause_rewind "Pause and rewind option"
label variable w__int_topic "Interactive topic based learning"
label variable w__prob_solving "Problem solving class"
label variable x__rec_vid "Learning through recording at anytime"
label variable x__gd_teach "For famous/good teachers,"
label variable x__cov_ever "It covers everything in detail from basics"
label variable x__sugg "Suggestion"
label variable x__sav_time "Saves time"
label variable x__onl_quiz "Online quizzes/ exams"
label variable x__not_using "Not applicable (if you do not use an e-learning platform)"
label variable x__stuck_topic "If I get seriously stuck in a topic"
label variable x__complement "Basically, they tend to work as auxiliary and secondary means for competitive learning by their unique approach."
label variable x__no_travel "There is no need to commute to coaching centers"
label variable x__affordable "It can be done at a low cost"
label variable x__teach_shortage "We don't have good teachers in our area."
label variable Y "E-learning platforms make positive impact on academic performace"
label variable z__bat_bio "Battles of Biology"
label variable z__network "Network"
label variable z__por_pabel "Poralehka and pabel"
label variable z__10_ms "10 MS"
label variable z__udvash "Udvash"
label variable z__acs "ACS"
label variable z__edge_cou "Edge Course"
label variable z__tech_eas_edu "Technique Easy Education"
label variable z__fahad_tut "Fahad's Tutorial"
label variable z__phy_maniac "Physics Maniac"
label variable z__boni_amin "Boni Amin Apu medcial"
label variable z__bondhi_path "Bondhi Pathsala"
label variable z__not_using_any "Not using any e-learning platform at the moment"
label variable z__bio_haters "Biology Haters"
label variable z__roots_edu "Roots Edu"
label variable z__sikho "Sikho"
label variable z__ind_teacher "Individual teacher"
label variable ZA "Total spending on e-learning platform"
label variable ZB "Satisfaction with e-learning platforms"
label variable zc__eff_exam "I find direct examinations to be more effective."
label variable zc__ask_que "I can ask questions to teachers anytime during class."
label variable zc__coac_cen "Coaching centers gives time as per needed"
label variable zc__fac_fac "I understand the study material better face-to-face."
label variable zc__socialization "I can study with friends or socialize after class."
label variable zc__shadow_bett "In comparison to e-learning platforms, coaches/private tutors are better at teaching"
label variable zc__pressure "There is pressure to perform when studying at a coaching center or with a home tutor."
label variable zc__not_offline "I don't study offline."
label variable zc__parent_neg "Parents think that studying online wastes more time on social media or other websites."
label variable zc__broad_persp "To gain a broader perspective of the overall situation and firsthand experiences."
label variable zc__child_habit "Childhood habit"
label variable ZD "Socialization with teachers and friends"
label variable ze__lack_conc "When using the e-learning platform, I can't concentrate (let's start using Facebook)."
label variable ze__face_face "I understand better when studying face-to-face."
label variable ze__not_appl "Not applicable (if using an e-learning platform)."
label variable ze__no_internet "I don't have a good internet connection."
label variable ze__self_assess "Self-assessment through online exams is not possible to check."
label variable ze__ask_ques "Can't ask questions properly in online classes."
label variable ze__insuf_cont "Lack of necessary good content."
label variable ze__lack_focus "I can't focus in online classes."
label variable ze__no_interc "There is no such interaction in online classes."
label variable ze__parent_disag "My parents don't prefer studying using mobile"
label variable ze__expensive "The courses are expensive"


*** replace the old value into new generated value for regression ***

//g
replace g__mobile = 1 if G_1 == 1 | G_2 == 1 | G_3 == 1 | G_4 == 1
replace g__desktop = 1 if G_1 == 2 | G_2 == 2 | G_3 == 2 | G_4 == 2
replace g__tab = 1 if G_1 == 3 | G_2 == 3 | G_3 == 3 | G_4 == 3
replace g__laptop = 1 if G_1 == 4 | G_2 == 4 | G_3 == 4 | G_4 == 4
replace g__none = 1 if G_1 == 5 | G_2 == 5 | G_3 == 5 | G_4 == 5


//i
replace i__broad_wifi = 1 if I_1 == 1 | I_2 == 1
replace i__mob_data = 1 if I_1 == 2 | I_2 == 2


//r
replace r__others = 1 if R_1 == 0 | R_2 == 0 | R_3 == 0 | R_4 == 0 | R_5 == 0 | R_6 == 0 | R_7 == 0 | R_8 == 0 | R_9 == 0 | R_10 == 0
replace r__bat_of_bio = 1 if R_1 == 1 | R_2 == 1 | R_3 == 1 | R_4 == 1 | R_5 == 1 | R_6 == 1 | R_7 == 1 | R_8 == 1 | R_9 == 1 | R_10 == 1
replace r__10_ms = 1 if R_1 == 2 | R_2 == 2 | R_3 == 2 | R_4 == 2 | R_5 == 2 | R_6 == 2 | R_7 == 2 | R_8 == 2 | R_9 == 2 | R_10 == 2
replace r__fore_yt_cha = 1 if R_1 == 3 | R_2 == 3 | R_3 == 3 | R_4 == 3 | R_5 == 3 | R_6 == 3 | R_7 == 3 | R_8 == 3 | R_9 == 3 | R_10 == 3        
replace r__ind_teacher = 1 if R_1 == 4 | R_2 == 4 | R_3 == 4 | R_4 == 4 | R_5 == 4 | R_6 == 4 | R_7 == 4 | R_8 == 4 | R_9 == 4 | R_10 == 4        
replace r__onno_path = 1 if R_1 == 5 | R_2 == 5 | R_3 == 5 | R_4 == 5 | R_5 == 5 | R_6 == 5 | R_7 == 5 | R_8 == 5 | R_9 == 5 | R_10 == 5
replace r__not_using_any = 1 if R_1 == 6 | R_2 == 6 | R_3 == 6 | R_4 == 6 | R_5 == 6 | R_6 == 6 | R_7 == 6 | R_8 == 6 | R_9 == 6 | R_10 == 6      
replace r__acs = 1 if R_1 == 7 | R_2 == 7 | R_3 == 7 | R_4 == 7 | R_5 == 7 | R_6 == 7 | R_7 == 7 | R_8 == 7 | R_9 == 7 | R_10 == 7
replace r__bond_path = 1 if R_1 == 8 | R_2 == 8 | R_3 == 8 | R_4 == 8 | R_5 == 8 | R_6 == 8 | R_7 == 8 | R_8 == 8 | R_9 == 8 | R_10 == 8
replace r__sikho = 1 if R_1 == 9 | R_2 == 9 | R_3 == 9 | R_4 == 9 | R_5 == 9 | R_6 == 9 | R_7 == 9 | R_8 == 9 | R_9 == 9 | R_10 == 9
replace r__edg_cou = 1 if R_1 == 10 | R_2 == 10 | R_3 == 10 | R_4 == 10 | R_5 == 10 | R_6 == 10 | R_7 == 10 | R_8 == 10 | R_9 == 10 | R_10 == 10  
replace r__fah_tut = 1 if R_1 == 11 | R_2 == 11 | R_3 == 11 | R_4 == 11 | R_5 == 11 | R_6 == 11 | R_7 == 11 | R_8 == 11 | R_9 == 11 | R_10 == 11  
replace r__tec_eas_edu = 1 if R_1 == 12 | R_2 == 12 | R_3 == 12 | R_4 == 12 | R_5 == 12 | R_6 == 12 | R_7 == 12 | R_8 == 12 | R_9 == 12 | R_10 == 12
replace r__boni_amin = 1 if R_1 == 13 | R_2 == 13 | R_3 == 13 | R_4 == 13 | R_5 == 13 | R_6 == 13 | R_7 == 13 | R_8 == 13 | R_9 == 13 | R_10 == 13
replace r__phy_maniac = 1 if R_1 == 14 | R_2 == 14 | R_3 == 14 | R_4 == 14 | R_5 == 14 | R_6 == 14 | R_7 == 14 | R_8 == 14 | R_9 == 14 | R_10 == 14
replace r__bio_hat = 1 if R_1 == 15 | R_2 == 15 | R_3 == 15 | R_4 == 15 | R_5 == 15 | R_6 == 15 | R_7 == 15 | R_8 == 15 | R_9 == 15 | R_10 == 15  
replace r__roots_edu = 1 if R_1 == 16 | R_2 == 16 | R_3 == 16 | R_4 == 16 | R_5 == 16 | R_6 == 16 | R_7 == 16 | R_8 == 16 | R_9 == 16 | R_10 == 16


//s
replace s__physics = 1 if S_1 == 1 | S_2 == 1 | S_3 == 1 | S_4 == 1 | S_5 == 1 | S_6 == 1
replace s__chemistry = 1 if S_1 == 2 | S_2 == 2 | S_3 == 2 | S_4 == 2 | S_5 == 2 | S_6 == 2
replace s__math_higher_math = 1 if S_1 == 3 | S_2 == 3 | S_3 == 3 | S_4 == 3 | S_5 == 3 | S_6 == 3
replace s__biology = 1 if S_1 == 4 | S_2 == 4 | S_3 == 4 | S_4 == 4 | S_5 == 4 | S_6 == 4
replace s__english = 1 if S_1 == 5 | S_2 == 5 | S_3 == 5 | S_4 == 5 | S_5 == 5 | S_6 == 5
replace s__ben_soc_sci_islam = 1 if S_1 == 6 | S_2 == 6 | S_3 == 6 | S_4 == 6 | S_5 == 6 | S_6 == 6
replace s__economics = 1 if S_1 == 7 | S_2 == 7 | S_3 == 7 | S_4 == 7 | S_5 == 7 | S_6 == 7
replace s__none = 1 if S_1 == 8 | S_2 == 8 | S_3 == 8 | S_4 == 8 | S_5 == 8 | S_6 == 8
replace s__science = 1 if S_1 == 9 | S_2 == 9 | S_3 == 9 | S_4 == 9 | S_5 == 9 | S_6 == 9
replace s__accounting = 1 if S_1 == 10 | S_2 == 10 | S_3 == 10 | S_4 == 10 | S_5 == 10 | S_6 == 10
replace s__marketing = 1 if S_1 == 11 | S_2 == 11 | S_3 == 11 | S_4 == 11 | S_5 == 11 | S_6 == 11
replace s__logic = 1 if S_1 == 12 | S_2 == 12 | S_3 == 12 | S_4 == 12 | S_5 == 12 | S_6 == 12
replace s__fin_banking = 1 if S_1 == 13 | S_2 == 13 | S_3 == 13 | S_4 == 13 | S_5 == 13 | S_6 == 13
replace s__ict = 1 if S_1 == 14 | S_2 == 14 | S_3 == 14 | S_4 == 14 | S_5 == 14 | S_6 == 14


//t
replace t__off_seminer = 1 if T_1 == 1 | T_2 == 1 | T_3 == 1 | T_4 == 1 | T_5 == 1 | T_6 == 1
replace t__soc_media = 1 if T_1 == 2 | T_2 == 2 | T_3 == 2 | T_4 == 2 | T_5 == 2 | T_6 == 2
replace t__siblings = 1 if T_1 == 3 | T_2 == 3 | T_3 == 3 | T_4 == 3 | T_5 == 3 | T_6 == 3
replace t__friends = 1 if T_1 == 4 | T_2 == 4 | T_3 == 4 | T_4 == 4 | T_5 == 4 | T_6 == 4
replace t__parents = 1 if T_1 == 5 | T_2 == 5 | T_3 == 5 | T_4 == 5 | T_5 == 5 | T_6 == 5
replace t__poster = 1 if T_1 == 6 | T_2 == 6 | T_3 == 6 | T_4 == 6 | T_5 == 6 | T_6 == 6


//w
replace w__rec_cls = 1 if W_1 == 1 | W_2 == 1 | W_3 == 1 | W_4 == 1 | W_5 == 1 | W_6 == 1 | W_7 == 1 | W_8 == 1
replace w__onl_quiz = 1 if W_1 == 2 | W_2 == 2 | W_3 == 2 | W_4 == 2 | W_5 == 2 | W_6 == 2 | W_7 == 2 | W_8 == 2
replace w__lec_sht = 1 if W_1 == 3 | W_2 == 3 | W_3 == 3 | W_4 == 3 | W_5 == 3 | W_6 == 3 | W_7 == 3 | W_8 == 3
replace w__anim_vid = 1 if W_1 == 4 | W_2 == 4 | W_3 == 4 | W_4 == 4 | W_5 == 4 | W_6 == 4 | W_7 == 4 | W_8 == 4
replace w__none = 1 if W_1 == 5 | W_2 == 5 | W_3 == 5 | W_4 == 5 | W_5 == 5 | W_6 == 5 | W_7 == 5 | W_8 == 5
replace w__short = 1 if W_1 == 6 | W_2 == 6 | W_3 == 6 | W_4 == 6 | W_5 == 6 | W_6 == 6 | W_7 == 6 | W_8 == 6
replace w__live_cls = 1 if W_1 == 7 | W_2 == 7 | W_3 == 7 | W_4 == 7 | W_5 == 7 | W_6 == 7 | W_7 == 7 | W_8 == 7
replace w__pause_rewind = 1 if W_1 == 8 | W_2 == 8 | W_3 == 8 | W_4 == 8 | W_5 == 8 | W_6 == 8 | W_7 == 8 | W_8 == 8
replace w__int_topic = 1 if W_1 == 9 | W_2 == 9 | W_3 == 9 | W_4 == 9 | W_5 == 9 | W_6 == 9 | W_7 == 9 | W_8 == 9
replace w__prob_solving = 1 if W_1 == 10 | W_2 == 10 | W_3 == 10 | W_4 == 10 | W_5 == 10 | W_6 == 10 | W_7 == 10 | W_8 == 10


//x
replace x__rec_vid = 1 if X_1 == 1 | X_2 == 1 | X_3 == 1 | X_4 == 1 | X_5 == 1 | X_6 == 1 | X_7 == 1 | X_8 == 1 | X_9 == 1
replace x__gd_teach = 1 if X_1 == 2 | X_2 == 2 | X_3 == 2 | X_4 == 2 | X_5 == 2 | X_6 == 2 | X_7 == 2 | X_8 == 2 | X_9 == 2
replace x__cov_ever = 1 if X_1 == 3 | X_2 == 3 | X_3 == 3 | X_4 == 3 | X_5 == 3 | X_6 == 3 | X_7 == 3 | X_8 == 3 | X_9 == 3
replace x__sugg = 1 if X_1 == 4 | X_2 == 4 | X_3 == 4 | X_4 == 4 | X_5 == 4 | X_6 == 4 | X_7 == 4 | X_8 == 4 | X_9 == 4
replace x__sav_time = 1 if X_1 == 5 | X_2 == 5 | X_3 == 5 | X_4 == 5 | X_5 == 5 | X_6 == 5 | X_7 == 5 | X_8 == 5 | X_9 == 5
replace x__onl_quiz = 1 if X_1 == 6 | X_2 == 6 | X_3 == 6 | X_4 == 6 | X_5 == 6 | X_6 == 6 | X_7 == 6 | X_8 == 6 | X_9 == 6
replace x__not_using = 1 if X_1 == 7 | X_2 == 7 | X_3 == 7 | X_4 == 7 | X_5 == 7 | X_6 == 7 | X_7 == 7 | X_8 == 7 | X_9 == 7
replace x__stuck_topic = 1 if X_1 == 8 | X_2 == 8 | X_3 == 8 | X_4 == 8 | X_5 == 8 | X_6 == 8 | X_7 == 8 | X_8 == 8 | X_9 == 8
replace x__complement = 1 if X_1 == 9 | X_2 == 9 | X_3 == 9 | X_4 == 9 | X_5 == 9 | X_6 == 9 | X_7 == 9 | X_8 == 9 | X_9 == 9
replace x__no_travel = 1 if X_1 == 10 | X_2 == 10 | X_3 == 10 | X_4 == 10 | X_5 == 10 | X_6 == 10 | X_7 == 10 | X_8 == 10 | X_9 == 10
replace x__affordable = 1 if X_1 == 11 | X_2 == 11 | X_3 == 11 | X_4 == 11 | X_5 == 11 | X_6 == 11 | X_7 == 11 | X_8 == 11 | X_9 == 11
replace x__teach_shortage = 1 if X_1 == 12 | X_2 == 12 | X_3 == 12 | X_4 == 12 | X_5 == 12 | X_6 == 12 | X_7 == 12 | X_8 == 12 | X_9 == 12


//z
replace z__bat_bio = 1 if Z_1 == 1 | Z_2 == 1 | Z_3 == 1 | Z_4 == 1 | Z_5 == 1 | Z_6 == 1 | Z_7 == 1
replace z__network = 1 if Z_1 == 2 | Z_2 == 2 | Z_3 == 2 | Z_4 == 2 | Z_5 == 2 | Z_6 == 2 | Z_7 == 2
replace z__por_pabel = 1 if Z_1 == 3 | Z_2 == 3 | Z_3 == 3 | Z_4 == 3 | Z_5 == 3 | Z_6 == 3 | Z_7 == 3
replace z__10_ms = 1 if Z_1 == 4 | Z_2 == 4 | Z_3 == 4 | Z_4 == 4 | Z_5 == 4 | Z_6 == 4 | Z_7 == 4
replace z__udvash = 1 if Z_1 == 5 | Z_2 == 5 | Z_3 == 5 | Z_4 == 5 | Z_5 == 5 | Z_6 == 5 | Z_7 == 5
replace z__acs = 1 if Z_1 == 6 | Z_2 == 6 | Z_3 == 6 | Z_4 == 6 | Z_5 == 6 | Z_6 == 6 | Z_7 == 6
replace z__edge_cou = 1 if Z_1 == 7 | Z_2 == 7 | Z_3 == 7 | Z_4 == 7 | Z_5 == 7 | Z_6 == 7 | Z_7 == 7
replace z__tech_eas_edu = 1 if Z_1 == 8 | Z_2 == 8 | Z_3 == 8 | Z_4 == 8 | Z_5 == 8 | Z_6 == 8 | Z_7 == 8
replace z__fahad_tut = 1 if Z_1 == 9 | Z_2 == 9 | Z_3 == 9 | Z_4 == 9 | Z_5 == 9 | Z_6 == 9 | Z_7 == 9
replace z__phy_maniac = 1 if Z_1 == 10 | Z_2 == 10 | Z_3 == 10 | Z_4 == 10 | Z_5 == 10 | Z_6 == 10 | Z_7 == 10
replace z__boni_amin = 1 if Z_1 == 11 | Z_2 == 11 | Z_3 == 11 | Z_4 == 11 | Z_5 == 11 | Z_6 == 11 | Z_7 == 11
replace z__bondhi_path = 1 if Z_1 == 12 | Z_2 == 12 | Z_3 == 12 | Z_4 == 12 | Z_5 == 12 | Z_6 == 12 | Z_7 == 12
replace z__not_using_any = 1 if Z_1 == 13 | Z_2 == 13 | Z_3 == 13 | Z_4 == 13 | Z_5 == 13 | Z_6 == 13 | Z_7 == 13
replace z__bio_haters = 1 if Z_1 == 14 | Z_2 == 14 | Z_3 == 14 | Z_4 == 14 | Z_5 == 14 | Z_6 == 14 | Z_7 == 14
replace z__roots_edu = 1 if Z_1 == 15 | Z_2 == 15 | Z_3 == 15 | Z_4 == 15 | Z_5 == 15 | Z_6 == 15 | Z_7 == 15
replace z__sikho = 1 if Z_1 == 16 | Z_2 == 16 | Z_3 == 16 | Z_4 == 16 | Z_5 == 16 | Z_6 == 16 | Z_7 == 16
replace z__ind_teacher = 1 if Z_1 == 17 | Z_2 == 17 | Z_3 == 17 | Z_4 == 17 | Z_5 == 17 | Z_6 == 17 | Z_7 == 17

//zc
replace zc__eff_exam = 1 if ZC_1 == 1 | ZC_2 == 1 | ZC_3 == 1 | ZC_4 == 1 | ZC_5 == 1 | ZC_6 == 1 | ZC_7 == 1
replace zc__ask_que = 1 if ZC_1 == 2 | ZC_2 == 2 | ZC_3 == 2 | ZC_4 == 2 | ZC_5 == 2 | ZC_6 == 2 | ZC_7 == 2
replace zc__coac_cen = 1 if ZC_1 == 3 | ZC_2 == 3 | ZC_3 == 3 | ZC_4 == 3 | ZC_5 == 3 | ZC_6 == 3 | ZC_7 == 3
replace zc__fac_fac = 1 if ZC_1 == 4 | ZC_2 == 4 | ZC_3 == 4 | ZC_4 == 4 | ZC_5 == 4 | ZC_6 == 4 | ZC_7 == 4
replace zc__socialization = 1 if ZC_1 == 5 | ZC_2 == 5 | ZC_3 == 5 | ZC_4 == 5 | ZC_5 == 5 | ZC_6 == 5 | ZC_7 == 5
replace zc__shadow_bett = 1 if ZC_1 == 6 | ZC_2 == 6 | ZC_3 == 6 | ZC_4 == 6 | ZC_5 == 6 | ZC_6 == 6 | ZC_7 == 6
replace zc__pressure = 1 if ZC_1 == 7 | ZC_2 == 7 | ZC_3 == 7 | ZC_4 == 7 | ZC_5 == 7 | ZC_6 == 7 | ZC_7 == 7
replace zc__not_offline = 1 if ZC_1 == 8 | ZC_2 == 8 | ZC_3 == 8 | ZC_4 == 8 | ZC_5 == 8 | ZC_6 == 8 | ZC_7 == 8
replace zc__parent_neg = 1 if ZC_1 == 9 | ZC_2 == 9 | ZC_3 == 9 | ZC_4 == 9 | ZC_5 == 9 | ZC_6 == 9 | ZC_7 == 9
replace zc__broad_persp = 1 if ZC_1 == 10 | ZC_2 == 10 | ZC_3 == 10 | ZC_4 == 10 | ZC_5 == 10 | ZC_6 == 10 | ZC_7 == 10
replace zc__child_habit = 1 if ZC_1 == 11 | ZC_2 == 11 | ZC_3 == 11 | ZC_4 == 11 | ZC_5 == 11 | ZC_6 == 11 | ZC_7 == 11

//ze
replace ze__lack_conc = 1 if ZE_1 == 1 | ZE_2 == 1 | ZE_3 == 1 | ZE_4 == 1 | ZE_5 == 1 | ZE_6 == 1 | ZE_7 == 1
replace ze__face_face = 1 if ZE_1 == 2 | ZE_2 == 2 | ZE_3 == 2 | ZE_4 == 2 | ZE_5 == 2 | ZE_6 == 2 | ZE_7 == 2
replace ze__not_appl = 1 if ZE_1 == 3 | ZE_2 == 3 | ZE_3 == 3 | ZE_4 == 3 | ZE_5 == 3 | ZE_6 == 3 | ZE_7 == 3
replace ze__no_internet = 1 if ZE_1 == 4 | ZE_2 == 4 | ZE_3 == 4 | ZE_4 == 4 | ZE_5 == 4 | ZE_6 == 4 | ZE_7 == 4
replace ze__self_assess = 1 if ZE_1 == 5 | ZE_2 == 5 | ZE_3 == 5 | ZE_4 == 5 | ZE_5 == 5 | ZE_6 == 5 | ZE_7 == 5
replace ze__ask_ques = 1 if ZE_1 == 6 | ZE_2 == 6 | ZE_3 == 6 | ZE_4 == 6 | ZE_5 == 6 | ZE_6 == 6 | ZE_7 == 6
replace ze__insuf_cont = 1 if ZE_1 == 7 | ZE_2 == 7 | ZE_3 == 7 | ZE_4 == 7 | ZE_5 == 7 | ZE_6 == 7 | ZE_7 == 7
replace ze__lack_focus = 1 if ZE_1 == 8 | ZE_2 == 8 | ZE_3 == 8 | ZE_4 == 8 | ZE_5 == 8 | ZE_6 == 8 | ZE_7 == 8
replace ze__no_interc = 1 if ZE_1 == 9 | ZE_2 == 9 | ZE_3 == 9 | ZE_4 == 9 | ZE_5 == 9 | ZE_6 == 9 | ZE_7 == 9
replace ze__parent_disag = 1 if ZE_1 == 10 | ZE_2 == 10 | ZE_3 == 10 | ZE_4 == 10 | ZE_5 == 10 | ZE_6 == 10 | ZE_7 == 10
replace ze__expensive = 1 if ZE_1 == 11 | ZE_2 == 11 | ZE_3 == 11 | ZE_4 == 11 | ZE_5 == 11 | ZE_6 == 11 | ZE_7 == 11

// dropping previous mr-variables
drop G_1 G_2 G_3 G_4 I_1 I_2 R_1 R_2 R_3 R_4 R_5 R_6 R_7 R_8 R_9 R_10 S_1 S_2 S_3 S_4 S_5 S_6 T_1 T_2 T_3 T_4 T_5 T_6 W_1 W_2 W_3 W_4 W_5 W_6 W_7 W_8 X_1 X_2 X_3 X_4 X_5 X_6 X_7 X_8 X_9 Z_1 Z_2 Z_3 Z_4 Z_5 Z_6 Z_7 ZC_1 ZC_2 ZC_3 ZC_4 ZC_5 ZC_6 ZC_7 ZE_1 ZE_2 ZE_3 ZE_4 ZE_5 ZE_6 ZE_7

// ordering the variables
order i__broad_wifi i__mob_data, after(I)
order g__mobile- g__none, after( G)
order r__others - r__roots_edu, after( R)
order s__physics - s__ict , after(S)
order t__off_seminer - t__poster , after(T)
order w__rec_cls - w__prob_solving, after(W)
order x__rec_vid - x__teach_shortage , after(X)
order z__bat_bio - z__ind_teacher , after(Z)
order zc__eff_exam - zc__child_habit , after(ZC)
order ze__lack_conc - ze__expensive, after(ZE)



*** labeling all the variables ***

//single response
label define  A 1 "Class 7" 2 "Class 8" 3 "Class 9" 4 "Class 10" 5 "Class 11" 6 "Class 12" 7 "Admission candidate"
label define  B 0 "Female" 1 "Male"
label define  C 1 "DHAKA" 2 "CHITTAGONG" 3 "RAJSHAHI" 4 "KHULNA" 5 "BARISHAL" 6 "SYLHET"
label define  D 1 "City corporation" 2 "Upazilla city" 3 "Village"
label define  E 1 "Science" 2 "Business Srudies" 3 "Humanities" 4 "Not Applicable"
label define  F 4 "15000-20000" 5 "20000-25000" 6 "25000-30000" 3 "10000-15000" 1 "0-5000" 2 "5000-10000" 7 "30000+"
label define  H 1 "Yes" 0 "No"
label define  K 1 "80-100 (A+)" 2 "70-79 (A)" 3 "60-69 (A-)" 5 "40-49 (C)" 4 "50-59 (B)" 6 "33-39 (D)"
label define  L 4 "Very less" 1 "Everyday" 2 "Few times in a week" 3 "Once in a week"
label define  M 1 "Shadow Education" 3 "Both" 2 "E-learning"
label define  N 1 "Teachers help" 2 "Online" 3 "Guidebook" 4 "Re-read and Solve" 5 "Leave it"
label define  O 2 "Dissatisfied" 1 "Satisfied" 3 "No Comments"
label define  Q 1 "0-100" 2 "1000-2000" 3 "100-1000" 4 "2000-3000" 5 "3000-4000" 6 "4000-5000+"
label define  U 1 "Daily" 2 "Weekly" 3 "Somethimes" 4 "Never"
label define  Y 1 "Yes" 2 "Yes, significantly" 3 "Not sure" 4 "Not that significant"
label define  ZA 0 "0" 1 "100-500" 2 "500-1000" 3 "1000-1500" 4 "1500-2000" 5 "2000-2500" 6 "2500-3000" 7 "3000-4000" 8 "4000+"
label define  ZB 1 "Very dissatisfied" 2 "Dissatisfied" 3 "Moderately satisfied" 4 "Satisfied" 5 "Very satisfied"
label define  ZD 1 "One" 2 "Two" 3 "Three" 4 "Four" 5 "Five"

//Multiple responses
label define g__mobile 1 "g__mobile"
label define g__desktop 1 "g__desktop"
label define g__tab 1 "g__tab"
label define g__laptop 1 "g__laptop"
label define g__none 1 "g__none"
label define i__broad_wifi 1 "i__broad_wifi"
label define i__mob_data 1 "i__mob_data"
label define r__others 1 "r__others"
label define r__bat_of_bio 1 "r__bat_of_bio"
label define r__10_ms 1 "r__10_ms"
label define r__fore_yt_cha 1 "r__fore_yt_cha"
label define r__ind_teacher 1 "r__ind_teacher"
label define r__onno_path 1 "r__onno_path"
label define r__not_using_any 1 "r__not_using_any"
label define r__acs 1 "r__acs"
label define r__bond_path 1 "r__bond_path"
label define r__sikho 1 "r__sikho"
label define r__edg_cou 1 "r__edg_cou"
label define r__fah_tut 1 "r__fah_tut"
label define r__tec_eas_edu 1 "r__tec_eas_edu"
label define r__boni_amin 1 "r__boni_amin"
label define r__phy_maniac 1 "r__phy_maniac"
label define r__bio_hat 1 "r__bio_hat"
label define r__roots_edu 1 "r__roots_edu"
label define s__physics 1 "s__physics"
label define s__chemistry 1 "s__chemistry"
label define s__math_higher_math 1 "s__math_higher_math"
label define s__biology 1 "s__biology"
label define s__english 1 "s__english"
label define s__ben_soc_sci_islam 1 "s__ben_soc_sci_islam"
label define s__economics 1 "s__economics"
label define s__none 1 "s__none"
label define s__science 1 "s__science"
label define s__accounting 1 "s__accounting"
label define s__marketing 1 "s__marketing"
label define s__logic 1 "s__logic"
label define s__fin_banking 1 "s__fin_banking"
label define s__ict 1 "s__ict"
label define t__off_seminer 1 "t__off_seminer"
label define t__soc_media 1 "t__soc_media"
label define t__siblings 1 "t__siblings"
label define t__friends 1 "t__friends"
label define t__parents 1 "t__parents"
label define t__poster 1 "t__poster"
label define w__rec_cls 1 "w__rec_cls"
label define w__onl_quiz 1 "w__onl_quiz"
label define w__lec_sht 1 "w__lec_sht"
label define w__anim_vid 1 "w__anim_vid"
label define w__none 1 "w__none"
label define w__short 1 "w__short"
label define w__live_cls 1 "w__live_cls"
label define w__pause_rewind 1 "w__pause_rewind"
label define w__int_topic 1 "w__int_topic"
label define w__prob_solving 1 "w__prob_solving"
label define x__rec_vid 1 "x__rec_vid"
label define x__gd_teach 1 "x__gd_teach"
label define x__cov_ever 1 "x__cov_ever"
label define x__sugg 1 "x__sugg"
label define x__sav_time 1 "x__sav_time"
label define x__onl_quiz 1 "x__onl_quiz"
label define x__not_using 1 "x__not_using"
label define x__stuck_topic 1 "x__stuck_topic"
label define x__complement 1 "x__complement"
label define x__no_travel 1 "x__no_travel"
label define x__affordable 1 "x__affordable"
label define x__teach_shortage 1 "x__teach_shortage"
label define z__bat_bio 1 "z__bat_bio"
label define z__network 1 "z__network"
label define z__por_pabel 1 "z__por_pabel"
label define z__10_ms 1 "z__10_ms"
label define z__udvash 1 "z__udvash"
label define z__acs 1 "z__acs"
label define z__edge_cou 1 "z__edge_cou"
label define z__tech_eas_edu 1 "z__tech_eas_edu"
label define z__fahad_tut 1 "z__fahad_tut"
label define z__phy_maniac 1 "z__phy_maniac"
label define z__boni_amin 1 "z__boni_amin"
label define z__bondhi_path 1 "z__bondhi_path"
label define z__not_using_any 1 "z__not_using_any"
label define z__bio_haters 1 "z__bio_haters"
label define z__roots_edu 1 "z__roots_edu"
label define z__sikho 1 "z__sikho"
label define z__ind_teacher 1 "z__ind_teacher"
label define zc__eff_exam 1 "zc__eff_exam"
label define zc__ask_que 1 "zc__ask_que"
label define zc__coac_cen 1 "zc__coac_cen"
label define zc__fac_fac 1 "zc__fac_fac"
label define zc__socialization 1 "zc__socialization"
label define zc__shadow_bett 1 "zc__shadow_bett"
label define zc__pressure 1 "zc__pressure"
label define zc__not_offline 1 "zc__not_offline"
label define zc__parent_neg 1 "zc__parent_neg"
label define zc__broad_persp 1 "zc__broad_persp"
label define zc__child_habit 1 "zc__child_habit"
label define ze__lack_conc 1 "ze__lack_conc"
label define ze__face_face 1 "ze__face_face"
label define ze__not_appl 1 "ze__not_appl"
label define ze__no_internet 1 "ze__no_internet"
label define ze__self_assess 1 "ze__self_assess"
label define ze__ask_ques 1 "ze__ask_ques"
label define ze__insuf_cont 1 "ze__insuf_cont"
label define ze__lack_focus 1 "ze__lack_focus"
label define ze__no_interc 1 "ze__no_interc"
label define ze__parent_disag 1 "ze__parent_disag"
label define ze__expensive 1 "ze__expensive"


//labelling values
label values A A
label values B B
label values C C
label values D D
label values E E
label values F F
label values H H
label values K K
label values L L
label values M M
label values N N
label values O O
label values Q Q
label values U U
label values Y Y
label values ZA ZA
label values ZB ZB
label values ZD ZD
label values g__mobile g__mobile
label values g__desktop g__desktop
label values g__tab g__tab
label values g__laptop g__laptop
label values g__none g__none
label values i__broad_wifi i__broad_wifi
label values i__mob_data i__mob_data
label values r__others r__others
label values r__bat_of_bio r__bat_of_bio
label values r__10_ms r__10_ms
label values r__fore_yt_cha r__fore_yt_cha
label values r__ind_teacher r__ind_teacher
label values r__onno_path r__onno_path
label values r__not_using_any r__not_using_any
label values r__acs r__acs
label values r__bond_path r__bond_path
label values r__sikho r__sikho
label values r__edg_cou r__edg_cou
label values r__fah_tut r__fah_tut
label values r__tec_eas_edu r__tec_eas_edu
label values r__boni_amin r__boni_amin
label values r__phy_maniac r__phy_maniac
label values r__bio_hat r__bio_hat
label values r__roots_edu r__roots_edu
label values s__physics s__physics
label values s__chemistry s__chemistry
label values s__math_higher_math s__math_higher_math
label values s__biology s__biology
label values s__english s__english
label values s__ben_soc_sci_islam s__ben_soc_sci_islam
label values s__economics s__economics
label values s__none s__none
label values s__science s__science
label values s__accounting s__accounting
label values s__marketing s__marketing
label values s__logic s__logic
label values s__fin_banking s__fin_banking
label values s__ict s__ict
label values t__off_seminer t__off_seminer
label values t__soc_media t__soc_media
label values t__siblings t__siblings
label values t__friends t__friends
label values t__parents t__parents
label values t__poster t__poster
label values w__rec_cls w__rec_cls
label values w__onl_quiz w__onl_quiz
label values w__lec_sht w__lec_sht
label values w__anim_vid w__anim_vid
label values w__none w__none
label values w__short w__short
label values w__live_cls w__live_cls
label values w__pause_rewind w__pause_rewind
label values w__int_topic w__int_topic
label values w__prob_solving w__prob_solving
label values x__rec_vid x__rec_vid
label values x__gd_teach x__gd_teach
label values x__cov_ever x__cov_ever
label values x__sugg x__sugg
label values x__sav_time x__sav_time
label values x__onl_quiz x__onl_quiz
label values x__not_using x__not_using
label values x__stuck_topic x__stuck_topic
label values x__complement x__complement
label values x__no_travel x__no_travel
label values x__affordable x__affordable
label values x__teach_shortage x__teach_shortage
label values z__bat_bio z__bat_bio
label values z__network z__network
label values z__por_pabel z__por_pabel
label values z__10_ms z__10_ms
label values z__udvash z__udvash
label values z__acs z__acs
label values z__edge_cou z__edge_cou
label values z__tech_eas_edu z__tech_eas_edu
label values z__fahad_tut z__fahad_tut
label values z__phy_maniac z__phy_maniac
label values z__boni_amin z__boni_amin
label values z__bondhi_path z__bondhi_path
label values z__not_using_any z__not_using_any
label values z__bio_haters z__bio_haters
label values z__roots_edu z__roots_edu
label values z__sikho z__sikho
label values z__ind_teacher z__ind_teacher
label values zc__eff_exam zc__eff_exam
label values zc__ask_que zc__ask_que
label values zc__coac_cen zc__coac_cen
label values zc__fac_fac zc__fac_fac
label values zc__socialization zc__socialization
label values zc__shadow_bett zc__shadow_bett
label values zc__pressure zc__pressure
label values zc__not_offline zc__not_offline
label values zc__parent_neg zc__parent_neg
label values zc__broad_persp zc__broad_persp
label values zc__child_habit zc__child_habit
label values ze__lack_conc ze__lack_conc
label values ze__face_face ze__face_face
label values ze__not_appl ze__not_appl
label values ze__no_internet ze__no_internet
label values ze__self_assess ze__self_assess
label values ze__ask_ques ze__ask_ques
label values ze__insuf_cont ze__insuf_cont
label values ze__lack_focus ze__lack_focus
label values ze__no_interc ze__no_interc
label values ze__parent_disag ze__parent_disag
label values ze__expensive ze__expensive


*** small changes ***

gen lost_of_concentration__comb = .
replace lost_of_concentration__comb = 1 if ze__lack_conc == 1 | ze__lack_focus == 1

// dropping results outlier
drop if J >= 2000 | J < 400













