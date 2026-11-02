.class Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;
.super Lcom/vungle/publisher/bk;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/VunglePubBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsyncInitEventListener"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ad/AdManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/protocol/ProtocolHttpGateway;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/reporting/AdReportManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/env/SdkState;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final g:Lcom/vungle/publisher/ct;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/vungle/publisher/bk;-><init>()V

    .line 312
    new-instance v0, Lcom/vungle/publisher/ct;

    invoke-direct {v0}, Lcom/vungle/publisher/ct;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->g:Lcom/vungle/publisher/ct;

    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->d()V

    .line 346
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->b:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v1, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener$1;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener$1;-><init>(Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;J)V

    .line 357
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/ar;)V
    .locals 2

    .prologue
    .line 337
    const-string v0, "VungleDatabase"

    const-string v1, "on database ready"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->g:Lcom/vungle/publisher/ct;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ct;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 339
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->a()V

    .line 341
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bi;)V
    .locals 2

    .prologue
    .line 330
    const-string v0, "VungleDevice"

    const-string v1, "device ID available"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->g:Lcom/vungle/publisher/ct;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ct;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/vungle/publisher/VunglePubBase$AsyncInitEventListener;->a()V

    .line 334
    :cond_0
    return-void
.end method
