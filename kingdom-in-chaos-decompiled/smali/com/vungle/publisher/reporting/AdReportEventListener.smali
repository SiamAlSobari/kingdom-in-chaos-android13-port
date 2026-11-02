.class public Lcom/vungle/publisher/reporting/AdReportEventListener;
.super Lcom/vungle/publisher/bk;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final h:[Lcom/vungle/publisher/db/model/EventTracking$a;


# instance fields
.field public a:Lcom/vungle/publisher/db/model/AdPlay;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/db/model/AdPlay",
            "<******>;"
        }
    .end annotation
.end field

.field public b:Lcom/vungle/publisher/db/model/AdReport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/db/model/AdReport",
            "<******>;"
        }
    .end annotation
.end field

.field c:Lcom/vungle/publisher/reporting/AdServiceReportingHandler;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/db/model/AdReport$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/reporting/AdReportManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Lcom/vungle/publisher/cc;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private i:Lcom/vungle/publisher/db/model/Ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;"
        }
    .end annotation
.end field

.field private j:I

.field private final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/vungle/publisher/db/model/EventTracking$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/vungle/publisher/db/model/EventTracking$a;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->c:Lcom/vungle/publisher/db/model/EventTracking$a;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->d:Lcom/vungle/publisher/db/model/EventTracking$a;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->e:Lcom/vungle/publisher/db/model/EventTracking$a;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->f:Lcom/vungle/publisher/db/model/EventTracking$a;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->g:Lcom/vungle/publisher/db/model/EventTracking$a;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/db/model/EventTracking$a;->h:Lcom/vungle/publisher/db/model/EventTracking$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/reporting/AdReportEventListener;->h:[Lcom/vungle/publisher/db/model/EventTracking$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/bk;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->k:Ljava/util/HashSet;

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->j:I

    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->k:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 84
    return-void
.end method

.method private a(J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/vungle/publisher/reporting/AdReportEventListener;->d()V

    .line 239
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->b:Lcom/vungle/publisher/db/model/AdReport;

    .line 240
    if-nez v0, :cond_0

    .line 241
    const-string v0, "VungleReport"

    const-string v1, "no current ad report"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->e:Lcom/vungle/publisher/reporting/AdReportManager;

    invoke-virtual {v0}, Lcom/vungle/publisher/reporting/AdReportManager;->a()V

    .line 249
    iput-object v2, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->i:Lcom/vungle/publisher/db/model/Ad;

    iput-object v2, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->b:Lcom/vungle/publisher/db/model/AdReport;

    iput-object v2, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->a:Lcom/vungle/publisher/db/model/AdPlay;

    invoke-direct {p0}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a()V

    .line 250
    return-void

    .line 244
    :cond_0
    sget-object v1, Lcom/vungle/publisher/db/model/AdReport$a;->d:Lcom/vungle/publisher/db/model/AdReport$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/AdReport;->a(Lcom/vungle/publisher/db/model/AdReport$a;)V

    .line 245
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/AdReport;->a(Ljava/lang/Long;)V

    .line 246
    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/AdReport;->x()Ljava/lang/Object;

    goto :goto_0
.end method

.method private a(Lcom/vungle/publisher/db/model/Ad;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/db/model/Ad",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->i:Lcom/vungle/publisher/db/model/Ad;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->i:Lcom/vungle/publisher/db/model/Ad;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/db/model/Ad;->a(Lcom/vungle/publisher/db/model/Ad;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    :cond_0
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new ad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/Ad;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object p1, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->i:Lcom/vungle/publisher/db/model/Ad;

    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->e:Lcom/vungle/publisher/reporting/AdReportManager;

    instance-of v1, p1, Lcom/vungle/publisher/db/model/LocalAd;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcom/vungle/publisher/reporting/AdReportManager;->c:Lcom/vungle/publisher/db/model/LocalAdReport$Factory;

    check-cast p1, Lcom/vungle/publisher/db/model/LocalAd;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/db/model/LocalAdReport$Factory;->a(Lcom/vungle/publisher/db/model/Ad;)Lcom/vungle/publisher/db/model/AdReport;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->b:Lcom/vungle/publisher/db/model/AdReport;

    .line 73
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->b:Lcom/vungle/publisher/db/model/AdReport;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/AdReport;->q()Lcom/vungle/publisher/db/model/AdPlay;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->a:Lcom/vungle/publisher/db/model/AdPlay;

    .line 74
    invoke-direct {p0}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a()V

    .line 79
    :goto_1
    return-void

    .line 72
    :cond_1
    instance-of v1, p1, Lcom/vungle/publisher/db/model/StreamingAd;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/vungle/publisher/reporting/AdReportManager;->f:Lcom/vungle/publisher/db/model/StreamingAdReport$Factory;

    check-cast p1, Lcom/vungle/publisher/db/model/StreamingAd;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/db/model/StreamingAdReport$Factory;->a(Lcom/vungle/publisher/db/model/Ad;)Lcom/vungle/publisher/db/model/AdReport;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown ad type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_3
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "same ad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/Ad;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->a:Lcom/vungle/publisher/db/model/AdPlay;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/db/model/AdPlay;->a(Lcom/vungle/publisher/db/model/AdReportEvent$a;Ljava/lang/Object;)Lcom/vungle/publisher/db/model/AdReportEvent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string v1, "VungleReport"

    const-string v2, "error reporting event"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Lcom/vungle/publisher/db/model/EventTracking$a;)V
    .locals 7

    .prologue
    .line 176
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->i:Lcom/vungle/publisher/db/model/Ad;

    if-nez v0, :cond_1

    .line 177
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "null ad in AdReportingHandler - cannot track event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tpat event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/db/model/EventTracking$a;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->g:Lcom/vungle/publisher/cc;

    iget-object v1, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->i:Lcom/vungle/publisher/db/model/Ad;

    iget-object v2, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->i:Lcom/vungle/publisher/db/model/Ad;

    invoke-virtual {v2, p1}, Lcom/vungle/publisher/db/model/Ad;->a(Lcom/vungle/publisher/db/model/EventTracking$a;)[Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "%timestamp%"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v3, v2}, Lcom/vungle/publisher/cc;->a(Lcom/vungle/publisher/db/model/Ad;Lcom/vungle/publisher/db/model/EventTracking$a;Ljava/util/Map;[Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->k:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/al;)V
    .locals 2
    .param p1, "destroyedErrorEndPlayEvent"    # Lcom/vungle/publisher/al;

    .prologue
    .line 229
    :try_start_0
    const-string v0, "VungleReport"

    const-string v1, "received destroyed ad end"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-wide v0, p1, Lcom/vungle/publisher/bj;->c:J

    invoke-direct {p0, v0, v1}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    const-string v0, "VungleReport"

    const-string v1, "error processing destroyed ad end"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/am;)V
    .locals 3
    .param p1, "endPlayAdEvent"    # Lcom/vungle/publisher/am;

    .prologue
    .line 218
    :try_start_0
    const-string v0, "VungleReport"

    const-string v1, "received play ad end"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-interface {p1}, Lcom/vungle/publisher/f;->a()Lcom/vungle/publisher/db/model/Ad;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/Ad;)V

    .line 220
    invoke-interface {p1}, Lcom/vungle/publisher/am;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v1, "VungleReport"

    const-string v2, "error processing ad end"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/k;)V
    .locals 3
    .param p1, "playVideoDurationEvent"    # Lcom/vungle/publisher/k;

    .prologue
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->b:Lcom/vungle/publisher/db/model/AdReport;

    iget v1, p1, Lcom/vungle/publisher/k;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/AdReport;->a(Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 258
    :catch_0
    move-exception v0

    .line 259
    const-string v1, "VungleReport"

    const-string v2, "error updating video duration millis"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/u;)V
    .locals 7
    .param p1, "playVideoProgressEvent"    # Lcom/vungle/publisher/u;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 275
    :try_start_0
    iget v3, p1, Lcom/vungle/publisher/u;->a:I

    .line 276
    iget v2, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->j:I

    sget-object v4, Lcom/vungle/publisher/reporting/AdReportEventListener;->h:[Lcom/vungle/publisher/db/model/EventTracking$a;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    move v2, v1

    .line 277
    :goto_0
    instance-of v4, p1, Lcom/vungle/publisher/l;

    .line 278
    if-nez v2, :cond_0

    if-eqz v4, :cond_1

    .line 279
    :cond_0
    iget-object v5, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->b:Lcom/vungle/publisher/db/model/AdReport;

    invoke-virtual {v5}, Lcom/vungle/publisher/db/model/AdReport;->j()Ljava/lang/Integer;

    move-result-object v5

    .line 280
    if-nez v5, :cond_3

    .line 282
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "null video duration millis for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->b:Lcom/vungle/publisher/db/model/AdReport;

    invoke-virtual {v2}, Lcom/vungle/publisher/db/model/AdReport;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v0

    .line 276
    goto :goto_0

    .line 284
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_4

    .line 285
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video duration millis 0 for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->b:Lcom/vungle/publisher/db/model/AdReport;

    invoke-virtual {v2}, Lcom/vungle/publisher/db/model/AdReport;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 304
    :catch_0
    move-exception v0

    .line 305
    const-string v1, "VungleReport"

    const-string v2, "error handling video view progress"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 289
    :cond_4
    if-eqz v2, :cond_6

    .line 290
    int-to-float v2, v3

    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 291
    sget-object v3, Lcom/vungle/publisher/reporting/AdReportEventListener;->h:[Lcom/vungle/publisher/db/model/EventTracking$a;

    iget v5, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->j:I

    aget-object v3, v3, v5

    .line 292
    iget v5, v3, Lcom/vungle/publisher/db/model/EventTracking$a;->p:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_5

    move v0, v1

    .line 293
    :cond_5
    if-eqz v0, :cond_6

    .line 294
    iget v1, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->j:I

    .line 295
    invoke-virtual {p0, v3}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/EventTracking$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 298
    :cond_6
    if-nez v0, :cond_7

    if-eqz v4, :cond_1

    .line 299
    :cond_7
    :try_start_2
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->a:Lcom/vungle/publisher/db/model/AdPlay;

    iget v1, p1, Lcom/vungle/publisher/u;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, v0, Lcom/vungle/publisher/db/model/AdPlay;->b:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, v0, Lcom/vungle/publisher/db/model/AdPlay;->b:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-le v2, v3, :cond_9

    :cond_8
    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setting watched millis "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/vungle/publisher/db/model/AdPlay;->b:Ljava/lang/Integer;

    :goto_2
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->a:Lcom/vungle/publisher/db/model/AdPlay;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/AdPlay;->m()I

    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->b:Lcom/vungle/publisher/db/model/AdReport;

    iget-wide v1, p1, Lcom/vungle/publisher/bj;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/db/model/AdReport;->b(Ljava/lang/Long;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "VungleReport"

    const-string v2, "error updating video view progress"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_9
    :try_start_4
    const-string v0, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ignoring decreased watched millis "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2
.end method

.method public onEvent(Lcom/vungle/publisher/x;)V
    .locals 7
    .param p1, "startPlayAdEvent"    # Lcom/vungle/publisher/x;

    .prologue
    .line 194
    :try_start_0
    const-string v0, "VungleReport"

    const-string v1, "received play ad start"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lcom/vungle/publisher/x;->a()Lcom/vungle/publisher/db/model/Ad;

    move-result-object v0

    .line 196
    invoke-direct {p0, v0}, Lcom/vungle/publisher/reporting/AdReportEventListener;->a(Lcom/vungle/publisher/db/model/Ad;)V

    .line 197
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->d:Lcom/vungle/publisher/db/model/AdReport$Factory;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    sget-object v3, Lcom/vungle/publisher/db/model/AdReport$a;->d:Lcom/vungle/publisher/db/model/AdReport$a;

    invoke-virtual {v3}, Lcom/vungle/publisher/db/model/AdReport$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/vungle/publisher/db/model/AdReport$Factory;->a:Lcom/vungle/publisher/db/DatabaseHelper;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "ad_report"

    const-string v3, "status = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    sget-object v6, Lcom/vungle/publisher/db/model/AdReport$a;->c:Lcom/vungle/publisher/db/model/AdReport$a;

    invoke-virtual {v6}, Lcom/vungle/publisher/db/model/AdReport$a;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 198
    iget-object v0, p1, Lcom/vungle/publisher/x;->b:Lcom/vungle/publisher/a;

    .line 199
    iget-object v1, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->b:Lcom/vungle/publisher/db/model/AdReport;

    .line 200
    sget-object v2, Lcom/vungle/publisher/db/model/AdReport$a;->c:Lcom/vungle/publisher/db/model/AdReport$a;

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/db/model/AdReport;->a(Lcom/vungle/publisher/db/model/AdReport$a;)V

    .line 201
    invoke-interface {v0}, Lcom/vungle/publisher/a;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/db/model/AdReport;->a(Ljava/util/Map;)V

    .line 202
    invoke-interface {v0}, Lcom/vungle/publisher/a;->isIncentivized()Z

    move-result v2

    .line 203
    invoke-virtual {v1, v2}, Lcom/vungle/publisher/db/model/AdReport;->b(Z)V

    .line 204
    if-eqz v2, :cond_0

    .line 205
    invoke-interface {v0}, Lcom/vungle/publisher/a;->getIncentivizedUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/db/model/AdReport;->b(Ljava/lang/String;)V

    .line 207
    :cond_0
    invoke-interface {v0}, Lcom/vungle/publisher/a;->getPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/db/model/AdReport;->c(Ljava/lang/String;)V

    .line 208
    iget-wide v2, p1, Lcom/vungle/publisher/bj;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/db/model/AdReport;->c(Ljava/lang/Long;)V

    .line 209
    invoke-virtual {v1}, Lcom/vungle/publisher/db/model/AdReport;->x()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string v1, "VungleReport"

    const-string v2, "error processing ad start event"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/y;)V
    .locals 3
    .param p1, "playVideoStartEvent"    # Lcom/vungle/publisher/y;

    .prologue
    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->a:Lcom/vungle/publisher/db/model/AdPlay;

    iget-wide v1, p1, Lcom/vungle/publisher/bj;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/db/model/AdPlay;->c:Ljava/lang/Long;

    .line 266
    iget-object v0, p0, Lcom/vungle/publisher/reporting/AdReportEventListener;->a:Lcom/vungle/publisher/db/model/AdPlay;

    invoke-virtual {v0}, Lcom/vungle/publisher/db/model/AdPlay;->m()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    const-string v1, "VungleReport"

    const-string v2, "error updating play start millis"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
