.class final Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;
.super Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/RequestLocalAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HttpLogEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry$Factory;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/Long;

.field d:Ljava/lang/String;

.field e:Ljava/lang/Integer;

.field f:Ljava/lang/Long;

.field g:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;-><init>()V

    .line 141
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
    .line 130
    invoke-super {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 131
    const-string v1, "campaignId"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v1, "deliveryId"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v1, "deviceMillis"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v1, "event"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v1, "responseCode"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v1, "responseMillis"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->f:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 137
    const-string v1, "url"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestLocalAd$HttpLogEntry;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    return-object v0
.end method
