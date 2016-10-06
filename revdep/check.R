library("devtools")
requireNamespace("git2r")

revdep_check()
revdep_check_save_summary()
revdep_check_print_problems()
