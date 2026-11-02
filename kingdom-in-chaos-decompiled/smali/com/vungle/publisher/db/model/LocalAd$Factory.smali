.class public Lcom/vungle/publisher/db/model/LocalAd$Factory;
.super Lcom/vungle/publisher/db/model/Ad$Factory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/db/model/LocalAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/db/model/Ad$Factory",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAd;",
        "Lcom/vungle/publisher/db/model/LocalVideo;",
        "Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field d:Ljavax/inject/Provider;
    .annotation runtime Lcom/vungle/publisher/inject/annotations/AdTempDirectory;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/db/model/LocalArchive$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/db/model/Viewable$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/db/model/LocalAd;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/db/model/LocalVideo$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/async/ScheduledPriorityExecutor;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 301
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/Ad$Factory;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/db/model/LocalAd;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/LocalAd;
    .locals 2

    .prologue
    .line 505
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/db/model/Ad$Factory;->a(Lcom/vungle/publisher/db/model/Ad;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Ad;

    .line 506
    const-string v0, "delete_local_content_attempts"

    invoke-static {p2, v0}, Lcom/vungle/publisher/aq;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->u:I

    .line 507
    const-string v0, "expiration_timestamp_seconds"

    invoke-static {p2, v0}, Lcom/vungle/publisher/aq;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->v:Ljava/lang/Long;

    .line 508
    const-string v0, "parent_path"

    invoke-static {p2, v0}, Lcom/vungle/publisher/aq;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/db/model/LocalAd;->a(Ljava/lang/String;)V

    .line 509
    const-string v0, "prepare_retry_count"

    invoke-static {p2, v0}, Lcom/vungle/publisher/aq;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->y:I

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->A:J

    .line 511
    if-eqz p3, :cond_0

    .line 512
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Lcom/vungle/publisher/db/model/LocalAd;Z)Lcom/vungle/publisher/db/model/LocalArchive;

    .line 513
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->b(Lcom/vungle/publisher/db/model/LocalAd;Z)Lcom/vungle/publisher/db/model/LocalArchive;

    .line 515
    :cond_0
    return-object p1
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/db/model/LocalAd;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/db/model/LocalAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 414
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAd;

    .line 415
    iget v3, v0, Lcom/vungle/publisher/db/model/LocalAd;->u:I

    add-int/lit8 v4, v3, 0x1

    iput v4, v0, Lcom/vungle/publisher/db/model/LocalAd;->u:I

    .line 416
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->D()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x3

    if-lt v3, v4, :cond_1

    .line 417
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 421
    :cond_1
    const-string v4, "VungleDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unable to delete files for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->y()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->m()I

    goto :goto_0

    .line 425
    :cond_2
    return-object v1
.end method

.method private i()Lcom/vungle/publisher/db/model/LocalAd;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAd;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)I
    .locals 1

    .prologue
    .line 272
    check-cast p1, Lcom/vungle/publisher/db/model/LocalAd;

    check-cast p2, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Lcom/vungle/publisher/db/model/LocalAd;Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;)I

    move-result v0

    return v0
.end method

.method public final a(Lcom/vungle/publisher/db/model/LocalAd;Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;)I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p2, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;->s:Ljava/lang/Long;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->v:Ljava/lang/Long;

    .line 317
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/db/model/Ad$Factory;->a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/protocol/message/RequestAdResponse;)I

    move-result v0

    return v0
.end method

