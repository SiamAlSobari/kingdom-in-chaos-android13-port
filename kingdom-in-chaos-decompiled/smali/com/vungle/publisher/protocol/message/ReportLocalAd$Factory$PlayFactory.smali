.class Lcom/vungle/publisher/protocol/message/ReportLocalAd$Factory$PlayFactory;
.super Lcom/vungle/publisher/protocol/message/ReportAd$Play$Factory;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/ReportLocalAd$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PlayFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/message/ReportLocalAd$Factory$PlayFactory$UserActionFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/protocol/message/ReportAd$Play$Factory",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestLocalAdResponse;",
        "Lcom/vungle/publisher/db/model/LocalAdReport;",
        "Lcom/vungle/publisher/db/model/LocalAdPlay;",
        "Lcom/vungle/publisher/db/model/LocalAdReportEvent;",
        "Lcom/vungle/publisher/db/model/LocalAd;",
        "Lcom/vungle/publisher/db/model/LocalVideo;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/protocol/message/ReportLocalAd$Factory$PlayFactory$UserActionFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/ReportAd$Play$Factory;-><init>()V

    return-void
.end method
