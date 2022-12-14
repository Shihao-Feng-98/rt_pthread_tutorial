/*
信号量
场景：多个线程抢夺同一个资源
作用：每一时刻允许n个线程访问共享资源，当value为1时，与互斥锁等价
用法：在需要控制资源的代码块前后加减信号量
*/

#include <pthread.h> // -lpthread
#include <semaphore.h> // 信号量
#include <sys/mman.h> // mlockall(MCL_CURRENT|MCL_FUTURE)
#include <unistd.h> // sleep
#include <iostream>
using namespace std;
// utils
#include <C_timer.h>
#include <periodic_rt_task.h>

// global variables
int g_num = 10;
pthread_barrier_t g_barr;
sem_t g_sem; // 信号量
CTimer timer;

// ======== Thread Function ========  
void* thread_1_func(void* argc)
{
    int sval;
    
    pthread_barrier_wait(&g_barr);

    timer.reset();
    // do something
    while(g_num > 1)
    {
        sem_wait(&g_sem); // 信号量-1

        sem_getvalue(&g_sem, &sval);
        cout << "[Thread 1]: success connection(" 
            << sval << " rest), " << g_num-- << endl;
        sleep(1);

        sem_post(&g_sem); // 信号量+1
    }
    return nullptr;
}

void* thread_2_func(void* argc)
{
    int sval;
    
    pthread_barrier_wait(&g_barr);

    // do something
    while(g_num > 1)
    {
        sem_wait(&g_sem); // 信号量-1

        sem_getvalue(&g_sem, &sval);
        cout << "[Thread 2]: success connection(" 
            << sval << " rest), " << g_num-- << endl;
        sleep(1);

        sem_post(&g_sem); // 信号量+1
    }
    return nullptr;
}

void* thread_3_func(void* argc)
{
    int sval;
    
    pthread_barrier_wait(&g_barr);

    // do something
    while(g_num > 1)
    {
        sem_wait(&g_sem); // 信号量-1

        sem_getvalue(&g_sem, &sval);
        cout << "[Thread 3]: success connection(" 
            << sval << " rest), " << g_num-- << endl;
        sleep(1);

        sem_post(&g_sem); // 信号量+1
    }
    return nullptr;
}

int main(int argc, char **argv)
{
    /*
    mlockall 锁定进程中所有映射到地址空间的页
    MCL_CURRENT 已经映射的进程地址，MCL_FUTURE 将来映射的进程地址
    */
    if(mlockall(MCL_CURRENT|MCL_FUTURE) == -1) {
        cout << "mlockall failed: %m\n"; // 输入上一个函数的错误信息
        return -2;
    }
    
    // 初始化屏障
    pthread_barrier_init(&g_barr, NULL, 3);
    // 初始化信号量
    sem_init(&g_sem, 0, 3);

    // 创建线程
    PeriodicRtTask *task_1 = new PeriodicRtTask("[Thread 1]", 50, thread_1_func);
    PeriodicRtTask *task_2 = new PeriodicRtTask("[Thread 2]", 50, thread_2_func);
    PeriodicRtTask *task_3 = new PeriodicRtTask("[Thread 3]", 50, thread_3_func);
    
    sleep(1); 
    
    // 析构函数会join线程，等待子线程结束
    delete task_1;
    delete task_2;
    delete task_3;
    cout << timer.end()/1000/1000 << " s\n";
    cout << "g_num: " << g_num << endl;

    // 销毁屏障
    pthread_barrier_destroy(&g_barr);
    // 销毁信号量
    sem_destroy(&g_sem);

    return 0;
}
