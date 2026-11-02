.class public Lcom/vungle/publisher/protocol/message/RequestConfig;
.super Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/bh;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;-><init>()V

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
    .line 20
    invoke-super {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 21
    const-string v1, "pubAppId"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestConfig;->a:Lcom/vungle/publisher/bh;

    invoke-interface {v2}, Lcom/vungle/publisher/bh;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    return-object v0
.end method
