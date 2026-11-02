.class Lcom/vungle/publisher/protocol/message/ReportStreamingAd$Factory$PlayFactory;
.super Lcom/vungle/publisher/protocol/message/ReportAd$Play$Factory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/ReportStreamingAd$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/message/ReportStreamingAd$Factory$PlayFactory$UserActionFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/protocol/message/ReportAd$Play$Factory",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestStreamingAdResponse;",
        "Lcom/vungle/publisher/db/model/StreamingAdReport;",
        "Lcom/vungle/publisher/db/model/StreamingAdPlay;",
        "Lcom/vungle/publisher/db/model/StreamingAdReportEvent;",
        "Lcom/vungle/publisher/db/model/StreamingAd;",
        "Lcom/vungle/publisher/db/model/StreamingVideo;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/protocol/message/ReportStreamingAd$Factory$PlayFactory$UserActionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/ReportAd$Play$Factory;-><init>()V

    return-void
.end method
