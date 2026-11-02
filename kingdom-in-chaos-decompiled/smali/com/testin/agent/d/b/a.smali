.class public final Lcom/testin/agent/d/b/a;
.super Lcom/testin/agent/d/a/a;


# static fields
.field private static b:Lcom/testin/agent/d/b/a;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/testin/agent/d/a/a;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/testin/agent/d/b/a;->e:Ljava/util/List;

    invoke-direct {p0}, Lcom/testin/agent/d/b/a;->e()V

    return-void
.end method

.method public static a()Lcom/testin/agent/d/b/a;
    .locals 1

    sget-object v0, Lcom/testin/agent/d/b/a;->b:Lcom/testin/agent/d/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/testin/agent/d/b/a;

    invoke-direct {v0}, Lcom/testin/agent/d/b/a;-><init>()V

    sput-object v0, Lcom/testin/agent/d/b/a;->b:Lcom/testin/agent/d/b/a;

    :cond_0
    sget-object v0, Lcom/testin/agent/d/b/a;->b:Lcom/testin/agent/d/b/a;

    return-object v0
.end method

.method static synthetic a(Lcom/testin/agent/d/b/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/d/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/testin/agent/d/b/a;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/testin/agent/d/b/a;->e:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/testin/agent/d/b/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/testin/agent/d/b/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/testin/agent/d/b/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/testin/agent/d/b/a;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/testin/agent/d/b/a;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/testin/agent/d/b/a;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized c(Ljava/lang/String;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/testin/agent/e/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, "Tcache_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/testin/agent/d/a/d;

    invoke-direct {v1}, Lcom/testin/agent/d/a/d;-><init>()V

    sget-object v2, Lcom/testin/agent/d/a;->c:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/testin/agent/d/a/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/testin/agent/d/a/e;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/testin/agent/c/l;

    const-string v2, "subapm"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lcom/testin/agent/c/l;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Lcom/testin/agent/c/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/testin/agent/d/a/d;

    invoke-direct {v0}, Lcom/testin/agent/d/a/d;-><init>()V

    sget-object v2, Lcom/testin/agent/d/a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/testin/agent/c/l;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/testin/agent/d/a/d;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/testin/agent/d/a/e;

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/testin/agent/d/b/a;->d()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, p0, Lcom/testin/agent/d/b/a;->d:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    sget-wide v4, Lcom/testin/agent/d/b/d;->b:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/testin/agent/d/b/a;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/testin/agent/d/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Testin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/testin/agent/d/b/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/testin/agent/d/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Lastsave"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/testin/agent/d/b/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/testin/agent/d/b/a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    invoke-static {}, Lcom/testin/agent/d/b/e;->a()Lcom/testin/agent/d/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/testin/agent/d/b/e;->b()V

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/testin/agent/d/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Tcache_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/testin/agent/d/b/a;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/testin/agent/d/b/a;->a:Ljava/util/concurrent/ExecutorService;

    :cond_0
    sget-object v0, Lcom/testin/agent/d/b/a;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v0}, Lcom/testin/agent/TestinAgentConfig;->isReportOnBack()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/testin/agent/a/h;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/testin/agent/e/g;->h()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/testin/agent/a/h;->a:Lcom/testin/agent/TestinAgentConfig;

    invoke-virtual {v0}, Lcom/testin/agent/TestinAgentConfig;->isReportOnlyWifi()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Lcom/testin/agent/d/a/c;

    invoke-direct {v0}, Lcom/testin/agent/d/a/c;-><init>()V

    new-instance v1, Lcom/testin/agent/d/b/b;

    invoke-direct {v1, p0, p1}, Lcom/testin/agent/d/b/b;-><init>(Lcom/testin/agent/d/b/a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/testin/agent/d/a/c;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/testin/agent/d/b/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/testin/agent/d/b/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/testin/agent/d/a/c;

    invoke-direct {v0}, Lcom/testin/agent/d/a/c;-><init>()V

    new-instance v1, Lcom/testin/agent/d/b/c;

    invoke-direct {v1, p0}, Lcom/testin/agent/d/b/c;-><init>(Lcom/testin/agent/d/b/a;)V

    invoke-virtual {v0, v1}, Lcom/testin/agent/d/a/c;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/testin/agent/d/b/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/testin/agent/d/b/a;->b()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()Ljava/io/File;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/testin/agent/d/b/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/testin/agent/a/d;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
