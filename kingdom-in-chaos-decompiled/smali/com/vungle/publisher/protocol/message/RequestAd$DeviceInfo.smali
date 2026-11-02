.class public final Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;
.super Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/protocol/message/RequestAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension;,
        Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$Factory;,
        Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$a;
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/ca;

.field protected b:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension;

.field protected c:Ljava/lang/Boolean;

.field protected d:Ljava/lang/Boolean;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$a;

.field protected j:Ljava/lang/Float;

.field protected k:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 232
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
    .line 236
    invoke-super {p0}, Lcom/vungle/publisher/protocol/message/BaseJsonSerializable;->b()Lorg/json/JSONObject;

    move-result-object v1

    .line 237
    const-string v0, "connection"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->a:Lcom/vungle/publisher/ca;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v0, "dim"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->b:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$DisplayDimension;

    invoke-static {v2}, Lcom/vungle/publisher/bu;->a(Lcom/vungle/publisher/cl;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v2, "isSdCardAvailable"

    iget-object v0, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->c:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v0, "soundEnabled"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->d:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v0, "mac"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v0, "model"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v0, "networkOperator"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->g:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v0, "osVersion"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v0, "platform"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->i:Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo$a;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 246
    const-string v0, "volume"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->j:Ljava/lang/Float;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string v0, "userAgent"

    iget-object v2, p0, Lcom/vungle/publisher/protocol/message/RequestAd$DeviceInfo;->k:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    return-object v1

    .line 239
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
