initiall = ['ZE_1','ZE_2','ZE_3','ZE_4','ZE_5','ZE_6','ZE_7']
thenn = ['ze__lack_conc','ze__face_face','ze__not_appl','ze__no_internet','ze__self_assess','ze__ask_ques','ze__insuf_cont','ze__lack_focus','ze__no_interc',"ze__parent_disag","ze__expensive"]

count = 0

for r in thenn:
    count = count + 1
    condition_str = f"replace {r} = 1 if {' | '.join([f'{a} == {count}' for a in initiall])}"
    print(condition_str)