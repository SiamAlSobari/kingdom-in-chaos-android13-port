.class public final Lcom/vungle/publisher/protocol/message/ReportLocalAd;
.super Lcom/vungle/publisher/protocol/message/ReportAd;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/message/ReportLocalAd$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/protocol/message/ReportAd",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestLocalAd;",
        "Lcom/vungle/publisher/protocol/message/ReportLocalAd;",
        ">;"
    }
.end annotation


# instance fields
.field m:Lcom/vungle/publisher/protocol/message/ExtraInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/ReportAd;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public final b()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    invoke-super {p0}, Lcom/vungle/publisher/protocol/message/ReportAd;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    const-string v1, "extraInfo"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/ReportLocalAd;->m:Lcom/vungle/publisher/protocol/message/ExtraInfo;

    invoke-static {v2}, Lcom/vungle/publisher/bu;->a(Lcom/vungle/publisher/cl;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    :cond_0
    return-object v0
.end method
