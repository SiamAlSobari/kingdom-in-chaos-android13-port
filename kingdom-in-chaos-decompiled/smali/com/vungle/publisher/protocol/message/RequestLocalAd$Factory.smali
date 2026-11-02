.class public Lcom/vungle/publisher/protocol/message/RequestLocalAd$Factory;
.super Lcom/vungle/publisher/protocol/message/RequestAd$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/RequestLocalAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/protocol/message/RequestAd$a",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestLocalAd;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/env/SdkState;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/RequestAd$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/vungle/publisher/protocol/message/RequestLocalAd;

    invoke-direct {v0}, Lcom/vungle/publisher/protocol/message/RequestLocalAd;-><init>()V

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    new-array v0, p1, [Lcom/vungle/publisher/protocol/message/RequestLocalAd;

    return-object v0
.end method

.method public final synthetic b()Lcom/vungle/publisher/protocol/message/RequestAd;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/vungle/publisher/protocol/message/RequestLocalAd$Factory;->c()Lcom/vungle/publisher/protocol/message/RequestLocalAd;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/vungle/publisher/protocol/message/RequestLocalAd;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 92
    invoke-super {p0}, Lcom/vungle/publisher/protocol/message/RequestAd$a;->b()Lcom/vungle/publisher/protocol/message/RequestAd;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/protocol/message/RequestLocalAd;

    .line 93
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestLocalAd$Factory;->g:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/env/SdkState;

    iget-object v1, v1, Lcom/vungle/publisher/env/SdkState;->l:Lcom/vungle/publisher/env/SdkState$a;

    iget-object v1, v1, Lcom/vungle/publisher/env/SdkState$a;->a:Lcom/vungle/publisher/cp;

    invoke-virtual {v1}, Lcom/vungle/publisher/cp;->a()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Throwable;

    array-length v6, v1

    if-lez v6, :cond_6

    new-array v5, v6, [Ljava/lang/String;

    move v2, v3

    :goto_0
    div-int/lit8 v7, v6, 0x2

    if-ge v2, v7, :cond_0

    aget-object v7, v1, v2

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v6, -0x1

    sub-int/2addr v8, v2

    aget-object v8, v1, v8

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v2

    add-int/lit8 v8, v6, -0x1

    sub-int/2addr v8, v2

    aput-object v7, v5, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v1, v5

    .line 94
    :goto_1
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    aget-object v1, v1, v3

    :goto_2
    iput-object v1, v0, Lcom/vungle/publisher/protocol/message/RequestLocalAd;->i:Ljava/lang/String;

    .line 95
    iget-object v1, p0, Lcom/vungle/publisher/protocol/message/RequestLocalAd$Factory;->e:Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry$Factory;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry$Factory;->d()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/protocol/message/RequestLocalAd;->g:Ljava/util/List;

    .line 96
    if-nez v2, :cond_2

    move v1, v3

    :goto_3
    if-lez v1, :cond_4

    const-string v5, "VungleReport"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "sending "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " event_tracking_http_log records"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v6, v1, [Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry;

    const-string v2, "VungleReport"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "sending "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry;->y()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v3, 0x1

    if-eqz v1, :cond_5

    new-instance v5, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;

    invoke-direct {v5}, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;-><init>()V

    iget-object v8, v1, Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry;->a:Ljava/lang/String;

    iput-object v8, v5, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->a:Ljava/lang/String;

    iget-object v8, v1, Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry;->b:Ljava/lang/String;

    iput-object v8, v5, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->b:Ljava/lang/String;

    iget-wide v8, v1, Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iput-object v8, v5, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->c:Ljava/lang/Long;

    iget-object v8, v1, Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry;->c:Lcom/vungle/publisher/db/model/EventTracking$a;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->d:Ljava/lang/String;

    iget-object v8, v1, Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry;->e:Ljava/lang/Integer;

    iput-object v8, v5, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->e:Ljava/lang/Integer;

    iget-object v8, v1, Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry;->f:Ljava/lang/Long;

    iput-object v8, v5, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->f:Ljava/lang/Long;

    iget-object v1, v1, Lcom/vungle/publisher/db/model/EventTrackingHttpLogEntry;->g:Ljava/lang/String;

    iput-object v1, v5, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->g:Ljava/lang/String;

    move-object v1, v5

    :goto_5
    aput-object v1, v6, v3

    move v3, v2

    goto :goto_4

    :cond_1
    move-object v1, v4

    .line 94
    goto/16 :goto_2

    .line 96
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_3

    :cond_3
    move-object v4, v6

    :cond_4
    iput-object v4, v0, Lcom/vungle/publisher/protocol/message/RequestLocalAd;->h:[Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;

    .line 97
    return-object v0

    :cond_5
    move-object v1, v4

    goto :goto_5

    :cond_6
    move-object v1, v4

    goto/16 :goto_1
.end method
