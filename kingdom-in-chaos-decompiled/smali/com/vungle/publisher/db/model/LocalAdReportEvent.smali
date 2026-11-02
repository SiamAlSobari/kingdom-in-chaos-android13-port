.class public Lcom/vungle/publisher/db/model/LocalAdReportEvent;
.super Lcom/vungle/publisher/db/model/AdReportEvent;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/db/model/AdReportEvent",
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


# instance fields
.field e:Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/db/model/LocalAdPlay$Factory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vungle/publisher/db/model/AdReportEvent;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a_()Lcom/vungle/publisher/as$a;
    .locals 1

    .prologue
    .line 9
    iget-object v0, p0, Lcom/vungle/publisher/db/model/LocalAdReportEvent;->e:Lcom/vungle/publisher/db/model/LocalAdReportEvent$Factory;

    return-object v0
.end method
