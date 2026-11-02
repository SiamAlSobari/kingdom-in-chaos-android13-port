.class public final Lcom/testin/agent/d/b/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static c:Lcom/testin/agent/d/b/e;

.field private static e:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field private a:Ljava/util/concurrent/ScheduledFuture;

.field private b:Ljava/util/concurrent/ScheduledExecutorService;

.field private d:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/testin/agent/d/b/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/testin/agent/d/b/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/testin/agent/d/b/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method public static a()Lcom/testin/agent/d/b/e;
    .locals 2

    sget-object v0, Lcom/testin/agent/d/b/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    new-instance v0, Lcom/testin/agent/d/b/e;

    invoke-direct {v0}, Lcom/testin/agent/d/b/e;-><init>()V

    sput-object v0, Lcom/testin/agent/d/b/e;->c:Lcom/testin/agent/d/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/testin/agent/d/b/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object v0, Lcom/testin/agent/d/b/e;->c:Lcom/testin/agent/d/b/e;

    return-object v0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/testin/agent/d/b/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/testin/agent/d/b/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/testin/agent/d/b/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/testin/agent/d/b/e;->b:Ljava/util/concurrent/ScheduledExecutorService;

    sget-wide v2, Lcom/testin/agent/d/b/d;->a:J

    sget-wide v4, Lcom/testin/agent/d/b/d;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/testin/agent/d/b/e;->a:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 2

    sget-object v0, Lcom/testin/agent/d/b/e;->c:Lcom/testin/agent/d/b/e;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/testin/agent/d/b/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    sget-object v0, Lcom/testin/agent/d/b/e;->c:Lcom/testin/agent/d/b/e;

    invoke-direct {v0}, Lcom/testin/agent/d/b/e;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/testin/agent/d/b/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/testin/agent/d/b/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public run()V
    .locals 2

    sget-object v0, Lcom/testin/agent/d/b/e;->c:Lcom/testin/agent/d/b/e;

    iget-object v0, v0, Lcom/testin/agent/d/b/e;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/testin/agent/d/b/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-static {}, Lcom/testin/agent/d/b/a;->a()Lcom/testin/agent/d/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/testin/agent/d/b/a;->c()V

    invoke-static {}, Lcom/testin/agent/d/b/a;->a()Lcom/testin/agent/d/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/testin/agent/d/b/a;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/testin/agent/d/b/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/testin/agent/d/b/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/testin/agent/d/b/e;->e:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
