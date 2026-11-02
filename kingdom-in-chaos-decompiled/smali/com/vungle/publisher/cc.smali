.class public Lcom/vungle/publisher/cc;
.super Lcom/vungle/publisher/cd;
.source "vungle"


# instance fields
.field public a:Lcom/vungle/publisher/net/http/TrackEventHttpTransactionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vungle/publisher/cd;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 63
    .line 64
    if-eqz p1, :cond_3

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    const/4 v1, -0x1

    .line 69
    :goto_0
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_0

    .line 70
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    .line 71
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v4, v3, v6, v1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    .line 72
    goto :goto_0

    .line 70
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 74
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    :cond_3
    return-object p0
.end method


# virtual methods
.method public final varargs a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/db/model/EventTracking$a;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;",
            "Lcom/vungle/publisher/db/model/EventTracking$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 40
    if-eqz p4, :cond_1

    .line 41
    array-length v7, p4

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v4, p4, v6

    .line 42
    if-eqz v4, :cond_0

    .line 43
    iget-object v8, p0, Lcom/vungle/publisher/cc;->b:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;

    new-instance v0, Lcom/vungle/publisher/cc$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/cc$1;-><init>(Lcom/vungle/publisher/cc;Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/db/model/EventTracking$a;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;->p:Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;

    invoke-virtual {v8, v0, v1}, Lcom/vungle/publisher/async/ScheduledPriorityExecutor;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/async/ScheduledPriorityExecutor$b;)V

    .line 41
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method