.method public final a(Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/db/model/LocalAd;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 384
    .line 385
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 386
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/vungle/log/Logger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "deleting "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 390
    const/4 v0, 0x1

    .line 391
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAd;

    .line 392
    if-eqz v1, :cond_0

    move v1, v2

    .line 398
    :goto_1
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->y()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 396
    :cond_0
    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 400
    :cond_1
    const-string v0, "VungleDatabase"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_2
    invoke-static {p1}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 405
    sget-object v1, Lcom/vungle/publisher/db/model/Ad$a;->g:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Ljava/util/List;Lcom/vungle/publisher/db/model/Ad$a;)I

    .line 407
    invoke-virtual {p0}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->c()I

    move-result v2

    .line 409
    :cond_3
    return v2
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/as;Landroid/database/Cursor;)Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 272
    check-cast p1, Lcom/vungle/publisher/db/model/LocalAd;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Lcom/vungle/publisher/db/model/LocalAd;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/db/model/Ad;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/Ad;
    .locals 1

    .prologue
    .line 272
    check-cast p1, Lcom/vungle/publisher/db/model/LocalAd;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Lcom/vungle/publisher/db/model/LocalAd;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/protocol/message/RequestAdResponse;)Lcom/vungle/publisher/db/model/Ad;
    .locals 1

    .prologue
    .line 272
    check-cast p1, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;)Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;)Lcom/vungle/publisher/db/model/LocalAd;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/bn;
        }
    .end annotation

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/vungle/publisher/db/model/Ad$Factory;->a(Lcom/vungle/publisher/protocol/message/RequestAdResponse;)Lcom/vungle/publisher/db/model/Ad;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAd;

    .line 306
    iget-object v1, p1, Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;->s:Ljava/lang/Long;

    iput-object v1, v0, Lcom/vungle/publisher/db/model/LocalAd;->v:Ljava/lang/Long;

    .line 307
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/LocalAd;->a(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory;->e:Lcom/vungle/publisher/db/model/LocalArchive$Factory;

    sget-object v2, Lcom/vungle/publisher/at$b;->c:Lcom/vungle/publisher/at$b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/publisher/db/model/LocalArchive$Factory;->a(Lcom/vungle/publisher/db/model/LocalAd;Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;Lcom/vungle/publisher/at$b;)Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/db/model/LocalAd;->z:Lcom/vungle/publisher/db/model/LocalArchive;

    .line 310
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory;->e:Lcom/vungle/publisher/db/model/LocalArchive$Factory;

    sget-object v2, Lcom/vungle/publisher/at$b;->b:Lcom/vungle/publisher/at$b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/publisher/db/model/LocalArchive$Factory;->a(Lcom/vungle/publisher/db/model/LocalAd;Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;Lcom/vungle/publisher/at$b;)Lcom/vungle/publisher/db/model/LocalArchive;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/db/model/LocalAd;->x:Lcom/vungle/publisher/db/model/LocalArchive;

    .line 311
    sget-object v1, Lcom/vungle/publisher/db/model/Ad$a;->a:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/LocalAd;->a(Lcom/vungle/publisher/db/model/Ad$a;)V

    .line 312
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/vungle/publisher/db/model/LocalAd;
    .locals 1

    .prologue
    .line 327
    sget-object v0, Lcom/vungle/publisher/db/model/Ad$b;->a:Lcom/vungle/publisher/db/model/Ad$b;

    invoke-super {p0, v0, p1}, Lcom/vungle/publisher/db/model/Ad$Factory;->a(Lcom/vungle/publisher/db/model/Ad$b;Ljava/lang/String;)Lcom/vungle/publisher/db/model/Ad;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAd;

    return-object v0
.end method

.method public final varargs a([Lcom/vungle/publisher/db/model/Ad$a;)Lcom/vungle/publisher/db/model/LocalAd;
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x0

    .line 339
    .line 341
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "status IN ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v1

    invoke-static {v2}, Lcom/vungle/publisher/aq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") AND type = ? AND expiration_timestamp_seconds > ? ORDER BY received_timestamp_millis ASC LIMIT ?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 349
    sget-object v0, Lcom/vungle/publisher/db/model/Ad$b;->a:Lcom/vungle/publisher/db/model/Ad$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/Ad$b;->toString()Ljava/lang/String;

    move-result-object v0

    .line 350
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v4, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "1"

    aput-object v5, v2, v4

    .line 351
    const/4 v4, 0x2

    new-array v4, v4, [[Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    invoke-static {v4}, Lcom/vungle/publisher/cn;->a([[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ad records by query: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Lcom/vungle/publisher/cr;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 353
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetching "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory;->c:Lcom/vungle/publisher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ad"

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 356
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 357
    packed-switch v0, :pswitch_data_0

    .line 371
    new-instance v2, Landroid/database/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fetched "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 375
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_1

    .line 376
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 359
    :pswitch_0
    :try_start_2
    const-string v0, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 376
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 379
    :cond_3
    return-object v9

    .line 362
    :pswitch_1
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->i()Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Lcom/vungle/publisher/db/model/LocalAd;Landroid/database/Cursor;Z)Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/LocalAd;->C()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    move-object v9, v0

    goto :goto_2

    .line 375
    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_1

    .line 357
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final a(Lcom/vungle/publisher/db/model/LocalAd;Z)Lcom/vungle/publisher/db/model/LocalArchive;
    .locals 3

    .prologue
    .line 520
    iget-boolean v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->B:Z

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->x:Lcom/vungle/publisher/db/model/LocalArchive;

    .line 527
    :goto_0
    return-object v0

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory;->e:Lcom/vungle/publisher/db/model/LocalArchive$Factory;

    iget-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/vungle/publisher/at$b;->b:Lcom/vungle/publisher/at$b;

    invoke-virtual {v1, v0, v2, p2}, Lcom/vungle/publisher/db/model/LocalArchive$Factory;->a(Ljava/lang/String;Lcom/vungle/publisher/at$b;Z)Lcom/vungle/publisher/db/model/Viewable;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalArchive;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->x:Lcom/vungle/publisher/db/model/LocalArchive;

    .line 525
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/db/model/LocalAd;->B:Z

    goto :goto_0
.end method

.method public final bridge synthetic a(Lcom/vungle/publisher/db/model/Ad;)Z
    .locals 1

    .prologue
    .line 272
    invoke-super {p0, p1}, Lcom/vungle/publisher/db/model/Ad$Factory;->a(Lcom/vungle/publisher/db/model/Ad;)Z

    move-result v0

    return v0
.end method

.method protected final b()Lcom/vungle/publisher/db/model/Ad$b;
    .locals 1

    .prologue
    .line 322
    sget-object v0, Lcom/vungle/publisher/db/model/Ad$b;->a:Lcom/vungle/publisher/db/model/Ad$b;

    return-object v0
.end method

.method final b(Lcom/vungle/publisher/db/model/LocalAd;Z)Lcom/vungle/publisher/db/model/LocalArchive;
    .locals 3

    .prologue
    .line 532
    iget-boolean v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->C:Z

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->z:Lcom/vungle/publisher/db/model/LocalArchive;

    .line 539
    :goto_0
    return-object v0

    .line 536
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory;->e:Lcom/vungle/publisher/db/model/LocalArchive$Factory;

    iget-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->s:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/vungle/publisher/at$b;->c:Lcom/vungle/publisher/at$b;

    invoke-virtual {v1, v0, v2, p2}, Lcom/vungle/publisher/db/model/LocalArchive$Factory;->a(Ljava/lang/String;Lcom/vungle/publisher/at$b;Z)Lcom/vungle/publisher/db/model/Viewable;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalArchive;

    iput-object v0, p1, Lcom/vungle/publisher/db/model/LocalAd;->z:Lcom/vungle/publisher/db/model/LocalArchive;

    .line 537
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/db/model/LocalAd;->C:Z

    goto :goto_0
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 272
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method

.method protected final bridge synthetic b_()Lcom/vungle/publisher/db/model/Video$Factory;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory;->h:Lcom/vungle/publisher/db/model/LocalVideo$Factory;

    return-object v0
.end method

.method protected final bridge synthetic c(I)[Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 272
    new-array v0, p1, [Lcom/vungle/publisher/db/model/LocalAd;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 272
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->i()Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/vungle/publisher/db/model/Ad$Factory;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/vungle/publisher/db/model/LocalAd;
    .locals 3

    .prologue
    .line 335
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vungle/publisher/db/model/Ad$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/db/model/Ad$a;->e:Lcom/vungle/publisher/db/model/Ad$a;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a([Lcom/vungle/publisher/db/model/Ad$a;)Lcom/vungle/publisher/db/model/LocalAd;

    move-result-object v0

    return-object v0
.end method

.method protected final e_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const-string v0, "ad"

    return-object v0
.end method

.method public final f()Ljava/lang/Long;
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    .line 434
    .line 435
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/vungle/publisher/db/model/Ad$a;->f:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/Ad$a;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/db/model/Ad$a;->g:Lcom/vungle/publisher/db/model/Ad$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/Ad$a;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 436
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 437
    sget-object v1, Lcom/vungle/publisher/db/model/Ad$b;->a:Lcom/vungle/publisher/db/model/Ad$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/Ad$b;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 439
    const-string v1, "1"

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "type = ? AND status NOT IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/vungle/publisher/aq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ORDER BY expiration_timestamp_seconds ASC LIMIT ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAd$Factory;->c:Lcom/vungle/publisher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ad"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "expiration_timestamp_seconds"

    aput-object v6, v2, v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 458
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "expiration_timestamp_seconds"

    invoke-static {v1, v0}, Lcom/vungle/publisher/aq;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 460
    if-nez v0, :cond_2

    .line 461
    const-string v0, "VungleDatabase"

    const-string v2, "next ad expiration time seconds is null"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 471
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 474
    :cond_1
    return-object v9

    .line 464
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 465
    const-string v0, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "next ad expiration time millis "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 470
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    .line 471
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 470
    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method

.method public final g()I
    .locals 6

    .prologue
    .line 478
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deleting expired "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vungle/publisher/db/model/Ad$b;->a:Lcom/vungle/publisher/db/model/Ad$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ad records without pending reports"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/db/model/Ad$b;->a:Lcom/vungle/publisher/db/model/Ad$b;

    invoke-virtual {v2}, Lcom/vungle/publisher/db/model/Ad$b;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 482
    const-string v1, "type = ? AND expiration_timestamp_seconds <= ?"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 483
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public final h()I
    .locals 5

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "type = ? AND "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vungle/publisher/db/model/Ad;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY insert_timestamp_millis DESC LIMIT ? OFFSET ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/vungle/publisher/db/model/Ad$b;->a:Lcom/vungle/publisher/db/model/Ad$b;

    invoke-virtual {v3}, Lcom/vungle/publisher/db/model/Ad$b;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 497
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 499
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " extra "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/vungle/publisher/db/model/Ad$b;->a:Lcom/vungle/publisher/db/model/Ad$b;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ad records to reach target size 4"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/db/model/LocalAd$Factory;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method
