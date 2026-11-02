.class public Lcom/vungle/publisher/event/ClientEventListenerAdapter;
.super Lcom/vungle/publisher/bk;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/event/ClientEventListenerAdapter$Factory;
    }
.end annotation


# instance fields
.field public a:Lcom/vungle/publisher/EventListener;

.field b:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ad/AdManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/vungle/publisher/bk;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->b:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    sget-object v1, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->q:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 164
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/vungle/publisher/event/ClientEventListenerAdapter$5;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/event/ClientEventListenerAdapter$5;-><init>(Lcom/vungle/publisher/event/ClientEventListenerAdapter;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Ljava/lang/Runnable;)V

    .line 160
    return-void
.end method

.method private a(Z)V
    .locals 6

    .prologue
    .line 85
    iget v1, p0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->d:I

    .line 86
    iget v2, p0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->e:I

    .line 87
    int-to-float v0, v1

    int-to-float v3, v2

    div-float/2addr v0, v3

    const v3, 0x3f4ccccd    # 0.8f

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 88
    :goto_0
    const-string v3, "VungleEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onVideoEnd("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") callback"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    new-instance v3, Lcom/vungle/publisher/event/ClientEventListenerAdapter$3;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/vungle/publisher/event/ClientEventListenerAdapter$3;-><init>(Lcom/vungle/publisher/event/ClientEventListenerAdapter;ZII)V

    invoke-direct {p0, v3}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Ljava/lang/Runnable;)V

    .line 95
    const-string v0, "VungleEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdEnd("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") callback"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/vungle/publisher/event/ClientEventListenerAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/event/ClientEventListenerAdapter$4;-><init>(Lcom/vungle/publisher/event/ClientEventListenerAdapter;Z)V

    invoke-direct {p0, v0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Ljava/lang/Runnable;)V

    .line 102
    return-void

    .line 87
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/ad;)V
    .locals 2
    .param p1, "errorEndPlayEvent"    # Lcom/vungle/publisher/ad;

    .prologue
    .line 75
    instance-of v0, p1, Lcom/vungle/publisher/al;

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "VungleEvent"

    const-string v1, "onAdEnd() - activity destroyed"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Z)V

    .line 82
    return-void

    .line 79
    :cond_0
    const-string v0, "VungleEvent"

    const-string v1, "onAdEnd() - error during playback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/ae;)V
    .locals 2

    .prologue
    .line 115
    const-string v0, "VungleEvent"

    const-string v1, "onAdUnavailable(already playing) callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v0, "Ad already playing"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/ag;)V
    .locals 2

    .prologue
    .line 110
    const-string v0, "VungleEvent"

    const-string v1, "onAdUnavailable(error) callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v0, "Error launching ad"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/ah;)V
    .locals 2

    .prologue
    .line 120
    const-string v0, "VungleEvent"

    const-string v1, "onAdUnavailable(not initialized) callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string v0, "Vungle Publisher SDK was not successfully initialized - please check the logs"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/ai;)V
    .locals 2
    .param p1, "throttledCancelPlayEvent"    # Lcom/vungle/publisher/ai;

    .prologue
    .line 125
    const-string v0, "VungleEvent"

    const-string v1, "onAdUnavailable(throttled) callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Only "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcom/vungle/publisher/ai;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of minimum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/vungle/publisher/ai;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " seconds elapsed between ads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/aj;)V
    .locals 2

    .prologue
    .line 130
    const-string v0, "VungleEvent"

    const-string v1, "onAdUnavailable(unavailable) callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v0, "No cached or streaming ad available"

    invoke-direct {p0, v0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/ao;)V
    .locals 1
    .param p1, "playAdSuccessEvent"    # Lcom/vungle/publisher/ao;

    .prologue
    .line 66
    iget-boolean v0, p1, Lcom/vungle/publisher/ak;->b:Z

    invoke-direct {p0, v0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Z)V

    .line 67
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/d;)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->c:Lcom/vungle/publisher/ad/AdManager;

    invoke-virtual {v0}, Lcom/vungle/publisher/ad/AdManager;->a()Z

    move-result v1

    .line 43
    iget-object v2, p0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/vungle/publisher/event/ClientEventListenerAdapter$1;

    invoke-direct {v0, p0, v1}, Lcom/vungle/publisher/event/ClientEventListenerAdapter$1;-><init>(Lcom/vungle/publisher/event/ClientEventListenerAdapter;Z)V

    invoke-direct {p0, v0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Ljava/lang/Runnable;)V

    .line 51
    :cond_0
    return-void

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/k;)V
    .locals 1
    .param p1, "durationPlayVideoEvent"    # Lcom/vungle/publisher/k;

    .prologue
    .line 135
    iget v0, p1, Lcom/vungle/publisher/k;->a:I

    iput v0, p0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->e:I

    .line 136
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/l;)V
    .locals 4
    .param p1, "endPlayVideoEvent"    # Lcom/vungle/publisher/l;

    .prologue
    .line 139
    iget v0, p1, Lcom/vungle/publisher/u;->a:I

    .line 140
    iget v1, p0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->d:I

    if-le v0, v1, :cond_0

    .line 141
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new watched millis "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput v0, p0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->d:I

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_0
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shorter watched millis "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/x;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    const-string v0, "VungleEvent"

    const-string v1, "onAdStart() callback"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iput v2, p0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->d:I

    .line 56
    iput v2, p0, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->e:I

    .line 57
    new-instance v0, Lcom/vungle/publisher/event/ClientEventListenerAdapter$2;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter$2;-><init>(Lcom/vungle/publisher/event/ClientEventListenerAdapter;)V

    invoke-direct {p0, v0}, Lcom/vungle/publisher/event/ClientEventListenerAdapter;->a(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method
