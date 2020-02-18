# SCHED_BACKGROUND
<br>
We add a new scheduling policy called <b>SCHED_BACKGROUND</b> that is designed to 
support processes that only need to run when the system has nothing else to do. This 
"background" scheduling policy should run processes when there are no processes in the 
<b>SCHED_OTHER</b> , <b>SCHED_RR</b> or <b>S
CHED_FIFO</b> classes/ queues to run. When there are more 
than one <b>SCHED_BACKGROUND</b> processes ready to run, they compete for the CPU 
just like <b>SCHED_OTHER</b> processes. <br>
<br> <i> Implementation details/ instructions in </i><a name="report" href="https://github.com/eonr/SCHED_BACKGROUND/blob/master/report.pdf">report</a>

### Sample results
##### 1. Running a background process with 2 normal processes <br>

![alt text](https://github.com/eonr/sched_background/blob/master/sample_results/e1.png "2 normal vs 1 bg")

##### 2. Running a background process with 2 FIFO processes <br>

![alt text](https://github.com/eonr/sched_background/blob/master/sample_results/e2.png "2 FIFO vs 1 bg")

<br> <i> More results in </i> <a name="report" href="https://github.com/eonr/SCHED_BACKGROUND/blob/master/report.pdf">report</a>
