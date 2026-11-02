.class Lcom/vungle/publisher/db/model/StreamingAdReportEvent$Factory;
.super Lcom/vungle/publisher/db/model/AdReportEvent$Factory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/db/model/StreamingAdReportEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/db/model/AdReportEvent$Factory",
        "<",
        "Lcom/vungle/publisher/db/model/StreamingAdReport;",
        "Lcom/vungle/publisher/db/model/StreamingAdPlay;",
        "Lcom/vungle/publisher/db/model/StreamingAdReportEvent;",
        "Lcom/vungle/publisher/db/model/StreamingAd;",
        "Lcom/vungle/publisher/db/model/StreamingVideo;",
        "Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/db/model/StreamingAdReportEvent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/AdReportEvent$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final bridge synthetic c(I)[Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 22
    new-array v0, p1, [Lcom/vungle/publisher/db/model/StreamingAdReportEvent;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/db/model/StreamingAdReportEvent$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/StreamingAdReportEvent;

    return-object v0
.end method

.method protected final e_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "ad_report_event"

    return-object v0
.end method
