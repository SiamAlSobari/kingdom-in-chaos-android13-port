.class Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;
.super Lcom/vungle/publisher/db/model/AdReportEvent$Factory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/db/model/LocalAdReportEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/db/model/AdReportEvent$Factory",
        "<",
        "Lcom/vungle/publisher/db/model/LocalAdReport;",
        "Lcom/vungle/publisher/db/model/LocalAdPlay;",
        "Lcom/vungle/publisher/db/model/LocalAdReportEvent;",
        "Lcom/vungle/publisher/db/model/LocalAd;",
        "Lcom/vungle/publisher/db/model/LocalVideo;",
        "Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;",
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
            "Lcom/vungle/publisher/db/model/LocalAdReportEvent;",
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
    .line 30
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/AdReportEvent$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 25
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final bridge synthetic c(I)[Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 25
    new-array v0, p1, [Lcom/vungle/publisher/db/model/LocalAdReportEvent;

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/as;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/db/model/LocalAdReportEvent;

    return-object v0
.end method

.method protected final e_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "ad_report_event"

    return-object v0
.end method
