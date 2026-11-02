.class public Lcom/vungle/publisher/protocol/ProtocolHttpGateway;
.super Lcom/vungle/publisher/cd;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/event/EventBus;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/protocol/ReportAdHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/net/http/HttpTransaction;
    .annotation runtime Lcom/vungle/publisher/inject/annotations/RequestConfigHttpTransaction;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/protocol/RequestLocalAdHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/protocol/RequestStreamingAdHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/SafeBundleAdConfigFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/protocol/SessionEndHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/protocol/SessionStartHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Ljavax/inject/Provider;
    .annotation runtime Lcom/vungle/publisher/inject/annotations/TrackInstallHttpTransaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/net/http/HttpTransaction;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/protocol/UnfilledAdHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/reporting/AdServiceReportingHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/vungle/publisher/cd;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$2;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$2;-><init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)V

    sget-object v2, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->i:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 121
    return-void
.end method

.method public final a(Lcom/vungle/publisher/ci;)V
    .locals 5

    .prologue
    .line 132
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$3;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$3;-><init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;Lcom/vungle/publisher/ci;)V

    sget-object v2, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->f:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    const/16 v3, 0x7d0

    invoke-virtual {p1, v3}, Lcom/vungle/publisher/ci;->a(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;J)V

    .line 155
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->a:Lcom/vungle/publisher/event/EventBus;

    new-instance v1, Lcom/vungle/publisher/n;

    invoke-direct {v1}, Lcom/vungle/publisher/n;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/event/EventBus;->a(Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method final b(Lcom/vungle/publisher/ci;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 162
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->b:Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;

    invoke-virtual {v0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$PrepareLocalAdEventListener;->d()V

    .line 163
    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->a(Lcom/vungle/publisher/ci;)V

    .line 166
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$8;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$8;-><init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;)V

    sget-object v2, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->m:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 283
    return-void
.end method

.method public final c(Lcom/vungle/publisher/ci;)V
    .locals 5

    .prologue
    .line 248
    iget-object v0, p0, Lcom/vungle/publisher/protocol/ProtocolHttpGateway;->d:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v1, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$7;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/protocol/ProtocolHttpGateway$7;-><init>(Lcom/vungle/publisher/protocol/ProtocolHttpGateway;Lcom/vungle/publisher/ci;)V

    sget-object v2, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->e:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    const/16 v3, 0x1388

    invoke-virtual {p1, v3}, Lcom/vungle/publisher/ci;->a(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;J)V

    .line 263
    return-void
.end method
