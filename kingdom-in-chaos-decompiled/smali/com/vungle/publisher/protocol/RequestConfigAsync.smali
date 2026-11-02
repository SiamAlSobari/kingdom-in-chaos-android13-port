.class public Lcom/vungle/publisher/protocol/RequestConfigAsync;
.super Lcom/vungle/publisher/ap;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/RequestConfigAsync$RequestConfigRunnable;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Lcom/vungle/publisher/protocol/RequestConfigAsync$RequestConfigRunnable;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/vungle/publisher/ap;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/protocol/RequestConfigAsync;->b:Lcom/vungle/publisher/protocol/RequestConfigAsync$RequestConfigRunnable;

    return-object v0
.end method

.method protected final b()Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->i:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    return-object v0
.end method
