.class final Lcom/vungle/publisher/cy;
.super Landroid/os/Handler;
.source "vungle"


# instance fields
.field final a:Lcom/vungle/publisher/db;

.field b:Z

.field private final c:I

.field private final d:Lcom/vungle/publisher/cw;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/cw;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object p1, p0, Lcom/vungle/publisher/cy;->d:Lcom/vungle/publisher/cw;

    .line 33
    const/16 v0, 0xa

    iput v0, p0, Lcom/vungle/publisher/cy;->c:I

    .line 34
    new-instance v0, Lcom/vungle/publisher/db;

    invoke-direct {v0}, Lcom/vungle/publisher/db;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/cy;->a:Lcom/vungle/publisher/db;

    .line 35
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 52
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/cy;->a:Lcom/vungle/publisher/db;

    invoke-virtual {v0}, Lcom/vungle/publisher/db;->a()Lcom/vungle/publisher/da;

    move-result-object v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/cy;->a:Lcom/vungle/publisher/db;

    invoke-virtual {v0}, Lcom/vungle/publisher/db;->a()Lcom/vungle/publisher/da;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/cy;->b:Z

    .line 63
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    iput-boolean v7, p0, Lcom/vungle/publisher/cy;->b:Z

    :goto_0
    return-void

    .line 65
    :cond_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 67
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/vungle/publisher/cy;->d:Lcom/vungle/publisher/cw;

    invoke-virtual {v3, v0}, Lcom/vungle/publisher/cw;->a(Lcom/vungle/publisher/da;)V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 69
    iget v0, p0, Lcom/vungle/publisher/cy;->c:I

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/vungle/publisher/cy;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/cy;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 71
    new-instance v0, Lcom/vungle/publisher/cx;

    const-string v1, "Could not send handler message"

    invoke-direct {v0, v1}, Lcom/vungle/publisher/cx;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 78
    :catchall_0
    move-exception v0

    iput-boolean v7, p0, Lcom/vungle/publisher/cy;->b:Z

    throw v0

    .line 65
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 73
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/cy;->b:Z

    goto :goto_0
.end method
