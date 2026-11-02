.class public final Lcom/vungle/publisher/protocol/message/RequestStreamingAd;
.super Lcom/vungle/publisher/protocol/message/RequestAd;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/message/RequestStreamingAd$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/protocol/message/RequestAd",
        "<",
        "Lcom/vungle/publisher/protocol/message/RequestStreamingAd;",
        ">;"
    }
.end annotation


# instance fields
.field g:Lcom/vungle/publisher/protocol/message/ExtraInfo;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/RequestAd;-><init>()V

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
    .line 25
    invoke-super {p0}, Lcom/vungle/publisher/protocol/message/RequestAd;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 26
    const-string v1, "campaignId"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestStreamingAd;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "extraInfo"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestStreamingAd;->g:Lcom/vungle/publisher/protocol/message/ExtraInfo;

    invoke-static {v2}, Lcom/vungle/publisher/bu;->a(Lcom/vungle/publisher/cl;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v1, "placement"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestStreamingAd;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    return-object v0
.end method
