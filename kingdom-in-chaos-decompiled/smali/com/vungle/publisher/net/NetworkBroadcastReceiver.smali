.class public Lcom/vungle/publisher/net/NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field public static final a:Landroid/content/IntentFilter;


# instance fields
.field public b:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/cb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/net/NetworkBroadcastReceiver;->a:Landroid/content/IntentFilter;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 60
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string v0, "VungleNetwork"

    const-string v1, "lost connectivity"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/net/NetworkBroadcastReceiver;->d:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/az;

    invoke-direct {v1}, Lcom/vungle/publisher/az;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v0, "isFailover"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    const-string v0, "VungleNetwork"

    const-string v1, "connectivity failover"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_2
    const-string v0, "VungleNetwork"

    const-string v1, "connectivity established"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    monitor-enter p0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 74
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/net/NetworkBroadcastReceiver;->d:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/ay;

    invoke-direct {v1}, Lcom/vungle/publisher/ay;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
