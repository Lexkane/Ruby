#malloc_trim() in gc.c gc_start

gc_prof_time_start(objspace)
{
    gc_marks(objspace,do_full_mark);
    if (do_full_mark)
        {
            malloc_trim(0);
        }

}

gc_prof_timer_stop(objspace);